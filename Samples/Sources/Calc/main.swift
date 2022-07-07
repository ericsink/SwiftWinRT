
// TODO need _spi for RawPointer for passing back to C++
@_spi(IUnknown) import WinRT; 
import WindowsSdk
import WindowsApp

typealias TextBlock = Microsoft.UI.Xaml.Controls.TextBlock
typealias GridLength = Microsoft.UI.Xaml.GridLength
typealias GridUnitType = Microsoft.UI.Xaml.GridUnitType

extension Microsoft.UI.Xaml.Controls.TextBlock {
    public convenience init(text: String, fontSize: Double) throws {
        try self.init()
        try self.put_Text(value: text);
        try self.put_FontSize(value: fontSize);
    }
}

func do_make_window() throws -> Microsoft.UI.Xaml.Window {
    let w = try Microsoft.UI.Xaml.Window();
    try w.put_Title(value: "Hello from Swift");

    let grid = try Microsoft.UI.Xaml.Controls.Grid();

    let c0 = try Microsoft.UI.Xaml.Controls.ColumnDefinition()
    try c0.put_Width(value: GridLength(Value: 1, GridUnitType: GridUnitType.Star))

    let c1 = try Microsoft.UI.Xaml.Controls.ColumnDefinition()
    try c1.put_Width(value: GridLength(Value: 120, GridUnitType: GridUnitType.Pixel))

    try grid.ColumnDefinitions!.Append(value: c0)
    try grid.ColumnDefinitions!.Append(value: c1)

    let r0 = try Microsoft.UI.Xaml.Controls.RowDefinition()
    try r0.put_Height(value: GridLength(Value: 80, GridUnitType: GridUnitType.Pixel))

    let r1 = try Microsoft.UI.Xaml.Controls.RowDefinition()
    try r1.put_Height(value: GridLength(Value: 1, GridUnitType: GridUnitType.Star))

    let r2 = try Microsoft.UI.Xaml.Controls.RowDefinition()
    try r2.put_Height(value: GridLength(Value: 100, GridUnitType: GridUnitType.Pixel))

    let r3 = try Microsoft.UI.Xaml.Controls.RowDefinition()
    try r3.put_Height(value: GridLength(Value: 60, GridUnitType: GridUnitType.Pixel))

    try grid.RowDefinitions!.Append(value: r0)
    try grid.RowDefinitions!.Append(value: r1)
    try grid.RowDefinitions!.Append(value: r2)
    try grid.RowDefinitions!.Append(value: r3)

    let tb_title = try TextBlock(text: "Swifty Calc", fontSize: 48)
    try grid.Children!.Append(value: tb_title)
    try Microsoft.UI.Xaml.Controls.Grid.SetRow(element: tb_title, value: 0)
    try Microsoft.UI.Xaml.Controls.Grid.SetColumn(element: tb_title, value: 0)

    let tb_error = try TextBlock(text: "", fontSize: 24)
    // TODO foreground text color red
    try grid.Children!.Append(value: tb_error)
    try Microsoft.UI.Xaml.Controls.Grid.SetRow(element: tb_error, value: 2)
    try Microsoft.UI.Xaml.Controls.Grid.SetColumn(element: tb_error, value: 0)

    let stkView = try Microsoft.UI.Xaml.Controls.TextBlock()
    try grid.Children!.Append(value: stkView)
    try Microsoft.UI.Xaml.Controls.Grid.SetRow(element: stkView, value: 1)
    try Microsoft.UI.Xaml.Controls.Grid.SetColumn(element: stkView, value: 0)

    enum Value {
        case Num(Double)
        case Str(String)
    }

    enum MyError: Swift.Error {
        case StackUnderflow
        case TypeMismatch
    }

    func to_string(value v : Value) -> String {
        switch v {
            case .Num(let n):
                return "\(n)"
            case .Str(let s):
                return s
        }
    }

    func to_number(value v : Value) throws -> Double {
        switch v {
            case .Num(let n):
                return n
            case .Str(let s):
                if let n = Double(s) {
                    return n
                } else {
                    throw MyError.TypeMismatch
                }
        }
    }

    var stk : [Value] = []

    func pop() throws -> Value {
        if stk.count > 0 {
            return stk.remove(at: stk.count - 1)
        } else {
            throw MyError.StackUnderflow
        }
    }

    func pop_string() throws -> String {
        let v = try pop()
        return to_string(value: v)
    }

    func pop_number() throws -> Double {
        let v = try pop()
        return try to_number(value: v)
    }

    func show_stack() throws {
        let a = stk.map { to_string(value: $0) }
        let s = "\(a)"
        try stkView.put_Text(value: s)
        try tf.put_Text(value: "") // TODO not here
    }

    class Func {
        public let f : () throws -> Void

        public init(f: @escaping () throws -> Void) {
            self.f = f
        }
    }

    let words: [String: Func] =
        [
            "drop":
            Func
            {
                _ = try pop()
            },
            "dup":
            Func
            {
                let x = try pop()
                stk += [x]
                stk += [x]
            },
            "neg":
            Func
            {
                let x = try pop_number()
                let res = Value.Num(-x)
                stk += [res]
            },
            "sqrt":
            Func
            {
                let x = try pop_number()
                let res = Value.Num(x.squareRoot())
                stk += [res]
            },
            "/":
            Func
            {
                let x = try pop_number()
                let y = try pop_number()
                let res = Value.Num(y / x)
                stk += [res]
            },
            "-":
            Func
            {
                let x = try pop_number()
                let y = try pop_number()
                let res = Value.Num(y - x)
                stk += [res]
            },
            "+":
            Func
            {
                let x = try pop_number()
                let y = try pop_number()
                let res = Value.Num(x + y)
                stk += [res]
            },
            "*":
            Func
            {
                let x = try pop_number()
                let y = try pop_number()
                let res = Value.Num(x * y)
                stk += [res]
            },
            "concat":
            Func
            {
                let str_x = try pop_string()
                let str_y = try pop_string()
                let res = Value.Str(str_y + str_x);
                stk += [res]
            },
            "strlen":
            Func
            {
                let s = try pop_string()
                let res = Value.Num(Double(s.count));
                stk += [res]
            },
        ]

    let wordsView = try Microsoft.UI.Xaml.Controls.ListView()
    for (name, _) in words {
        try wordsView.Items!.Append(value: TextBlock(text: name, fontSize: 16))
    }
    try wordsView.put_IsTabStop(value: 0);
    // TODO tap on an item in this list should apply it
    try Microsoft.UI.Xaml.Controls.Grid.SetRow(element: wordsView, value: 1)
    try Microsoft.UI.Xaml.Controls.Grid.SetColumn(element: wordsView, value: 1)
    try grid.Children!.Append(value: wordsView)

    let tf = try Microsoft.UI.Xaml.Controls.TextBox()
    try tf.put_Text(value: "")
    // TODO bigger font size?
    // TODO this should always have focus
    try tf.put_PlaceholderText(value: "Type here")
    _ = try tf.add_KeyDown
    {
        (_, e) in
        if try e!.Key == Windows.System.VirtualKey.Enter {
            let txt = try tf.Text!
            // TODO should trim the string
            if txt.count > 0 {
                if let f = words[txt] {
                    do {
                        try f.f()
                        try tb_error.put_Text(value: "")
                    } catch {
                        try tb_error.put_Text(value: "\(error)")
                    }
                } else {
                    try tb_error.put_Text(value: "")
                    if let n = Double(txt) {
                        let v = Value.Num(n)
                        stk += [v]
                    } else {
                        let v = Value.Str(txt)
                        stk += [v]
                    }
                }

                try show_stack()
            } else {
                // enter with an empty string is ignored
            }
        } else {
            // ignore other keys
        }
    }
    try grid.Children!.Append(value: tf)
    try Microsoft.UI.Xaml.Controls.Grid.SetRow(element: tf, value: 3)
    try Microsoft.UI.Xaml.Controls.Grid.SetColumn(element: tf, value: 0)

    try w.put_Content(value: grid);

    return w;
}

// TODO this is the C external entry point
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

