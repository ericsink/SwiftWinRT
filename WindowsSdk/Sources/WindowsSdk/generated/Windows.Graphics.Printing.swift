// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;
@_spi(IUnknown) import WinRT;
import CWindowsSdk;

extension Windows.Graphics.Printing {
// type: Windows.Graphics.Printing.IPrintTaskOptionsCore
// interface type
open class IPrintTaskOptionsCore
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x1bdbb474, Data2: 0x4ed1, Data3 : 0x41eb, Data4 : (0xbe, 0x3c, 0x72, 0xd1, 0x8e, 0xd6, 0x73, 0x37)) }
// method not needed: GetPageDescription
} // IPrintTaskOptionsCore


// type: Windows.Graphics.Printing.PrintTaskOptions
// runtime class
public class PrintTaskOptions
    :
    WinRT.Object
{
    private var _self : Windows.Graphics.Printing.IPrintTaskOptionsCore;
    public init(plok: Windows.Graphics.Printing.IPrintTaskOptionsCore?) throws {
        _self = plok!
        try super.init(plok: _self.QueryInterface())
    }
    public func Interface() -> Windows.Graphics.Printing.IPrintTaskOptionsCore { return _self; }
    // method not needed: GetPageDescription
    // instance interface not needed: Windows.Graphics.Printing.IPrintTaskOptionsCoreProperties
    // instance interface not needed: Windows.Graphics.Printing.IPrintTaskOptionsCoreUIConfiguration
    // instance interface not needed: Windows.Graphics.Printing.IPrintTaskOptions
    // instance interface not needed: Windows.Graphics.Printing.IPrintTaskOptions2
}

}
