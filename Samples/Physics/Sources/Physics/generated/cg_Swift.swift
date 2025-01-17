// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;
@_spi(IUnknown) import WinRT;
import C;

extension ClosedGenerics {
// closed generic delegate type
public class IEventHandler_1_IInspectable
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xc50898f6, Data2: 0xc536, Data3 : 0x5f47, Data4 : (0x85, 0x83, 0x8b, 0x2c, 0x24, 0x38, 0xa1, 0x3b)) }
    // [IsSpecialName] void Invoke(System.Object, System.Object)
    private func _n_Invoke(_ sender : Optional<UnsafeMutablePointer<CWinRT.IInspectable>>, _ args : Optional<UnsafeMutablePointer<CWinRT.IInspectable>>) throws {
        return try perform(as: _cg_CWindows_CFoundation_IEventHandler_1_IInspectable.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Invoke(pThis, sender, args))
        }
    }
    public func Invoke(sender : Optional<WinRT.IInspectable>, args : Optional<WinRT.IInspectable>) throws -> Void {
        try self._n_Invoke(RawPointer(sender), RawPointer(args));
    }
} // IEventHandler_1_IInspectable
// impl delegate type
open class impl_EventHandler_1_IInspectable
{
    private static var vtable: _cg_CWindows_CFoundation_IEventHandler_1_IInspectableVtbl = .init(
    QueryInterface: {
        guard let pUnk = $0, let riid = $1, let ppvObject = $2 else {
            return E_INVALIDARG
        }
        switch riid.pointee {
        case IUnknown.IID, ClosedGenerics.IEventHandler_1_IInspectable.IID:
            _ = pUnk.pointee.lpVtbl.pointee.AddRef(pUnk)
            ppvObject.pointee = UnsafeMutableRawPointer(pUnk)
            return S_OK
        default:
            ppvObject.pointee = nil
            return E_NOINTERFACE
        }
    },
    AddRef: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: impl_EventHandler_1_IInspectable.WithTrailingObjects.self, capacity: 1)
        _ = pinstance.pointee.container.retain()
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeUnretainedValue()))
        return __res;
    },
    Release: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: impl_EventHandler_1_IInspectable.WithTrailingObjects.self, capacity: 1)
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeRetainedValue()))
        return __res;
    },
    Invoke: {
        (pThis, _ sender : Optional<UnsafeMutablePointer<CWinRT.IInspectable>>, _ args : Optional<UnsafeMutablePointer<CWinRT.IInspectable>>) in
        guard let self = impl_EventHandler_1_IInspectable.from_impl_EventHandler_1_IInspectable(pThis) else {
            return E_INVALIDARG
        }
        do {
            let _ret : Void = try self.Invoke(sender: WinRT.Object(plok: WinRT.IInspectable(sender)), args: WinRT.Object(plok: WinRT.IInspectable(args)))
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
        public var self_ref: impl_EventHandler_1_IInspectable? = nil
    }
    private struct WithTrailingObjects {
        public var interface_struct: _cg_CWindows_CFoundation_IEventHandler_1_IInspectable
        public var container: Unmanaged<Container>
    }
    private var instance: WithTrailingObjects

    private var _cb : Optional<(Optional<WinRT.Object>, Optional<WinRT.Object>) throws -> Void>
    public init(cb : Optional<(Optional<WinRT.Object>, Optional<WinRT.Object>) throws -> Void> = nil) {
        _cb = cb
        self.instance = WithTrailingObjects(interface_struct: _cg_CWindows_CFoundation_IEventHandler_1_IInspectable(lpVtbl: &Self.vtable), container: Unmanaged<Container>.passRetained(Container()))
        self.instance.container.takeUnretainedValue().self_ref = self
    }
    private static func from_impl_EventHandler_1_IInspectable(_ pUnk: UnsafeMutableRawPointer?) -> impl_EventHandler_1_IInspectable? {
        return pUnk?.bindMemory(to: impl_EventHandler_1_IInspectable.WithTrailingObjects.self, capacity: 1).pointee.container.takeUnretainedValue().self_ref
    }

    open func Invoke(sender : Optional<WinRT.Object>, args : Optional<WinRT.Object>) throws -> Void {
        if let cb = _cb {
            return try cb(sender, args)
        }
    }
    public func Interface() -> ClosedGenerics.IEventHandler_1_IInspectable {
        return withUnsafeMutablePointer(to: &self.instance.interface_struct) {
            ClosedGenerics.IEventHandler_1_IInspectable(UnsafeMutableRawPointer($0))
        }
    }
}
// wrap delegate type
open class wrap_EventHandler_1_IInspectable
{
    private var _self : ClosedGenerics.IEventHandler_1_IInspectable;
    public init(plok: ClosedGenerics.IEventHandler_1_IInspectable?) throws {
        _self = plok!
    }
    public func Invoke(sender : Optional<WinRT.Object>, args : Optional<WinRT.Object>) throws -> Void {
        return try _self.Invoke(sender: sender!.GetInterface(), args: args!.GetInterface());
    }
    public func Interface() -> ClosedGenerics.IEventHandler_1_IInspectable {
        return _self
    }
}
// closed interface type
public class IMap_2_HSTRING_IInspectable
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x1b0d3570, Data2: 0x0877, Data3 : 0x5ec2, Data4 : (0x8a, 0x2c, 0x3b, 0x95, 0x39, 0x50, 0x6a, 0xca)) }
// method not needed: Lookup
// method not needed: get_Size
// method not needed: HasKey
// method not needed: GetView
// method not needed: Insert
// method not needed: Remove
// method not needed: Clear
} // IMap_2_HSTRING_IInspectable
// closed interface type
public class IMapView_2_HSTRING_IInspectable
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xbb78502a, Data2: 0xf79d, Data3 : 0x54fa, Data4 : (0x92, 0xc9, 0x90, 0xc5, 0x03, 0x9f, 0xdf, 0x7e)) }
// method not needed: Lookup
// method not needed: get_Size
// method not needed: HasKey
// method not needed: Split
} // IMapView_2_HSTRING_IInspectable
// closed interface type
public class IMapView_2_HSTRING_HSTRING
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xac7f26f2, Data2: 0xfeb7, Data3 : 0x5b2a, Data4 : (0x8a, 0xc4, 0x34, 0x5b, 0xc6, 0x2c, 0xae, 0xde)) }
// method not needed: Lookup
// method not needed: get_Size
// method not needed: HasKey
// method not needed: Split
} // IMapView_2_HSTRING_HSTRING
// closed interface type
public class IVectorView_1_HSTRING
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x2f13c006, Data2: 0xa03a, Data3 : 0x5f69, Data4 : (0xb0, 0x90, 0x75, 0xa4, 0x3e, 0x33, 0x42, 0x3e)) }
// method not needed: GetAt
// method not needed: get_Size
// method not needed: IndexOf
// method not needed: GetMany
} // IVectorView_1_HSTRING
}
