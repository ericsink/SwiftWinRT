// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;
@_spi(IUnknown) import WinRT;
import CWindowsSdk;

extension ClosedGenerics {
// closed interface type
public class IAsyncOperation_1__q_CWindows_CDevices_CGeolocation_CGeopoint
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x3723e070, Data2: 0xc2ae, Data3 : 0x538f, Data4 : (0x84, 0x6e, 0x0f, 0x9d, 0x28, 0x03, 0x10, 0xc0)) }
    // [IsSpecialName] void put_Completed(Windows.Foundation.AsyncOperationCompletedHandler<Windows.Devices.Geolocation.Geopoint>)
    private func _n_put_Completed(_ handler : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint>>) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__q_CWindows_CDevices_CGeolocation_CGeopoint.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.put_Completed(pThis, handler))
        }
    }
    public func put_Completed(handler : Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint>) throws -> Void {
        try self._n_put_Completed(RawPointer(handler));
    }
    // [IsSpecialName] Windows.Foundation.AsyncOperationCompletedHandler<Windows.Devices.Geolocation.Geopoint> get_Completed()
    private func _n_get_Completed(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint>>>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__q_CWindows_CDevices_CGeolocation_CGeopoint.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_Completed(pThis, __presult))
        }
    }
    public func get_Completed() throws -> Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint> {
        var __result : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint>> = nil;
        try self._n_get_Completed(&__result);
        return ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint(consuming: __result);
    }
    // Windows.Devices.Geolocation.Geopoint GetResults()
    private func _n_GetResults(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CWindows_CDevices_CGeolocation_CIGeopoint>>>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__q_CWindows_CDevices_CGeolocation_CGeopoint.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.GetResults(pThis, __presult))
        }
    }
    public func GetResults() throws -> Optional<Windows.Devices.Geolocation.IGeopoint> {
        var __result : Optional<UnsafeMutablePointer<_q_CWindows_CDevices_CGeolocation_CIGeopoint>> = nil;
        try self._n_GetResults(&__result);
        return Windows.Devices.Geolocation.IGeopoint(consuming: __result);
    }
    public var Completed : Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint> {
        get throws {
            return try get_Completed();
        }
    }
} // IAsyncOperation_1__q_CWindows_CDevices_CGeolocation_CGeopoint
// closed generic delegate type
public class IAsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x4b5f2f60, Data2: 0x19b1, Data3 : 0x5566, Data4 : (0x9d, 0xf6, 0x92, 0xa4, 0x22, 0x35, 0xcb, 0xf9)) }
    // [IsSpecialName] void Invoke(Windows.Foundation.IAsyncOperation<Windows.Devices.Geolocation.Geopoint>, Windows.Foundation.AsyncStatus)
    private func _n_Invoke(_ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperation_1__q_CWindows_CDevices_CGeolocation_CGeopoint>>, _ asyncStatus : _q_CWindows_CFoundation_CAsyncStatus) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Invoke(pThis, asyncInfo, asyncStatus))
        }
    }
    public func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1__q_CWindows_CDevices_CGeolocation_CGeopoint>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        try self._n_Invoke(RawPointer(asyncInfo), asyncStatus);
    }
} // IAsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint
// impl delegate type
open class AsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint
{
    private static var vtable: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopointVtbl = .init(
    QueryInterface: {
        guard let pUnk = $0, let riid = $1, let ppvObject = $2 else {
            return E_INVALIDARG
        }
        switch riid.pointee {
        case IUnknown.IID, ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint.IID:
            _ = pUnk.pointee.lpVtbl.pointee.AddRef(pUnk)
            ppvObject.pointee = UnsafeMutableRawPointer(pUnk)
            return S_OK
        default:
            ppvObject.pointee = nil
            return E_NOINTERFACE
        }
    },
    AddRef: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: AsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint.WithTrailingObjects.self, capacity: 1)
        _ = pinstance.pointee.container.retain()
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeUnretainedValue()))
        return __res;
    },
    Release: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: AsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint.WithTrailingObjects.self, capacity: 1)
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeRetainedValue()))
        return __res;
    },
    Invoke: {
        (pThis, _ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperation_1__q_CWindows_CDevices_CGeolocation_CGeopoint>>, _ asyncStatus : _q_CWindows_CFoundation_CAsyncStatus) in
        guard let self = AsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint.from_AsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint(pThis) else {
            return E_INVALIDARG
        }
        do {
            let _ret : Void = try self.Invoke(asyncInfo: ClosedGenerics.IAsyncOperation_1__q_CWindows_CDevices_CGeolocation_CGeopoint(asyncInfo), asyncStatus: asyncStatus)
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
        public var self_ref: AsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint? = nil
    }
    private struct WithTrailingObjects {
        public var interface_struct: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint
        public var container: Unmanaged<Container>
    }
    private var instance: WithTrailingObjects

    private var _cb : Optional<(Optional<ClosedGenerics.IAsyncOperation_1__q_CWindows_CDevices_CGeolocation_CGeopoint>, Windows.Foundation.AsyncStatus) throws -> Void>
    public init(cb : Optional<(Optional<ClosedGenerics.IAsyncOperation_1__q_CWindows_CDevices_CGeolocation_CGeopoint>, Windows.Foundation.AsyncStatus) throws -> Void> = nil) {
        _cb = cb
        self.instance = WithTrailingObjects(interface_struct: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint(lpVtbl: &Self.vtable), container: Unmanaged<Container>.passRetained(Container()))
        self.instance.container.takeUnretainedValue().self_ref = self
    }
    private static func from_AsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint(_ pUnk: UnsafeMutableRawPointer?) -> AsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint? {
        return pUnk?.bindMemory(to: AsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint.WithTrailingObjects.self, capacity: 1).pointee.container.takeUnretainedValue().self_ref
    }

    open func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1__q_CWindows_CDevices_CGeolocation_CGeopoint>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        if let cb = _cb {
            return try cb(asyncInfo, asyncStatus)
        }
    }
    public func Interface() -> ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint {
        return withUnsafeMutablePointer(to: &self.instance.interface_struct) {
            ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint(UnsafeMutableRawPointer($0))
        }
    }
}
// wrap delegate type
open class foo_AsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint
{
    private var _self : ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint;
    public init(plok: ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint?) throws {
        _self = plok!
    }
    public func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1__q_CWindows_CDevices_CGeolocation_CGeopoint>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        return try _self.Invoke(asyncInfo: asyncInfo, asyncStatus: asyncStatus);
    }
    public func Interface() -> ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint {
        return _self
    }
}
}
extension ClosedGenerics.IAsyncOperation_1__q_CWindows_CDevices_CGeolocation_CGeopoint : WinRT.Future {
    private final class MyCompletedHandler: ClosedGenerics.AsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint {
        private var hEvent: HANDLE
        public init(signal event: HANDLE) {
            self.hEvent = event
            super.init()
        }
        override func Invoke(asyncInfo: ClosedGenerics.IAsyncOperation_1__q_CWindows_CDevices_CGeolocation_CGeopoint?,
            asyncStatus: Windows.Foundation.AsyncStatus) throws {
            _ = SetEvent(self.hEvent)
        }
}
        public func get() throws -> Optional<Windows.Devices.Geolocation.IGeopoint> {
            let info: Windows.Foundation.IAsyncInfo = try QueryInterface()
            if try info.get_Status() == Windows.Foundation.AsyncStatus.Started {
            let event: HANDLE =
            CreateEventW(nil, /*bManualReset=*/true, /*DefaultValue=*/false, nil)
            // TODO(compnerd) validate event
            defer { _ = CloseHandle(event) }
            let completion: ClosedGenerics.AsyncOperationCompletedHandler_1__q_CWindows_CDevices_CGeolocation_CGeopoint =
            MyCompletedHandler(signal: event)
            try withExtendedLifetime(completion) {
            try self.put_Completed(handler: completion.Interface())
            _ = WaitForSingleObject(event, INFINITE)
            }
        }
        return try self.GetResults();
        }
}