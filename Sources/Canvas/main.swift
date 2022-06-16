
import WinRT

class MyApp : Microsoft.UI.Xaml.Application {
    override func OnLaunched(args : Optional<WinRT.Microsoft.UI.Xaml.LaunchActivatedEventArgs>) throws -> Void 
    {
        let w = try Microsoft.UI.Xaml.Window();
        try w.put_Title(value: "Hello from Swift");

        let canvas = try Microsoft.Graphics.Canvas.UI.Xaml.CanvasControl()
        // TODO the presence of this mangled name here is obviously dreadful
        let draw = Windows.Foundation.TypedEventHandler_2__q_CMicrosoft_CGraphics_CCanvas_CUI_CXaml_CCanvasControl__q_CMicrosoft_CGraphics_CCanvas_CUI_CXaml_CCanvasDrawEventArgs
        {
            (sender, args: Microsoft.Graphics.Canvas.UI.Xaml.CanvasDrawEventArgs?) in
            print("DRAW")
            try args!.DrawingSession!.DrawText(text: "Hello, World!", x: 0, y: 0, color: Microsoft.UI.Colors.Red);
            //try args!.DrawingSession!.DrawCircle(x: 100, y: 100, radius: 50, color: Microsoft.UI.Colors.Purple);
        }
        _ = try canvas.add_Draw(value: draw);

        try w.put_Content(value: canvas);

        try w.Activate();
    }
}

@main
class App {
    public static func main() async throws {
        try prepare_win2d()
        try RoInitialize()
        try WindowsAppSdkBootstrapInitialize()

        let cb = Microsoft.UI.Xaml.ApplicationInitializationCallback
        {
            _ in
            _ = try MyApp();
        }
        try Microsoft.UI.Xaml.Application.Start(callback: cb);
    }
}

