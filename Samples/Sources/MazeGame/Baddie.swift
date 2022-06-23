
import WindowsSdk
import WindowsApp

// This class contains the code that draws and moves the "badguy" image.

public class Baddie
{
    public var x: Int;
    public var y: Int
    private var direction: Int;

    // Call this to set starting position and the direction that the baddie will start going in.
    public init(_ start_x: Int, _ start_y: Int, _ start_direction: Int)
    {
        x = start_x;
        y = start_y;
        direction = start_direction;
    }

    public func Move(_ speed: Int, _ gamemaze: Maze) throws
    {
        // Update the position of the baddie depending on the direction.
        // We can change the speed to make them faster or slower, and so
        // make the game harder or easier.

        switch (direction)
        {
            case 1: y -= speed; break;
            case 2: x += speed; break;
            case 4: y += speed; break;
            case 8: x -= speed; break;

            default: break;
        }

        // Test to see if the baddie is in the middle of a square in the maze, and then we can decide
        // to change direction or not.

        if ((x % 64 == 0) && (y % 64 == 0))
        {

            // Map the screen co-ordinates to the map co-ordinates 
            // (the screen is 1024 by 1024, the maze data is 16 by 16)

            let mx = (x / 64);
            let my = (y / 64);

            // Get the number that tells us the possible directions at this tile
            let possible_directions = gamemaze.GetTile(my, mx);
            //print("baddie possible: \(possible_directions)")

            // Define the opposite value to the current direction,
            // because we don't want to double back

            var opposite_directon = 0;

            if (direction == 1) { opposite_directon = 4; }
            if (direction == 2) { opposite_directon = 8; }
            if (direction == 4) { opposite_directon = 1; }
            if (direction == 8) { opposite_directon = 2; }

            var new_direction = 1;

            // Pick a new direction that is both possible AND not doubling back.
            repeat
            {
                repeat
                {

                    new_direction = gamemaze.NextDirection();
                } while ((new_direction & possible_directions) == 0);
            } while (new_direction == opposite_directon);

            direction = new_direction;

        }
    }

    // Draw the baddie. Needs a reference to the canvas
    public func Draw(_ args: CanvasDrawEventArgs, _ dino: CanvasBitmap?) throws
    {
        let r = Windows.Foundation.Rect(X: Float(x + 4), Y: Float(y + 4), Width: 64, Height: 64)
        try args.DrawingSession!.DrawImage(bitmap: dino, destinationRectangle: r)
    }

}
