// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;
@_spi(IUnknown) import WinRT;
import CWindowsSdk;

extension ClosedGenerics {
// closed generic delegate type
public class ITypedEventHandler_2__q_CWindows_CWeb_CHttp_CFilters_CHttpBaseProtocolFilter__q_CWindows_CWeb_CHttp_CFilters_CHttpServerCustomValidationRequestedEventArgs
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xed0260c6, Data2: 0x41f2, Data3 : 0x5a04, Data4 : (0x9a, 0x8b, 0x29, 0x30, 0xd7, 0xff, 0x8a, 0x9e)) }
    // [IsSpecialName] void Invoke(Windows.Web.Http.Filters.HttpBaseProtocolFilter, Windows.Web.Http.Filters.HttpServerCustomValidationRequestedEventArgs)
    private func _n_Invoke(_ sender : Optional<UnsafeMutablePointer<_q_CWindows_CWeb_CHttp_CFilters_CIHttpBaseProtocolFilter>>, _ args : Optional<UnsafeMutablePointer<_q_CWindows_CWeb_CHttp_CFilters_CIHttpServerCustomValidationRequestedEventArgs>>) throws {
        return try perform(as: _cg_CWindows_CFoundation_ITypedEventHandler_2__q_CWindows_CWeb_CHttp_CFilters_CHttpBaseProtocolFilter__q_CWindows_CWeb_CHttp_CFilters_CHttpServerCustomValidationRequestedEventArgs.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Invoke(pThis, sender, args))
        }
    }
    public func Invoke(sender : Optional<Windows.Web.Http.Filters.IHttpBaseProtocolFilter>, args : Optional<Windows.Web.Http.Filters.IHttpServerCustomValidationRequestedEventArgs>) throws -> Void {
        try self._n_Invoke(RawPointer(sender), RawPointer(args));
    }
} // ITypedEventHandler_2__q_CWindows_CWeb_CHttp_CFilters_CHttpBaseProtocolFilter__q_CWindows_CWeb_CHttp_CFilters_CHttpServerCustomValidationRequestedEventArgs
// impl delegate type
open class TypedEventHandler_2__q_CWindows_CWeb_CHttp_CFilters_CHttpBaseProtocolFilter__q_CWindows_CWeb_CHttp_CFilters_CHttpServerCustomValidationRequestedEventArgs
{
    private static var vtable: _cg_CWindows_CFoundation_ITypedEventHandler_2__q_CWindows_CWeb_CHttp_CFilters_CHttpBaseProtocolFilter__q_CWindows_CWeb_CHttp_CFilters_CHttpServerCustomValidationRequestedEventArgsVtbl = .init(
    QueryInterface: {
        guard let pUnk = $0, let riid = $1, let ppvObject = $2 else {
            return E_INVALIDARG
        }
        switch riid.pointee {
        case IUnknown.IID, ClosedGenerics.ITypedEventHandler_2__q_CWindows_CWeb_CHttp_CFilters_CHttpBaseProtocolFilter__q_CWindows_CWeb_CHttp_CFilters_CHttpServerCustomValidationRequestedEventArgs.IID:
            _ = pUnk.pointee.lpVtbl.pointee.AddRef(pUnk)
            ppvObject.pointee = UnsafeMutableRawPointer(pUnk)
            return S_OK
        default:
            ppvObject.pointee = nil
            return E_NOINTERFACE
        }
    },
    AddRef: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: TypedEventHandler_2__q_CWindows_CWeb_CHttp_CFilters_CHttpBaseProtocolFilter__q_CWindows_CWeb_CHttp_CFilters_CHttpServerCustomValidationRequestedEventArgs.WithTrailingObjects.self, capacity: 1)
        _ = pinstance.pointee.container.retain()
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeUnretainedValue()))
        return __res;
    },
    Release: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: TypedEventHandler_2__q_CWindows_CWeb_CHttp_CFilters_CHttpBaseProtocolFilter__q_CWindows_CWeb_CHttp_CFilters_CHttpServerCustomValidationRequestedEventArgs.WithTrailingObjects.self, capacity: 1)
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeRetainedValue()))
        return __res;
    },
    Invoke: {
        (pThis, _ sender : Optional<UnsafeMutablePointer<_q_CWindows_CWeb_CHttp_CFilters_CIHttpBaseProtocolFilter>>, _ args : Optional<UnsafeMutablePointer<_q_CWindows_CWeb_CHttp_CFilters_CIHttpServerCustomValidationRequestedEventArgs>>) in
        guard let self = TypedEventHandler_2__q_CWindows_CWeb_CHttp_CFilters_CHttpBaseProtocolFilter__q_CWindows_CWeb_CHttp_CFilters_CHttpServerCustomValidationRequestedEventArgs.from_TypedEventHandler_2__q_CWindows_CWeb_CHttp_CFilters_CHttpBaseProtocolFilter__q_CWindows_CWeb_CHttp_CFilters_CHttpServerCustomValidationRequestedEventArgs(pThis) else {
            return E_INVALIDARG
        }
        do {
            let _ret : Void = try self.Invoke(sender: Windows.Web.Http.Filters.HttpBaseProtocolFilter(plok: Windows.Web.Http.Filters.IHttpBaseProtocolFilter(sender)), args: Windows.Web.Http.Filters.HttpServerCustomValidationRequestedEventArgs(plok: Windows.Web.Http.Filters.IHttpServerCustomValidationRequestedEventArgs(args)))
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
        public var self_ref: TypedEventHandler_2__q_CWindows_CWeb_CHttp_CFilters_CHttpBaseProtocolFilter__q_CWindows_CWeb_CHttp_CFilters_CHttpServerCustomValidationRequestedEventArgs? = nil
    }
    private struct WithTrailingObjects {
        public var interface_struct: _cg_CWindows_CFoundation_ITypedEventHandler_2__q_CWindows_CWeb_CHttp_CFilters_CHttpBaseProtocolFilter__q_CWindows_CWeb_CHttp_CFilters_CHttpServerCustomValidationRequestedEventArgs
        public var container: Unmanaged<Container>
    }
    private var instance: WithTrailingObjects

    private var _cb : Optional<(Optional<Windows.Web.Http.Filters.HttpBaseProtocolFilter>, Optional<Windows.Web.Http.Filters.HttpServerCustomValidationRequestedEventArgs>) throws -> Void>
    public init(cb : Optional<(Optional<Windows.Web.Http.Filters.HttpBaseProtocolFilter>, Optional<Windows.Web.Http.Filters.HttpServerCustomValidationRequestedEventArgs>) throws -> Void> = nil) {
        _cb = cb
        self.instance = WithTrailingObjects(interface_struct: _cg_CWindows_CFoundation_ITypedEventHandler_2__q_CWindows_CWeb_CHttp_CFilters_CHttpBaseProtocolFilter__q_CWindows_CWeb_CHttp_CFilters_CHttpServerCustomValidationRequestedEventArgs(lpVtbl: &Self.vtable), container: Unmanaged<Container>.passRetained(Container()))
        self.instance.container.takeUnretainedValue().self_ref = self
    }
    private static func from_TypedEventHandler_2__q_CWindows_CWeb_CHttp_CFilters_CHttpBaseProtocolFilter__q_CWindows_CWeb_CHttp_CFilters_CHttpServerCustomValidationRequestedEventArgs(_ pUnk: UnsafeMutableRawPointer?) -> TypedEventHandler_2__q_CWindows_CWeb_CHttp_CFilters_CHttpBaseProtocolFilter__q_CWindows_CWeb_CHttp_CFilters_CHttpServerCustomValidationRequestedEventArgs? {
        return pUnk?.bindMemory(to: TypedEventHandler_2__q_CWindows_CWeb_CHttp_CFilters_CHttpBaseProtocolFilter__q_CWindows_CWeb_CHttp_CFilters_CHttpServerCustomValidationRequestedEventArgs.WithTrailingObjects.self, capacity: 1).pointee.container.takeUnretainedValue().self_ref
    }

    open func Invoke(sender : Optional<Windows.Web.Http.Filters.HttpBaseProtocolFilter>, args : Optional<Windows.Web.Http.Filters.HttpServerCustomValidationRequestedEventArgs>) throws -> Void {
        if let cb = _cb {
            return try cb(sender, args)
        }
    }
    public func Interface() -> ClosedGenerics.ITypedEventHandler_2__q_CWindows_CWeb_CHttp_CFilters_CHttpBaseProtocolFilter__q_CWindows_CWeb_CHttp_CFilters_CHttpServerCustomValidationRequestedEventArgs {
        return withUnsafeMutablePointer(to: &self.instance.interface_struct) {
            ClosedGenerics.ITypedEventHandler_2__q_CWindows_CWeb_CHttp_CFilters_CHttpBaseProtocolFilter__q_CWindows_CWeb_CHttp_CFilters_CHttpServerCustomValidationRequestedEventArgs(UnsafeMutableRawPointer($0))
        }
    }
}
// wrap delegate type
open class foo_TypedEventHandler_2__q_CWindows_CWeb_CHttp_CFilters_CHttpBaseProtocolFilter__q_CWindows_CWeb_CHttp_CFilters_CHttpServerCustomValidationRequestedEventArgs
{
    private var _self : ClosedGenerics.ITypedEventHandler_2__q_CWindows_CWeb_CHttp_CFilters_CHttpBaseProtocolFilter__q_CWindows_CWeb_CHttp_CFilters_CHttpServerCustomValidationRequestedEventArgs;
    public init(plok: ClosedGenerics.ITypedEventHandler_2__q_CWindows_CWeb_CHttp_CFilters_CHttpBaseProtocolFilter__q_CWindows_CWeb_CHttp_CFilters_CHttpServerCustomValidationRequestedEventArgs?) throws {
        _self = plok!
    }
    public func Invoke(sender : Optional<Windows.Web.Http.Filters.HttpBaseProtocolFilter>, args : Optional<Windows.Web.Http.Filters.HttpServerCustomValidationRequestedEventArgs>) throws -> Void {
        return try _self.Invoke(sender: sender!.Interface(), args: args!.Interface());
    }
    public func Interface() -> ClosedGenerics.ITypedEventHandler_2__q_CWindows_CWeb_CHttp_CFilters_CHttpBaseProtocolFilter__q_CWindows_CWeb_CHttp_CFilters_CHttpServerCustomValidationRequestedEventArgs {
        return _self
    }
}
}
