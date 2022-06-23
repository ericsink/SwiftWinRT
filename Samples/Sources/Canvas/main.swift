
import WinRT
import WindowsApp
import Win2D

class MyApp : Microsoft.UI.Xaml.Application {
    override func OnLaunched(args : Optional<Microsoft.UI.Xaml.LaunchActivatedEventArgs>) throws -> Void 
    {
        let w = try Microsoft.UI.Xaml.Window();
        try w.put_Title(value: "Hello from Swift");

        let canvas = try Microsoft.Graphics.Canvas.UI.Xaml.CanvasControl()
        let textFormat = try Microsoft.Graphics.Canvas.Text.CanvasTextFormat()
        try textFormat.put_FontSize(value: 32)
        _ = try canvas.add_Draw
        {
            (sender, args: Microsoft.Graphics.Canvas.UI.Xaml.CanvasDrawEventArgs?) in

            try args!.DrawingSession!.DrawText(text: "Win2D with Swift", x: 0, y: 0, color: Microsoft.UI.Colors.Black, format: textFormat);
            try args!.DrawingSession!.FillCircle(x: 100, y: 100, radius: 50, color: Microsoft.UI.Colors.Orange);
            try args!.DrawingSession!.FillEllipse(x: 200, y: 200, radiusX: 50, radiusY: 30, color: Microsoft.UI.Colors.Purple);
            try args!.DrawingSession!.FillRoundedRectangle(x: 300, y: 300, w: 80, h: 40, radiusX: 10, radiusY: 10, color: Microsoft.UI.Colors.Blue);
            try args!.DrawingSession!.FillRectangle(x: 400, y: 50, w: 80, h: 200, color: Microsoft.UI.Colors.DarkGreen);
        }
        try canvas.put_ClearColor(value: Microsoft.UI.Colors.LightBlue);

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

        try Microsoft.UI.Xaml.Application.Start
        {
            _ in
            _ = try MyApp();
        }
    }
}

