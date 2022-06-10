
import WinRT

typealias GradientStop = Microsoft.UI.Xaml.Media.GradientStop
typealias TextBlock = Microsoft.UI.Xaml.Controls.TextBlock

extension Microsoft.UI.Xaml.Media.GradientStop {
    public convenience init(color: Windows.UI.Color, off: Double) throws {
        try self.init()
        try self.put_Color(value: color);
        try self.put_Offset(value: off);
    }
}

extension Microsoft.UI.Xaml.Controls.TextBlock {
    public convenience init(text: String, fontSize: Double) throws {
        try self.init()
        try self.put_Text(value: text);
        try self.put_FontSize(value: fontSize);
    }
}

class MyApp : Microsoft.UI.Xaml.ApplicationOverrides {
    override func OnLaunched(args : Optional<WinRT.Microsoft.UI.Xaml.LaunchActivatedEventArgs>) throws -> Void 
    {
        let w = try Microsoft.UI.Xaml.Window();
        try w.put_Title(value: "Hello from Swift");

        let stack = try Microsoft.UI.Xaml.Controls.StackPanel();

        let stops = try Microsoft.UI.Xaml.Media.GradientStopCollection();
        try stops.Append(value: GradientStop(color: Windows.UI.Color(A: 255, R: 0, G: 87, B: 183), off: 0))
        try stops.Append(value: GradientStop(color: Microsoft.UI.Colors.Gold, off: 1))
        let br = try Microsoft.UI.Xaml.Media.LinearGradientBrush(gradientStopCollection: stops, angle: 45);
        try stack.put_Background(value: br);

        try stack.Children!.Append(value: TextBlock(text: "Swift Demo", fontSize: 128))
        try stack.Children!.Append(value: TextBlock(text: "WinUI 3", fontSize: 96))
        try stack.Children!.Append(value: TextBlock(text: "Windows App SDK 1.1", fontSize: 96))

        try w.put_Content(value: stack);

        try w.Activate();
    }
}

class MyInit : Microsoft.UI.Xaml.ApplicationInitializationCallback
{
    override func Invoke(p : Optional<WinRT.Microsoft.UI.Xaml.ApplicationInitializationCallbackParams>) throws {
        _ = try MyApp();
    }
}

@main
class App {
    public static func main() async throws {
        try RoInitialize()
        try WindowsAppSdkBootstrapInitialize()

        let cb = MyInit()
        try Microsoft.UI.Xaml.Application.Start(callback: cb);
    }
}

