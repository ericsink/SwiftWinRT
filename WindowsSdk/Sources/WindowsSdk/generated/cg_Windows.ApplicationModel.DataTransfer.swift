// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;
@_spi(IUnknown) import WinRT;
import CWindowsSdk;

extension ClosedGenerics {
// closed interface type
public class IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xa16f2d07, Data2: 0xead3, Data3 : 0x53e4, Data4 : (0x94, 0x90, 0x75, 0xbd, 0xba, 0xeb, 0x7a, 0x5b)) }
    // [IsSpecialName] void put_Completed(Windows.Foundation.AsyncOperationCompletedHandler<Windows.ApplicationModel.DataTransfer.DataPackage>)
    private func _n_put_Completed(_ handler : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage>>) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.put_Completed(pThis, handler))
        }
    }
    public func put_Completed(handler : Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage>) throws -> Void {
        try self._n_put_Completed(RawPointer(handler));
    }
    // [IsSpecialName] Windows.Foundation.AsyncOperationCompletedHandler<Windows.ApplicationModel.DataTransfer.DataPackage> get_Completed()
    private func _n_get_Completed(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage>>>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_Completed(pThis, __presult))
        }
    }
    public func get_Completed() throws -> Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage> {
        var __result : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage>> = nil;
        try self._n_get_Completed(&__result);
        return ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage(consuming: __result);
    }
    // Windows.ApplicationModel.DataTransfer.DataPackage GetResults()
    private func _n_GetResults(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CWindows_CApplicationModel_CDataTransfer_CIDataPackage>>>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.GetResults(pThis, __presult))
        }
    }
    public func GetResults() throws -> Optional<Windows.ApplicationModel.DataTransfer.IDataPackage> {
        var __result : Optional<UnsafeMutablePointer<_q_CWindows_CApplicationModel_CDataTransfer_CIDataPackage>> = nil;
        try self._n_GetResults(&__result);
        return Windows.ApplicationModel.DataTransfer.IDataPackage(consuming: __result);
    }
    public var Completed : Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage> {
        get throws {
            return try get_Completed();
        }
    }
} // IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage
// closed generic delegate type
public class IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xa93a3b99, Data2: 0xe946, Data3 : 0x57ce, Data4 : (0xaa, 0xd9, 0xc2, 0x3d, 0x13, 0x8c, 0x35, 0x3e)) }
    // [IsSpecialName] void Invoke(Windows.Foundation.IAsyncOperation<Windows.ApplicationModel.DataTransfer.DataPackage>, Windows.Foundation.AsyncStatus)
    private func _n_Invoke(_ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage>>, _ asyncStatus : _q_CWindows_CFoundation_CAsyncStatus) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Invoke(pThis, asyncInfo, asyncStatus))
        }
    }
    public func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        try self._n_Invoke(RawPointer(asyncInfo), asyncStatus);
    }
} // IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage
// impl delegate type
open class AsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage
{
    private static var vtable: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageVtbl = .init(
    QueryInterface: {
        guard let pUnk = $0, let riid = $1, let ppvObject = $2 else {
            return E_INVALIDARG
        }
        switch riid.pointee {
        case IUnknown.IID, ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage.IID:
            _ = pUnk.pointee.lpVtbl.pointee.AddRef(pUnk)
            ppvObject.pointee = UnsafeMutableRawPointer(pUnk)
            return S_OK
        default:
            ppvObject.pointee = nil
            return E_NOINTERFACE
        }
    },
    AddRef: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: AsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage.WithTrailingObjects.self, capacity: 1)
        _ = pinstance.pointee.container.retain()
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeUnretainedValue()))
        return __res;
    },
    Release: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: AsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage.WithTrailingObjects.self, capacity: 1)
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeRetainedValue()))
        return __res;
    },
    Invoke: {
        (pThis, _ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage>>, _ asyncStatus : _q_CWindows_CFoundation_CAsyncStatus) in
        guard let self = AsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage.from_AsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage(pThis) else {
            return E_INVALIDARG
        }
        do {
            let _ret : Void = try self.Invoke(asyncInfo: ClosedGenerics.IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage(asyncInfo), asyncStatus: asyncStatus)
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
        public var self_ref: AsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage? = nil
    }
    private struct WithTrailingObjects {
        public var interface_struct: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage
        public var container: Unmanaged<Container>
    }
    private var instance: WithTrailingObjects

    private var _cb : Optional<(Optional<ClosedGenerics.IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage>, Windows.Foundation.AsyncStatus) throws -> Void>
    public init(cb : Optional<(Optional<ClosedGenerics.IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage>, Windows.Foundation.AsyncStatus) throws -> Void> = nil) {
        _cb = cb
        self.instance = WithTrailingObjects(interface_struct: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage(lpVtbl: &Self.vtable), container: Unmanaged<Container>.passRetained(Container()))
        self.instance.container.takeUnretainedValue().self_ref = self
    }
    private static func from_AsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage(_ pUnk: UnsafeMutableRawPointer?) -> AsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage? {
        return pUnk?.bindMemory(to: AsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage.WithTrailingObjects.self, capacity: 1).pointee.container.takeUnretainedValue().self_ref
    }

    open func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        if let cb = _cb {
            return try cb(asyncInfo, asyncStatus)
        }
    }
    public func Interface() -> ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage {
        return withUnsafeMutablePointer(to: &self.instance.interface_struct) {
            ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage(UnsafeMutableRawPointer($0))
        }
    }
}
// wrap delegate type
open class foo_AsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage
{
    private var _self : ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage;
    public init(plok: ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage?) throws {
        _self = plok!
    }
    public func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        return try _self.Invoke(asyncInfo: asyncInfo, asyncStatus: asyncStatus);
    }
    public func Interface() -> ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage {
        return _self
    }
}
// closed interface type
public class IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x8b98aea9, Data2: 0x64f0, Data3 : 0x5672, Data4 : (0xb3, 0x0e, 0xdf, 0xd9, 0xc2, 0xe4, 0xf6, 0xfe)) }
    // [IsSpecialName] void put_Completed(Windows.Foundation.AsyncOperationCompletedHandler<Windows.ApplicationModel.DataTransfer.DataPackageOperation>)
    private func _n_put_Completed(_ handler : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation>>) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.put_Completed(pThis, handler))
        }
    }
    public func put_Completed(handler : Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation>) throws -> Void {
        try self._n_put_Completed(RawPointer(handler));
    }
    // [IsSpecialName] Windows.Foundation.AsyncOperationCompletedHandler<Windows.ApplicationModel.DataTransfer.DataPackageOperation> get_Completed()
    private func _n_get_Completed(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation>>>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_Completed(pThis, __presult))
        }
    }
    public func get_Completed() throws -> Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation> {
        var __result : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation>> = nil;
        try self._n_get_Completed(&__result);
        return ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation(consuming: __result);
    }
    // Windows.ApplicationModel.DataTransfer.DataPackageOperation GetResults()
    private func _n_GetResults(_ __presult: UnsafeMutablePointer<_q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.GetResults(pThis, __presult))
        }
    }
    public func GetResults() throws -> Windows.ApplicationModel.DataTransfer.DataPackageOperation {
        var __result : _q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation = _q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation_None;
        try self._n_GetResults(&__result);
        return __result;
    }
    public var Completed : Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation> {
        get throws {
            return try get_Completed();
        }
    }
} // IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation
// closed generic delegate type
public class IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xadd21d46, Data2: 0x17df, Data3 : 0x5a43, Data4 : (0xa6, 0x85, 0x32, 0x62, 0xfc, 0xe8, 0x46, 0x43)) }
    // [IsSpecialName] void Invoke(Windows.Foundation.IAsyncOperation<Windows.ApplicationModel.DataTransfer.DataPackageOperation>, Windows.Foundation.AsyncStatus)
    private func _n_Invoke(_ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation>>, _ asyncStatus : _q_CWindows_CFoundation_CAsyncStatus) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Invoke(pThis, asyncInfo, asyncStatus))
        }
    }
    public func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        try self._n_Invoke(RawPointer(asyncInfo), asyncStatus);
    }
} // IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation
// impl delegate type
open class AsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation
{
    private static var vtable: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperationVtbl = .init(
    QueryInterface: {
        guard let pUnk = $0, let riid = $1, let ppvObject = $2 else {
            return E_INVALIDARG
        }
        switch riid.pointee {
        case IUnknown.IID, ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation.IID:
            _ = pUnk.pointee.lpVtbl.pointee.AddRef(pUnk)
            ppvObject.pointee = UnsafeMutableRawPointer(pUnk)
            return S_OK
        default:
            ppvObject.pointee = nil
            return E_NOINTERFACE
        }
    },
    AddRef: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: AsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation.WithTrailingObjects.self, capacity: 1)
        _ = pinstance.pointee.container.retain()
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeUnretainedValue()))
        return __res;
    },
    Release: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: AsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation.WithTrailingObjects.self, capacity: 1)
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeRetainedValue()))
        return __res;
    },
    Invoke: {
        (pThis, _ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation>>, _ asyncStatus : _q_CWindows_CFoundation_CAsyncStatus) in
        guard let self = AsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation.from_AsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation(pThis) else {
            return E_INVALIDARG
        }
        do {
            let _ret : Void = try self.Invoke(asyncInfo: ClosedGenerics.IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation(asyncInfo), asyncStatus: asyncStatus)
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
        public var self_ref: AsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation? = nil
    }
    private struct WithTrailingObjects {
        public var interface_struct: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation
        public var container: Unmanaged<Container>
    }
    private var instance: WithTrailingObjects

    private var _cb : Optional<(Optional<ClosedGenerics.IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation>, Windows.Foundation.AsyncStatus) throws -> Void>
    public init(cb : Optional<(Optional<ClosedGenerics.IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation>, Windows.Foundation.AsyncStatus) throws -> Void> = nil) {
        _cb = cb
        self.instance = WithTrailingObjects(interface_struct: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation(lpVtbl: &Self.vtable), container: Unmanaged<Container>.passRetained(Container()))
        self.instance.container.takeUnretainedValue().self_ref = self
    }
    private static func from_AsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation(_ pUnk: UnsafeMutableRawPointer?) -> AsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation? {
        return pUnk?.bindMemory(to: AsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation.WithTrailingObjects.self, capacity: 1).pointee.container.takeUnretainedValue().self_ref
    }

    open func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        if let cb = _cb {
            return try cb(asyncInfo, asyncStatus)
        }
    }
    public func Interface() -> ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation {
        return withUnsafeMutablePointer(to: &self.instance.interface_struct) {
            ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation(UnsafeMutableRawPointer($0))
        }
    }
}
// wrap delegate type
open class foo_AsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation
{
    private var _self : ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation;
    public init(plok: ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation?) throws {
        _self = plok!
    }
    public func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        return try _self.Invoke(asyncInfo: asyncInfo, asyncStatus: asyncStatus);
    }
    public func Interface() -> ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation {
        return _self
    }
}
}
extension ClosedGenerics.IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage : WinRT.Future {
    private final class MyCompletedHandler: ClosedGenerics.AsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage {
        private var hEvent: HANDLE
        public init(signal event: HANDLE) {
            self.hEvent = event
            super.init()
        }
        override func Invoke(asyncInfo: ClosedGenerics.IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage?,
            asyncStatus: Windows.Foundation.AsyncStatus) throws {
            _ = SetEvent(self.hEvent)
        }
}
        public func get() throws -> Optional<Windows.ApplicationModel.DataTransfer.IDataPackage> {
            let info: Windows.Foundation.IAsyncInfo = try QueryInterface()
            if try info.get_Status() == Windows.Foundation.AsyncStatus.Started {
            let event: HANDLE =
            CreateEventW(nil, /*bManualReset=*/true, /*DefaultValue=*/false, nil)
            // TODO(compnerd) validate event
            defer { _ = CloseHandle(event) }
            let completion: ClosedGenerics.AsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackage =
            MyCompletedHandler(signal: event)
            try withExtendedLifetime(completion) {
            try self.put_Completed(handler: completion.Interface())
            _ = WaitForSingleObject(event, INFINITE)
            }
        }
        return try self.GetResults();
        }
}
extension ClosedGenerics.IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation : WinRT.Future {
    private final class MyCompletedHandler: ClosedGenerics.AsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation {
        private var hEvent: HANDLE
        public init(signal event: HANDLE) {
            self.hEvent = event
            super.init()
        }
        override func Invoke(asyncInfo: ClosedGenerics.IAsyncOperation_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation?,
            asyncStatus: Windows.Foundation.AsyncStatus) throws {
            _ = SetEvent(self.hEvent)
        }
}
        public func get() throws -> Windows.ApplicationModel.DataTransfer.DataPackageOperation {
            let info: Windows.Foundation.IAsyncInfo = try QueryInterface()
            if try info.get_Status() == Windows.Foundation.AsyncStatus.Started {
            let event: HANDLE =
            CreateEventW(nil, /*bManualReset=*/true, /*DefaultValue=*/false, nil)
            // TODO(compnerd) validate event
            defer { _ = CloseHandle(event) }
            let completion: ClosedGenerics.AsyncOperationCompletedHandler_1__q_CWindows_CApplicationModel_CDataTransfer_CDataPackageOperation =
            MyCompletedHandler(signal: event)
            try withExtendedLifetime(completion) {
            try self.put_Completed(handler: completion.Interface())
            _ = WaitForSingleObject(event, INFINITE)
            }
        }
        return try self.GetResults();
        }
}
