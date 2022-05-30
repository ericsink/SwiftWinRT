
import WinRT

#if not
class MyApp : Windows.UI.Xaml.Application
{
    override func OnLaunched(args : Optional<WinRT.Windows.ApplicationModel.Activation.LaunchActivatedEventArgs>) throws -> Void 
    {
        // TODO
    }
}
#endif

@main
class App {
  public static func main() async throws {
    try RoInitialize()

    // TODO need an ApplicationInitializationCallback
    //Windows.UI.Xaml.Application.Start(MyApp());
  }
}

