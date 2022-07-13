
// TODO need _spi for RawPointer for passing back to C++
@_spi(IUnknown) import WinRT; 

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

#if not
class MyApp : Microsoft.UI.Xaml.Application {
    override func OnLaunched(args : Optional<Microsoft.UI.Xaml.LaunchActivatedEventArgs>) throws -> Void 
    {
        // etc
    }
}
#endif

// TODO this code used to be an override for the Application
// launched event.  now it is a C function that constructs
// a Window and returns a pointer to the IWindow interface.
// the C++ bootstrap/host code wraps it and sets it as the
// Windows for the Application instance which is constructed
// and managed there.
// cp .build/debug/*.dll into the output directory of the
// C++ app.

// in : void App::OnLaunched(LaunchActivatedEventArgs const&)
// C++ code is roughly:

// HMODULE h = LoadLibraryW(L"XamlApp.dll");
// void* (*pfn)(void) = (void* (*)(void)) GetProcAddress(h, "make_window");
// void* pw = pfn();
// window = winrt::Microsoft::UI::Xaml::Window(pw, winrt::take_ownership_from_abi_t());
// window.Activate();

// TODO this is the swifty layer of this function,
// throws
func do_make_window() throws -> Microsoft.UI.Xaml.Window {
    let w = try Microsoft.UI.Xaml.Window();
    try w.put_Title(value: "Hello from Swift");

    let stack = try Microsoft.UI.Xaml.Controls.StackPanel();

    let stops = try Microsoft.UI.Xaml.Media.GradientStopCollection();
    try stops.Append(value: GradientStop(color: Windows.UI.Color(A: 255, R: 0, G: 87, B: 183), off: 0))
    try stops.Append(value: GradientStop(color: Microsoft.UI.Colors.Gold, off: 1))
    let br = try Microsoft.UI.Xaml.Media.LinearGradientBrush(gradientStopCollection: stops, angle: 45);
    try stack.put_Background(value: br);

    try stack.Children!.Append(value: TextBlock(text: "Swift Demo", fontSize: 96))
    try stack.Children!.Append(value: TextBlock(text: "WinUI 3", fontSize: 64))
    try stack.Children!.Append(value: TextBlock(text: "Windows App SDK 1.1", fontSize: 64))

    let slider = try Microsoft.UI.Xaml.Controls.Slider()
    try stack.Children!.Append(value: slider)

    let btn = try Microsoft.UI.Xaml.Controls.Button();
    _ = try btn.add_Click
    {
        (sender, e) in
        let x = try slider.get_Value()
        try slider.put_Value(value: x + 5)
    }
    try btn.put_Content(value: TextBlock(text: "Click", fontSize: 32));
    try stack.Children!.Append(value: btn)

    let tf = try Microsoft.UI.Xaml.Controls.TextBox()
    try tf.put_Width(value: 400)
    try tf.put_Text(value: "")
    try tf.put_Header(value: TextBlock(text: "Header", fontSize: 12));
    try tf.put_Description(value: TextBlock(text: "Description", fontSize: 12));
    try tf.put_PlaceholderText(value: "Type here")
    try stack.Children!.Append(value: tf)

#if not
    let rc = try Microsoft.UI.Xaml.Controls.RatingControl()
    try rc.put_Caption(value: "chomp")
    try rc.put_InitialSetValue(value: 2)
    try rc.put_MaxRating(value: 5)
    try rc.put_Value(value: 1)
    _ = try rc.add_ValueChanged
    {
        (sender, e) in
        print("CHOMP")
    }
    try stack.Children!.Append(value: rc)
#endif

#if not
    let listview = try Microsoft.UI.Xaml.Controls.ListView()
    try listview.Items!.Append(value: TextBlock(text: "one", fontSize: 24))
    try listview.Items!.Append(value: TextBlock(text: "two", fontSize: 24))
    try listview.Items!.Append(value: TextBlock(text: "three", fontSize: 24))
    try listview.Items!.Append(value: TextBlock(text: "four", fontSize: 24))
    try listview.Items!.Append(value: TextBlock(text: "five", fontSize: 24))
    try listview.Items!.Append(value: TextBlock(text: "six", fontSize: 24))
    try listview.Items!.Append(value: TextBlock(text: "seven", fontSize: 24))
    try listview.Items!.Append(value: TextBlock(text: "eight", fontSize: 24))
    try listview.Items!.Append(value: TextBlock(text: "nine", fontSize: 24))
    try listview.Items!.Append(value: TextBlock(text: "ten", fontSize: 24))
    try listview.Items!.Append(value: TextBlock(text: "eleven", fontSize: 24))
    try stack.Children!.Append(value: listview)
#endif

#if not
    let cal = try Microsoft.UI.Xaml.Controls.CalendarDatePicker()
    try stack.Children!.Append(value: cal)
#endif

#if not
    let color = try Microsoft.UI.Xaml.Controls.ColorPicker()
    try stack.Children!.Append(value: color)
#endif

#if not
    let dpick = try Microsoft.UI.Xaml.Controls.DatePicker()
    try stack.Children!.Append(value: dpick)
#endif

#if not
    let rich = try Microsoft.UI.Xaml.Controls.RichEditBox()
    try stack.Children!.Append(value: rich)
#endif

    try w.put_Content(value: stack);

    return w;
}

// TODO this is the C external entry point mentioned above
@_cdecl("make_window")
public func make_window() -> UnsafeMutableRawPointer? {
    do {
        let w = try do_make_window();
        let b = w.Interface() // get the IWindow
        _ = b.AddRef(); // need one extra refcount
        return UnsafeMutableRawPointer(RawPointer(b))
    } catch {
        print("\(error)")
        return nil
    }
}

#if not
@main
class App {
    public static func main() async throws {
        try RoInitialize()
        try WindowsAppSdkBootstrapInitialize()

        try Microsoft.UI.Xaml.Application.Start
        {
            _ in
            _ = try MyApp();
        }
    }
}
#endif

