// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;

extension Windows.UI.Core {
// type: Windows.UI.Core.CoreDispatcher
// runtime class
public class CoreDispatcher
    :
    WinRT.Object
{
    private var _self : WinRT.Windows.UI.Core.ICoreDispatcher;
    internal init(plok: WinRT.Windows.UI.Core.ICoreDispatcher?) throws {
        _self = plok!
        try super.init(plok: _self.QueryInterface())
    }
    internal func Interface() -> WinRT.Windows.UI.Core.ICoreDispatcher { return _self; }
    // method not needed: get_HasThreadAccess
    // method not needed: ProcessEvents
    // method not needed: RunAsync
    // method not needed: RunIdleAsync
    // instance interface not needed: Windows.UI.Core.ICoreAcceleratorKeys
    // instance interface not needed: Windows.UI.Core.ICoreDispatcherWithTaskPriority
    // instance interface not needed: Windows.UI.Core.ICoreDispatcher2
}

// type: Windows.UI.Core.CorePhysicalKeyStatus
// struct type
public typealias CorePhysicalKeyStatus = _q_CWindows_CUI_CCore_CCorePhysicalKeyStatus;

// type: Windows.UI.Core.CoreWindow
// runtime class
public class CoreWindow
    :
    WinRT.Object
{
    private var _self : WinRT.Windows.UI.Core.ICoreWindow;
    internal init(plok: WinRT.Windows.UI.Core.ICoreWindow?) throws {
        _self = plok!
        try super.init(plok: _self.QueryInterface())
    }
    internal func Interface() -> WinRT.Windows.UI.Core.ICoreWindow { return _self; }
    // static interface not needed: Windows.UI.Core.ICoreWindowStatic
    // method not needed: get_AutomationHostProvider
    // method not needed: get_Bounds
    // method not needed: get_CustomProperties
    // method not needed: get_Dispatcher
    // method not needed: get_FlowDirection
    // method not needed: put_FlowDirection
    // method not needed: get_IsInputEnabled
    // method not needed: put_IsInputEnabled
    // method not needed: get_PointerCursor
    // method not needed: put_PointerCursor
    // method not needed: get_PointerPosition
    // method not needed: get_Visible
    // method not needed: Activate
    // method not needed: Close
    // method not needed: GetAsyncKeyState
    // method not needed: GetKeyState
    // method not needed: ReleasePointerCapture
    // method not needed: SetPointerCapture
    // method not needed: add_Activated
    // method not needed: remove_Activated
    // method not needed: add_AutomationProviderRequested
    // method not needed: remove_AutomationProviderRequested
    // method not needed: add_CharacterReceived
    // method not needed: remove_CharacterReceived
    // method not needed: add_Closed
    // method not needed: remove_Closed
    // method not needed: add_InputEnabled
    // method not needed: remove_InputEnabled
    // method not needed: add_KeyDown
    // method not needed: remove_KeyDown
    // method not needed: add_KeyUp
    // method not needed: remove_KeyUp
    // method not needed: add_PointerCaptureLost
    // method not needed: remove_PointerCaptureLost
    // method not needed: add_PointerEntered
    // method not needed: remove_PointerEntered
    // method not needed: add_PointerExited
    // method not needed: remove_PointerExited
    // method not needed: add_PointerMoved
    // method not needed: remove_PointerMoved
    // method not needed: add_PointerPressed
    // method not needed: remove_PointerPressed
    // method not needed: add_PointerReleased
    // method not needed: remove_PointerReleased
    // method not needed: add_TouchHitTesting
    // method not needed: remove_TouchHitTesting
    // method not needed: add_PointerWheelChanged
    // method not needed: remove_PointerWheelChanged
    // method not needed: add_SizeChanged
    // method not needed: remove_SizeChanged
    // method not needed: add_VisibilityChanged
    // method not needed: remove_VisibilityChanged
    // instance interface not needed: Windows.UI.Core.ICoreWindow2
    // instance interface not needed: Windows.UI.Core.ICorePointerRedirector
    // instance interface not needed: Windows.UI.Core.ICoreWindow3
    // instance interface not needed: Windows.UI.Core.ICoreWindow4
    // instance interface not needed: Windows.UI.Core.ICoreWindow5
    // instance interface not needed: Windows.UI.Core.ICoreWindowWithContext
}

// type: Windows.UI.Core.ICoreDispatcher
// interface type
open class ICoreDispatcher
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x60db2fa8, Data2: 0xb705, Data3 : 0x4fde, Data4 : (0xa7, 0xd6, 0xeb, 0xbb, 0x18, 0x91, 0xd3, 0x9e)) }
// method not needed: get_HasThreadAccess
// method not needed: ProcessEvents
// method not needed: RunAsync
// method not needed: RunIdleAsync
} // ICoreDispatcher


// type: Windows.UI.Core.ICoreWindow
// interface type
open class ICoreWindow
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x79b9d5f2, Data2: 0x879e, Data3 : 0x4b89, Data4 : (0xb7, 0x98, 0x79, 0xe4, 0x75, 0x98, 0x03, 0x0c)) }
// method not needed: get_AutomationHostProvider
// method not needed: get_Bounds
// method not needed: get_CustomProperties
// method not needed: get_Dispatcher
// method not needed: get_FlowDirection
// method not needed: put_FlowDirection
// method not needed: get_IsInputEnabled
// method not needed: put_IsInputEnabled
// method not needed: get_PointerCursor
// method not needed: put_PointerCursor
// method not needed: get_PointerPosition
// method not needed: get_Visible
// method not needed: Activate
// method not needed: Close
// method not needed: GetAsyncKeyState
// method not needed: GetKeyState
// method not needed: ReleasePointerCapture
// method not needed: SetPointerCapture
// method not needed: add_Activated
// method not needed: remove_Activated
// method not needed: add_AutomationProviderRequested
// method not needed: remove_AutomationProviderRequested
// method not needed: add_CharacterReceived
// method not needed: remove_CharacterReceived
// method not needed: add_Closed
// method not needed: remove_Closed
// method not needed: add_InputEnabled
// method not needed: remove_InputEnabled
// method not needed: add_KeyDown
// method not needed: remove_KeyDown
// method not needed: add_KeyUp
// method not needed: remove_KeyUp
// method not needed: add_PointerCaptureLost
// method not needed: remove_PointerCaptureLost
// method not needed: add_PointerEntered
// method not needed: remove_PointerEntered
// method not needed: add_PointerExited
// method not needed: remove_PointerExited
// method not needed: add_PointerMoved
// method not needed: remove_PointerMoved
// method not needed: add_PointerPressed
// method not needed: remove_PointerPressed
// method not needed: add_PointerReleased
// method not needed: remove_PointerReleased
// method not needed: add_TouchHitTesting
// method not needed: remove_TouchHitTesting
// method not needed: add_PointerWheelChanged
// method not needed: remove_PointerWheelChanged
// method not needed: add_SizeChanged
// method not needed: remove_SizeChanged
// method not needed: add_VisibilityChanged
// method not needed: remove_VisibilityChanged
} // ICoreWindow


}
