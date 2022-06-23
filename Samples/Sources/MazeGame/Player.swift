
import WindowsSdk
import WindowsApp

// This class controls and draws the player object.
public class Player
{
    private var x : Int
    private var y : Int
    private var direction : Int

    public var Score : Int = 0
    public var NewDirection : Int = 0

    // Call this method to set starting position and the direction that the baddie will start going in.
    public init(_ start_x: Int, _ start_y: Int, _ start_direction: Int)
    {
        x = start_x;
        y = start_y;
        direction = start_direction;
    }

    public func Move(_ gamemaze: Maze) throws
    {
        switch (direction)
        {
            case 1: y -= 8;
            case 2: x += 8;
            case 4: y += 8;
            case 8: x -= 8;

            default: 
                break;
        }

        // Test to see if the player is in the middle of a square in the maze, and then we can decide
        // to change direction or not depending on whether a key is pressed or if they've run into a wall.
        // It turns out this is a little trickier than you might expect - the player might be trying to 
        // turn in a direction that isn't good just yet, but will be soon - so we need to keep trying without
        // stopping them until it's good to go.

        if ((x % 64 == 0) && (y % 64 == 0))
        {
            // Map the screen co-ordinates to the map co-ordinates 
            // (the screen is 1024 by 1024, the maze data is 16 by 16)

            let mx = (x / 64);
            let my = (y / 64);

            // Check for a dot being eaten
            if ((gamemaze.GetTile(my, mx) & 16) != 0)
            {
                gamemaze.SetTile(my, mx, gamemaze.GetTile(my, mx) - 16);
                Score += 1;
            }

            // Get the number that tells us the possible directions at this tile
            let possible_directions = gamemaze.GetTile(my, mx);
            //print("player possible at mx=\(mx) my=\(my): \(possible_directions)")

            let current_direction = direction;


            // If the player has pressed a key, let's consider that a request to change direction.
            // We can check if it's possible because we know for any tile what directions are available.
            // If the player cannot change in that direction, they'll just stop.

            if (NewDirection == 0)
            {
                // The player hasn't requested a change in direction
                // So let's see if they can move in the current direction

                if ((direction & possible_directions) == 0)
                {
                    // No, the player would hit a wall. Better stop!
                    //print("can't move")
                    direction = 0;
                }
            }
            else // The player has requested a change in direction
            {
                // Is it ok?
                if ((NewDirection & possible_directions) != 0)
                {
                    // yes, it's allowed
                    //print("changing dir")
                    direction = NewDirection;
                }
                else
                {
                    // No, player can't change direction in that way, but we can't just stop
                    // because the current direction might be good.  

                    if ((current_direction & possible_directions) == 0)
                    {
                        // No, carrying on isn't allowed! Better stop!
                    //print("stopping")
                        direction = 0;
                    }
                }
            }
        }
    }

    // Draw the player. Needs a reference to the canvas
    public func Draw(_ args: CanvasDrawEventArgs, _ ninjacat: CanvasBitmap?) throws
    {
        let r = Windows.Foundation.Rect(X: Float(self.x), Y: Float(self.y), Width: 64, Height: 64)
        try args.DrawingSession!.DrawImage(bitmap: ninjacat, destinationRectangle: r)
    }

    public func Check(_ badguy: Baddie) -> Bool
    {
        // Check the distance between the player and a Baddie
        if ((((x - badguy.x) * (x - badguy.x)) < 256) && (((y - badguy.y) * (y - badguy.y)) < 256))
        {
            return true;
        }
        else
        {
            return false;
        }
    }

}
