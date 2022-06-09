
import WinRT

class MyApp : Microsoft.UI.Xaml.ApplicationOverrides {
    override func OnLaunched(args : Optional<WinRT.Microsoft.UI.Xaml.LaunchActivatedEventArgs>) throws -> Void 
    {
        let w = try Microsoft.UI.Xaml.Window();

        try w.put_Title(value: "Hello from Swift");

        let tb = try Microsoft.UI.Xaml.Controls.TextBlock();
        try tb.put_Text(value: "HOLA");
        try tb.put_FontSize(value: 256);
        try w.put_Content(value: tb);

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

