
import Foundation
import WinRT
import WindowsApp

public typealias DispatcherTimer = Microsoft.UI.Xaml.DispatcherTimer
public typealias CanvasControl = Microsoft.Graphics.Canvas.UI.Xaml.CanvasControl
public typealias CanvasDrawEventArgs = Microsoft.Graphics.Canvas.UI.Xaml.CanvasDrawEventArgs
public typealias CanvasBitmap = Microsoft.Graphics.Canvas.CanvasBitmap
public typealias Colors = Microsoft.UI.Colors

class MyApp : Microsoft.UI.Xaml.Application {
    public override init() throws {
        self.Timer = try DispatcherTimer();
        try super.init()
    }

    // The Maze Game has three components:
    // 1. The player - an image which the player can move around the maze, eating dots. Player.cs
    // 2. The Baddies - an image which roams the maze, and will catch the player if close enough. Baddie.cs
    // 3. The Maze - an array which describes the maze.

    // Graphics are displayed using the Win2D library, which provides support for quickly drawing images and other shapes.

    // A timer fires 15 times a second and on every 'tick' the player and baddies are updated.

    // The Canvas object defined in mainpage.xaml also displays a single bitmap create in a paint program that renders
    // the maze. The player and baddies objects, and the dots in the maze the player must eat, are displayed on
    // top of this single image. The Maze object itself consists of an array of 16 by 16 numbers, each which tells
    // the moving objects which directions they are free to move. 


    // The graphics for the player and the baddies
    var ninjacat : CanvasBitmap? = nil
    var dino : CanvasBitmap? = nil

    var Timer : DispatcherTimer

    // Declare the player object and three baddies
    private var player : Player = Player(512, 512 - 64, 0);

    private var Ringo : Baddie = Baddie(64, 64, 2);
    private var George : Baddie = Baddie(64, 64, 2);
    private var Paul : Baddie = Baddie(64, 64, 4);


    // Create the maze object
    private var GameMaze : Maze = Maze();


    // This is the Draw method used by the CanvasControl. The CanvasControl gives us the ability
    // to quickly draw images, other shapes and text. 
    func canvasControl_Draw(sender : CanvasControl?, args: CanvasDrawEventArgs?) throws
    {
        // The screen is cleared, so we need to redraw everything (except the background, which is a separate image)

        // First, draw the dots the player needs to collect

        for y in 0..<16 
        {
            for x in 0..<16
            {
                if ((GameMaze.GetTile(y, x) & 16) != 0)
                {
                    try args!.DrawingSession!.DrawEllipse(x: Float(32 + x * 64), y: Float(32 + y * 64), radiusX: 4, radiusY: 4, color: Colors.Blue, strokeWidth: 8);
                }
            }
        }

        // Move the player to the new position, draw it.
        // Do the same thing for the baddies.

        try player.Move(GameMaze);

        try player.Draw(args!, ninjacat);

        try Ringo.Move(4, GameMaze);  // The first parameter is the speed - it must be 1, 2, 4,8, 16 or 32
        try George.Move(8, GameMaze);
        try Paul.Move(8, GameMaze);

        try Ringo.Draw(args!, dino);
        try George.Draw(args!, dino);
        try Paul.Draw(args!, dino);


        // Now draw the score 

        try args!.DrawingSession!.DrawText(text: "Score: \(player.Score)", x: 400, y: 20, color: Colors.Yellow);

        // Check to see if the player has been caught by a dino.
        // The simplest way is to check that the distance between
        // them is smaller than a specific threshold.

        if (player.Check(Ringo) || player.Check(George) || player.Check(Paul))
        {
            // Player has been caught!
            // For now, just stop the timer.
            try Timer.Stop();
        }
    }

    // TODO we keep a reference to this stuff as an
    // instance property to prevent it from being freed
    // during async things?  need to investigate further.
    // seems unlikely that Swift async can be this badly broken.
    var _ifc : Microsoft.Graphics.Canvas.ICanvasResourceCreator? = nil
    var _path_ninjacat : String? = nil
    var _path_dino : String? = nil

