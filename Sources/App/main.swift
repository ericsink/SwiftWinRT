
import CWinRT
import WinRT

public func BootstrapInitialize() throws {
    // TODO this should move down into the library.
    // TODO also, it currently hard-codes the arguments, 
    // specifying Windows App SDK 1.1, no version tag, no minVersion
    // which is kinda wrong.
    try CHECKED(MddBootstrapInitialize(0x00010001, nil, 0));
}

class MyApp : Microsoft.UI.Xaml.ApplicationOverrides
{
    override func OnLaunched(args : Optional<WinRT.Microsoft.UI.Xaml.LaunchActivatedEventArgs>) throws -> Void 
    {
        let w = try Microsoft.UI.Xaml.Window();

        //var tb = try Microsoft.UI.Xaml.Controls.TextBlock()
        //try tb.set_Text("Hola");
        //w.put_Content(value: tb);

        try w.put_Title(value: "Hello from Swift");
        try w.Activate();
    }
}

class MyInit : Microsoft.UI.Xaml.ApplicationInitializationCallback
{
    // TODO do we need to store this in a static var?
    static var q : Optional<MyApp> = nil;
    override func Invoke(p : Optional<WinRT.Microsoft.UI.Xaml.ApplicationInitializationCallbackParams>) throws {
        Self.q = try MyApp();
    }
}

@main
class App {
  public static func main() async throws {
    try RoInitialize()
    try BootstrapInitialize()

    let cb = MyInit()
    try Microsoft.UI.Xaml.Application.Start(callback: cb);
  }
}

