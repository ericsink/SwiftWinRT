// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;
import CWindowsApp;
@_spi(IUnknown) import WinRT;

extension ClosedGenerics {
// closed interface type
public class IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xc4dc524f, Data2: 0x9095, Data3 : 0x56f2, Data4 : (0x9a, 0xcf, 0xe1, 0x0f, 0xfa, 0x60, 0x0f, 0xcb)) }
    // [IsSpecialName] void put_Completed(Windows.Foundation.AsyncOperationCompletedHandler<Microsoft.Windows.System.Power.EffectivePowerMode>)
    private func _n_put_Completed(_ handler : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode>>) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.put_Completed(pThis, handler))
        }
    }
    public func put_Completed(handler : Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode>) throws -> Void {
        try self._n_put_Completed(RawPointer(handler));
    }
    // [IsSpecialName] Windows.Foundation.AsyncOperationCompletedHandler<Microsoft.Windows.System.Power.EffectivePowerMode> get_Completed()
    private func _n_get_Completed(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode>>>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_Completed(pThis, __presult))
        }
    }
    public func get_Completed() throws -> Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode> {
        var __result : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode>> = nil;
        try self._n_get_Completed(&__result);
        return ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode(consuming: __result);
    }
    // Microsoft.Windows.System.Power.EffectivePowerMode GetResults()
    private func _n_GetResults(_ __presult: UnsafeMutablePointer<_q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.GetResults(pThis, __presult))
        }
    }
    public func GetResults() throws -> Microsoft.Windows.System.Power.EffectivePowerMode {
        var __result : _q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode = _q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode_BatterySaver;
        try self._n_GetResults(&__result);
        return __result;
    }
    public var Completed : Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode> {
        get throws {
            return try get_Completed();
        }
    }
} // IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode
// closed generic delegate type
public class IAsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x897713ea, Data2: 0x1f95, Data3 : 0x5c1b, Data4 : (0xa2, 0x4b, 0x93, 0x41, 0xaa, 0xbc, 0x74, 0x3a)) }
    // [IsSpecialName] void Invoke(Windows.Foundation.IAsyncOperation<Microsoft.Windows.System.Power.EffectivePowerMode>, Windows.Foundation.AsyncStatus)
    private func _n_Invoke(_ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode>>, _ asyncStatus : _q_CWindows_CFoundation_CAsyncStatus) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Invoke(pThis, asyncInfo, asyncStatus))
        }
    }
    public func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        try self._n_Invoke(RawPointer(asyncInfo), asyncStatus);
    }
} // IAsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode
// impl delegate type
open class AsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode
{
    private static var vtable: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerModeVtbl = .init(
    QueryInterface: {
        guard let pUnk = $0, let riid = $1, let ppvObject = $2 else {
            return E_INVALIDARG
        }
        switch riid.pointee {
        case IUnknown.IID, ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode.IID:
            _ = pUnk.pointee.lpVtbl.pointee.AddRef(pUnk)
            ppvObject.pointee = UnsafeMutableRawPointer(pUnk)
            return S_OK
        default:
            ppvObject.pointee = nil
            return E_NOINTERFACE
        }
    },
    AddRef: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: AsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode.WithTrailingObjects.self, capacity: 1)
        _ = pinstance.pointee.container.retain()
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeUnretainedValue()))
        return __res;
    },
    Release: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: AsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode.WithTrailingObjects.self, capacity: 1)
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeRetainedValue()))
        return __res;
    },
    Invoke: {
        (pThis, _ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode>>, _ asyncStatus : _q_CWindows_CFoundation_CAsyncStatus) in
        guard let self = AsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode.from_AsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode(pThis) else {
            return E_INVALIDARG
        }
        do {
            let _ret : Void = try self.Invoke(asyncInfo: ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode(asyncInfo), asyncStatus: asyncStatus)
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
        public var self_ref: AsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode? = nil
    }
    private struct WithTrailingObjects {
        public var interface_struct: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode
        public var container: Unmanaged<Container>
    }
    private var instance: WithTrailingObjects

    private var _cb : Optional<(Optional<ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode>, Windows.Foundation.AsyncStatus) throws -> Void>
    public init(cb : Optional<(Optional<ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode>, Windows.Foundation.AsyncStatus) throws -> Void> = nil) {
        _cb = cb
        self.instance = WithTrailingObjects(interface_struct: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode(lpVtbl: &Self.vtable), container: Unmanaged<Container>.passRetained(Container()))
        self.instance.container.takeUnretainedValue().self_ref = self
    }
    private static func from_AsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode(_ pUnk: UnsafeMutableRawPointer?) -> AsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode? {
        return pUnk?.bindMemory(to: AsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode.WithTrailingObjects.self, capacity: 1).pointee.container.takeUnretainedValue().self_ref
    }

    open func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        if let cb = _cb {
            try cb(asyncInfo, asyncStatus)
        }
    }
    public func Interface() -> ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode {
        return withUnsafeMutablePointer(to: &self.instance.interface_struct) {
            ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode(UnsafeMutableRawPointer($0))
        }
    }
}
}
extension ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode : WinRT.Future {
    private final class MyCompletedHandler: ClosedGenerics.AsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode {
        private var hEvent: HANDLE
        public init(signal event: HANDLE) {
            self.hEvent = event
            super.init()
        }
        override func Invoke(asyncInfo: ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode?,
            asyncStatus: Windows.Foundation.AsyncStatus) throws {
            _ = SetEvent(self.hEvent)
        }
}
        public func get() throws -> Microsoft.Windows.System.Power.EffectivePowerMode {
            let info: Windows.Foundation.IAsyncInfo = try QueryInterface()
            if try info.get_Status() == Windows.Foundation.AsyncStatus.Started {
            let event: HANDLE =
            CreateEventW(nil, /*bManualReset=*/true, /*DefaultValue=*/false, nil)
            // TODO(compnerd) validate event
            defer { _ = CloseHandle(event) }
            let completion: ClosedGenerics.AsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode =
            MyCompletedHandler(signal: event)
            try withExtendedLifetime(completion) {
            try self.put_Completed(handler: completion.Interface())
            _ = WaitForSingleObject(event, INFINITE)
            }
        }
        return try self.GetResults();
        }
}
