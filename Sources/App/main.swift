
import WinRT

class MyApp : Windows.UI.Xaml.Application
{
    override func OnLaunched(args : Optional<WinRT.Windows.ApplicationModel.Activation.LaunchActivatedEventArgs>) throws -> Void 
    {
        // TODO
    }
}

class MyInit : Windows.UI.Xaml.ApplicationInitializationCallback
{
    override func Invoke(p : Optional<WinRT.Windows.UI.Xaml.IApplicationInitializationCallbackParams>) throws {
        // TODO var x = MyApp();
    }
}

@main
class App {
  public static func main() async throws {
    try RoInitialize()

    try Windows.UI.Xaml.Application.Start(callback: MyInit());
  }
}

