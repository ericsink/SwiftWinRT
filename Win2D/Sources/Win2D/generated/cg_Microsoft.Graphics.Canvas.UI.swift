// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;
@_spi(IUnknown) import WinRT;
import CWin2D;
import WindowsSdk;
import CWindowsSdk;
import WindowsApp;
import CWindowsApp;

extension ClosedGenerics {
// closed generic delegate type
public class ITypedEventHandler_2__q_CMicrosoft_CGraphics_CCanvas_CUI_CXaml_CCanvasControl__q_CMicrosoft_CGraphics_CCanvas_CUI_CCanvasCreateResourcesEventArgs
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xffcd91a9, Data2: 0xb0f6, Data3 : 0x5e59, Data4 : (0xb8, 0x15, 0x05, 0x81, 0x12, 0x92, 0x40, 0xe6)) }
    // [IsSpecialName] void Invoke(Microsoft.Graphics.Canvas.UI.Xaml.CanvasControl, Microsoft.Graphics.Canvas.UI.CanvasCreateResourcesEventArgs)
    private func _n_Invoke(_ sender : Optional<UnsafeMutablePointer<_q_CMicrosoft_CGraphics_CCanvas_CUI_CXaml_CICanvasControl>>, _ args : Optional<UnsafeMutablePointer<_q_CMicrosoft_CGraphics_CCanvas_CUI_CICanvasCreateResourcesEventArgs>>) throws {
        return try perform(as: _cg_CWindows_CFoundation_ITypedEventHandler_2__q_CMicrosoft_CGraphics_CCanvas_CUI_CXaml_CCanvasControl__q_CMicrosoft_CGraphics_CCanvas_CUI_CCanvasCreateResourcesEventArgs.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Invoke(pThis, sender, args))
        }
    }
    public func Invoke(sender : Optional<Microsoft.Graphics.Canvas.UI.Xaml.ICanvasControl>, args : Optional<Microsoft.Graphics.Canvas.UI.ICanvasCreateResourcesEventArgs>) throws -> Void {
        try self._n_Invoke(RawPointer(sender), RawPointer(args));
    }
} // ITypedEventHandler_2__q_CMicrosoft_CGraphics_CCanvas_CUI_CXaml_CCanvasControl__q_CMicrosoft_CGraphics_CCanvas_CUI_CCanvasCreateResourcesEventArgs
// impl delegate type
open class TypedEventHandler_2__q_CMicrosoft_CGraphics_CCanvas_CUI_CXaml_CCanvasControl__q_CMicrosoft_CGraphics_CCanvas_CUI_CCanvasCreateResourcesEventArgs
{
    private static var vtable: _cg_CWindows_CFoundation_ITypedEventHandler_2__q_CMicrosoft_CGraphics_CCanvas_CUI_CXaml_CCanvasControl__q_CMicrosoft_CGraphics_CCanvas_CUI_CCanvasCreateResourcesEventArgsVtbl = .init(
    QueryInterface: {
        guard let pUnk = $0, let riid = $1, let ppvObject = $2 else {
            return E_INVALIDARG
        }
        switch riid.pointee {
        case IUnknown.IID, ClosedGenerics.ITypedEventHandler_2__q_CMicrosoft_CGraphics_CCanvas_CUI_CXaml_CCanvasControl__q_CMicrosoft_CGraphics_CCanvas_CUI_CCanvasCreateResourcesEventArgs.IID:
            _ = pUnk.pointee.lpVtbl.pointee.AddRef(pUnk)
            ppvObject.pointee = UnsafeMutableRawPointer(pUnk)
            return S_OK
        default:
            ppvObject.pointee = nil
            return E_NOINTERFACE
        }
    },
    AddRef: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: TypedEventHandler_2__q_CMicrosoft_CGraphics_CCanvas_CUI_CXaml_CCanvasControl__q_CMicrosoft_CGraphics_CCanvas_CUI_CCanvasCreateResourcesEventArgs.WithTrailingObjects.self, capacity: 1)
        _ = pinstance.pointee.container.retain()
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeUnretainedValue()))
        return __res;
    },
    Release: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: TypedEventHandler_2__q_CMicrosoft_CGraphics_CCanvas_CUI_CXaml_CCanvasControl__q_CMicrosoft_CGraphics_CCanvas_CUI_CCanvasCreateResourcesEventArgs.WithTrailingObjects.self, capacity: 1)
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeRetainedValue()))
        return __res;
    },
    Invoke: {
        (pThis, _ sender : Optional<UnsafeMutablePointer<_q_CMicrosoft_CGraphics_CCanvas_CUI_CXaml_CICanvasControl>>, _ args : Optional<UnsafeMutablePointer<_q_CMicrosoft_CGraphics_CCanvas_CUI_CICanvasCreateResourcesEventArgs>>) in
        guard let self = TypedEventHandler_2__q_CMicrosoft_CGraphics_CCanvas_CUI_CXaml_CCanvasControl__q_CMicrosoft_CGraphics_CCanvas_CUI_CCanvasCreateResourcesEventArgs.from_TypedEventHandler_2__q_CMicrosoft_CGraphics_CCanvas_CUI_CXaml_CCanvasControl__q_CMicrosoft_CGraphics_CCanvas_CUI_CCanvasCreateResourcesEventArgs(pThis) else {
            return E_INVALIDARG
        }
        do {
            let _ret : Void = try self.Invoke(sender: Microsoft.Graphics.Canvas.UI.Xaml.CanvasControl(plok: Microsoft.Graphics.Canvas.UI.Xaml.ICanvasControl(sender)), args: Microsoft.Graphics.Canvas.UI.CanvasCreateResourcesEventArgs(plok: Microsoft.Graphics.Canvas.UI.ICanvasCreateResourcesEventArgs(args)))
            return S_OK
        }
        catch let _e as WinRT.Error {
            return _e.hr;
        } catch {
            return E_FAIL
        }
    }
    )
    private class Container {
        public var self_ref: TypedEventHandler_2__q_CMicrosoft_CGraphics_CCanvas_CUI_CXaml_CCanvasControl__q_CMicrosoft_CGraphics_CCanvas_CUI_CCanvasCreateResourcesEventArgs? = nil
    }
    private struct WithTrailingObjects {
        public var interface_struct: _cg_CWindows_CFoundation_ITypedEventHandler_2__q_CMicrosoft_CGraphics_CCanvas_CUI_CXaml_CCanvasControl__q_CMicrosoft_CGraphics_CCanvas_CUI_CCanvasCreateResourcesEventArgs
        public var container: Unmanaged<Container>
    }
    private var instance: WithTrailingObjects

    private var _cb : Optional<(Optional<Microsoft.Graphics.Canvas.UI.Xaml.CanvasControl>, Optional<Microsoft.Graphics.Canvas.UI.CanvasCreateResourcesEventArgs>) throws -> Void>
    public init(cb : Optional<(Optional<Microsoft.Graphics.Canvas.UI.Xaml.CanvasControl>, Optional<Microsoft.Graphics.Canvas.UI.CanvasCreateResourcesEventArgs>) throws -> Void> = nil) {
        _cb = cb
        self.instance = WithTrailingObjects(interface_struct: _cg_CWindows_CFoundation_ITypedEventHandler_2__q_CMicrosoft_CGraphics_CCanvas_CUI_CXaml_CCanvasControl__q_CMicrosoft_CGraphics_CCanvas_CUI_CCanvasCreateResourcesEventArgs(lpVtbl: &Self.vtable), container: Unmanaged<Container>.passRetained(Container()))
        self.instance.container.takeUnretainedValue().self_ref = self
    }
    private static func from_TypedEventHandler_2__q_CMicrosoft_CGraphics_CCanvas_CUI_CXaml_CCanvasControl__q_CMicrosoft_CGraphics_CCanvas_CUI_CCanvasCreateResourcesEventArgs(_ pUnk: UnsafeMutableRawPointer?) -> TypedEventHandler_2__q_CMicrosoft_CGraphics_CCanvas_CUI_CXaml_CCanvasControl__q_CMicrosoft_CGraphics_CCanvas_CUI_CCanvasCreateResourcesEventArgs? {
        return pUnk?.bindMemory(to: TypedEventHandler_2__q_CMicrosoft_CGraphics_CCanvas_CUI_CXaml_CCanvasControl__q_CMicrosoft_CGraphics_CCanvas_CUI_CCanvasCreateResourcesEventArgs.WithTrailingObjects.self, capacity: 1).pointee.container.takeUnretainedValue().self_ref
    }

    open func Invoke(sender : Optional<Microsoft.Graphics.Canvas.UI.Xaml.CanvasControl>, args : Optional<Microsoft.Graphics.Canvas.UI.CanvasCreateResourcesEventArgs>) throws -> Void {
        if let cb = _cb {
            return try cb(sender, args)
        }
    }
    public func Interface() -> ClosedGenerics.ITypedEventHandler_2__q_CMicrosoft_CGraphics_CCanvas_CUI_CXaml_CCanvasControl__q_CMicrosoft_CGraphics_CCanvas_CUI_CCanvasCreateResourcesEventArgs {
        return withUnsafeMutablePointer(to: &self.instance.interface_struct) {
            ClosedGenerics.ITypedEventHandler_2__q_CMicrosoft_CGraphics_CCanvas_CUI_CXaml_CCanvasControl__q_CMicrosoft_CGraphics_CCanvas_CUI_CCanvasCreateResourcesEventArgs(UnsafeMutableRawPointer($0))
        }
    }
}
// wrap delegate type
open class foo_TypedEventHandler_2__q_CMicrosoft_CGraphics_CCanvas_CUI_CXaml_CCanvasControl__q_CMicrosoft_CGraphics_CCanvas_CUI_CCanvasCreateResourcesEventArgs
{
    private var _self : ClosedGenerics.ITypedEventHandler_2__q_CMicrosoft_CGraphics_CCanvas_CUI_CXaml_CCanvasControl__q_CMicrosoft_CGraphics_CCanvas_CUI_CCanvasCreateResourcesEventArgs;
    public init(plok: ClosedGenerics.ITypedEventHandler_2__q_CMicrosoft_CGraphics_CCanvas_CUI_CXaml_CCanvasControl__q_CMicrosoft_CGraphics_CCanvas_CUI_CCanvasCreateResourcesEventArgs?) throws {
        _self = plok!
    }
    public func Invoke(sender : Optional<Microsoft.Graphics.Canvas.UI.Xaml.CanvasControl>, args : Optional<Microsoft.Graphics.Canvas.UI.CanvasCreateResourcesEventArgs>) throws -> Void {
        return try _self.Invoke(sender: sender!.Interface(), args: args!.Interface());
    }
    public func Interface() -> ClosedGenerics.ITypedEventHandler_2__q_CMicrosoft_CGraphics_CCanvas_CUI_CXaml_CCanvasControl__q_CMicrosoft_CGraphics_CCanvas_CUI_CCanvasCreateResourcesEventArgs {
        return _self
    }
}
}