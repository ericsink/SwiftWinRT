// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;
@_spi(IUnknown) import WinRT;
import C;

extension Microsoft.UI.Input {
// type: Microsoft.UI.Input.IInputCursor
// interface type
open class IInputCursor
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x359b15f9, Data2: 0x19c2, Data3 : 0x5714, Data4 : (0x84, 0x32, 0x75, 0x17, 0x68, 0x26, 0x40, 0x6b)) }
} // IInputCursor


// type: Microsoft.UI.Input.IPointerPoint
// interface type
open class IPointerPoint
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x0d430ee6, Data2: 0x252c, Data3 : 0x59a4, Data4 : (0xb2, 0xa2, 0xd4, 0x42, 0x64, 0xdc, 0x6a, 0x40)) }
// method not needed: get_FrameId
// method not needed: get_IsInContact
// method not needed: get_PointerDeviceType
// method not needed: get_PointerId
// method not needed: get_Position
// method not needed: get_Properties
// method not needed: get_Timestamp
// method not needed: GetTransformedPoint
} // IPointerPoint


// type: Microsoft.UI.Input.InputCursor
// runtime class
open class InputCursor
    :
    WinRT.Object
{
    private var _self : Microsoft.UI.Input.IInputCursor;
    public init(plok: Microsoft.UI.Input.IInputCursor?) throws {
        _self = plok!
        try super.init(plok: _self.QueryInterface())
    }
    public func Interface() -> Microsoft.UI.Input.IInputCursor { return _self; }
    // COMPOSABLE: Microsoft.UI.Input.IInputCursorFactory
// composable interface not needed: Microsoft.UI.Input.IInputCursorFactory
    // static interface not needed: Microsoft.UI.Input.IInputCursorStatics
    // instance interface not needed: Windows.Foundation.IClosable
}

// type: Microsoft.UI.Input.PointerPoint
// runtime class
public class PointerPoint
    :
    WinRT.Object
{
    private var _self : Microsoft.UI.Input.IPointerPoint;
    public init(plok: Microsoft.UI.Input.IPointerPoint?) throws {
        _self = plok!
        try super.init(plok: _self.QueryInterface())
    }
    public func Interface() -> Microsoft.UI.Input.IPointerPoint { return _self; }
    // method not needed: get_FrameId
    // method not needed: get_IsInContact
    // method not needed: get_PointerDeviceType
    // method not needed: get_PointerId
    // method not needed: get_Position
    // method not needed: get_Properties
    // method not needed: get_Timestamp
    // method not needed: GetTransformedPoint
}

}