    // Load the images. Only needs doing once, when the CanvasControl is initialized.
    private func CreateResourcesAsync() async throws
    {
        // in C#, as of the writing of this comment,
        // LoadAsync() with a path works but with an ms-appx uri does not
        ninjacat = try await CanvasBitmap.Load(resourceCreator: _ifc!, fileName: _path_ninjacat!);
        dino = try await CanvasBitmap.Load(resourceCreator: _ifc!, fileName: _path_dino!);
    }

    // A 'clean up' method required by the CanvasConrol
    // void Page_Unloaded(object sender, RoutedEventArgs e)
    // TODO
    // {
        // this.canvas.RemoveFromVisualTree();
        // this.canvas = null;
    // }

    override func OnLaunched(args : Optional<Microsoft.UI.Xaml.LaunchActivatedEventArgs>) throws -> Void 
    {
        let w = try Microsoft.UI.Xaml.Window();
        try w.put_Title(value: "Hello from Swift");

        let grid = try Microsoft.UI.Xaml.Controls.Grid();
        try grid.put_Width(value: 1024)
        try grid.put_Height(value: 1024)

        // TODO in the uri below, the problem is that Swift's notion of resources
        // is conflicting a bit with Windows App SDK's ideas.  The Swift_WinRT_MazeGame.resources
        // part of the path should be obtained from the Bundle, instead of hard-coding it
        // here, which I'm doing for the moment to illustrate how it works.

        // TODO the following should find the resource, but it doesn't
        //let bundle_path_bg = Bundle.main.path(forResource: "gamegrid", ofType: "png")
        //print("try to get bundle path: \(bundle_path_bg)")
        //let bundle_path_bg_indir = Bundle.main.path(forResource: "gamegrid", ofType: "png", inDirectory: "Assets")
        //print("try to get bundle path_indir: \(bundle_path_bg_indir)")
        //print("resourcePath: \(Bundle.main.resourcePath)")

        let uri_bg_img = try Windows.Foundation.Uri(uri: "ms-appx:///SwiftWinRT_MazeGame.resources/gamegrid.png")
        let bg_img = try Microsoft.UI.Xaml.Media.Imaging.BitmapImage(uriSource: uri_bg_img)
        let bg = try Microsoft.UI.Xaml.Media.ImageBrush()
        try bg.put_ImageSource(value: bg_img)
        try grid.put_Background(value: bg)

        let canvas = try Microsoft.Graphics.Canvas.UI.Xaml.CanvasControl()
        try grid.Children!.Append(value: canvas)

        // an implementation of IAsyncAction that we can pass
        // to TrackAsyncAction for CreateResources.
        // TODO this doesn't belong here.  once we get the
        // async capture problem worked out, move it to WinRT lib.
        class MyAsyncAction : Windows.Foundation.AsyncAction {
            private var _status : Windows.Foundation.AsyncStatus = .Started
            override func get_Id() throws -> Swift.UInt32 {
                //print("MyActionAction.get_Id")
                return 0;
            }
            override func get_Status() throws -> Windows.Foundation.AsyncStatus {
                //print("MyActionAction.get_Status")
                return _status
            }
            override func get_ErrorCode() throws -> Windows.Foundation.HResult {
                //print("MyActionAction.get_ErrorCode")
                return Windows.Foundation.HResult(Value: 0);
            }
            override func Cancel() throws -> Void {
                //print("MyActionAction.Cancel")
            }
            override func Close() throws -> Void {
                //print("MyActionAction.Close")
                // TODO what calls this?
                _del = nil
            }
            private var _del : Optional<Windows.Foundation.foo_AsyncActionCompletedHandler> = nil
            override func put_Completed(handler : Optional<Windows.Foundation.foo_AsyncActionCompletedHandler>) throws -> Void {
                //print("MyActionAction.put_Completed")
                _del = handler;
            }
            override func get_Completed() throws -> Optional<Windows.Foundation.AsyncActionCompletedHandler> {
                //print("MyActionAction.get_Completed")
                return nil;
            }
            override func GetResults() throws -> Void {
                //print("MyActionAction.GetResults")
            }
            internal func Done_Succeeded() throws -> Void {
                _status = .Completed
                if let d = _del {
                    try d.Invoke(asyncInfo: self.to_IAsyncAction(), asyncStatus: _status)
                }
            }
            internal func Done_Failed() throws -> Void {
                _status = .Error
                if let d = _del {
                    try d.Invoke(asyncInfo: self.to_IAsyncAction(), asyncStatus: _status)
                }
            }
        }

        func MakeAsyncAction(c : @escaping () async throws -> Void) throws -> Windows.Foundation.IAsyncAction
        {
            let action_done = try MyAsyncAction()
            Task {
                do {
                    try await c()
                    try action_done.Done_Succeeded()
                } catch {
                    //print("error from CreateResourcesAsync: \(error)")
                    try action_done.Done_Failed()
                }
            }
            return action_done.to_IAsyncAction()
        }

        _ = try canvas.add_CreateResources
        {
            // This is a method called by the CanvasControl, and we use it to call the routine that loads the graphics
            // for the player and baddies.
            (sender, args) in

            self._ifc = try canvas.QueryInterface()
            // TODO having to include SwiftWinRT_MazeGame.resources here is dreadful,
            // but Bundle.resourcePath seems to be wrong for SwiftPM on Windows
            let path_resources = Bundle.main.resourcePath! + "/" + "SwiftWinRT_MazeGame.resources"
            self._path_ninjacat = path_resources + "/" + "ninjacat.png"
            self._path_dino = path_resources + "/" + "dino.png"

#if not // TODO this should work
            let action = try MakeAsyncAction
            {
                try await self.CreateResourcesAsync()
            }
            try args!.TrackAsyncAction(action: action)
#else
            let action_done = try MyAsyncAction()
            Task {
                do {
                    try await self.CreateResourcesAsync()
                    try action_done.Done_Succeeded()
                } catch {
                    print("error from CreateResourcesAsync: \(error)")
                    try action_done.Done_Failed()
                }
            }

            try args!.TrackAsyncAction(action: action_done.to_IAsyncAction())
#endif
        }

        _ = try canvas.add_Draw(value: canvasControl_Draw);
        _ = try canvas.add_KeyDown
        {
            // The CanvasControl calls this method when the keyboard is pressed. 
            (sender, e) in
            var d = 0;

            switch (try e!.Key)
            {
                case Windows.System.VirtualKey.Up: 
                    d = 1; 
                case Windows.System.VirtualKey.Right: 
                    d = 2; 
                case Windows.System.VirtualKey.Down: 
                    d = 4; 
                case Windows.System.VirtualKey.Left: 
                    d = 8; 
                default: 
                    d = 0; 
            }

            self.player.NewDirection = d;
        }

        //try canvas.put_ClearColor(value: Microsoft.UI.Colors.Black);
        try canvas.put_IsTabStop(value: 1);

        try w.put_Content(value: grid);

        try w.Activate();

        // Set the score to zero - the game doesn't currently check that all dots are eaten!
        // But if this is 122, the player has cleared the level.
        player.Score = 0;

        // Start the timer going - this will update the display and move the characters around.
        // When the baddies catch the player, the timer is stopped. In a real game, the "game over"
        // message would be displayed.

        try self.Timer.put_Interval(value: Windows.Foundation.TimeSpan(Duration: 15 * 1000));
        _ = try self.Timer.add_Tick
        {
            (_, _) in
            // Draw everything by making the canvas "invalid", triggering the redraw.
            try canvas.Invalidate();
        }
        try self.Timer.Start();
    }
}

@main
class App {
    public static func main() async throws {
        try prepare_win2d()
        try RoInitialize()
        try WindowsAppSdkBootstrapInitialize()

        try Microsoft.UI.Xaml.Application.Start
        {
            _ in
            _ = try MyApp();
        }
    }
}

