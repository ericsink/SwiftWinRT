// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;
import CWindowsSdk;
@_spi(IUnknown) import WinRT;

extension ClosedGenerics {
// closed interface type
public class IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x5d144364, Data2: 0x77d7, Data3 : 0x5eca, Data4 : (0x8b, 0x09, 0x93, 0x6a, 0x69, 0x44, 0x66, 0x52)) }
    // [IsSpecialName] void put_Progress(Windows.Foundation.AsyncOperationProgressHandler<Windows.Web.Http.HttpResponseMessage,Windows.Web.Http.HttpProgress>)
    private func _n_put_Progress(_ handler : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationProgressHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress>>) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.put_Progress(pThis, handler))
        }
    }
    public func put_Progress(handler : Optional<ClosedGenerics.IAsyncOperationProgressHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress>) throws -> Void {
        try self._n_put_Progress(RawPointer(handler));
    }
    // [IsSpecialName] Windows.Foundation.AsyncOperationProgressHandler<Windows.Web.Http.HttpResponseMessage,Windows.Web.Http.HttpProgress> get_Progress()
    private func _n_get_Progress(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationProgressHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress>>>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_Progress(pThis, __presult))
        }
    }
    public func get_Progress() throws -> Optional<ClosedGenerics.IAsyncOperationProgressHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress> {
        var __result : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationProgressHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress>> = nil;
        try self._n_get_Progress(&__result);
        return ClosedGenerics.IAsyncOperationProgressHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress(consuming: __result);
    }
    // [IsSpecialName] void put_Completed(Windows.Foundation.AsyncOperationWithProgressCompletedHandler<Windows.Web.Http.HttpResponseMessage,Windows.Web.Http.HttpProgress>)
    private func _n_put_Completed(_ handler : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress>>) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.put_Completed(pThis, handler))
        }
    }
    public func put_Completed(handler : Optional<ClosedGenerics.IAsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress>) throws -> Void {
        try self._n_put_Completed(RawPointer(handler));
    }
    // [IsSpecialName] Windows.Foundation.AsyncOperationWithProgressCompletedHandler<Windows.Web.Http.HttpResponseMessage,Windows.Web.Http.HttpProgress> get_Completed()
    private func _n_get_Completed(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress>>>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_Completed(pThis, __presult))
        }
    }
    public func get_Completed() throws -> Optional<ClosedGenerics.IAsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress> {
        var __result : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress>> = nil;
        try self._n_get_Completed(&__result);
        return ClosedGenerics.IAsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress(consuming: __result);
    }
    // Windows.Web.Http.HttpResponseMessage GetResults()
    private func _n_GetResults(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CWindows_CWeb_CHttp_CIHttpResponseMessage>>>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.GetResults(pThis, __presult))
        }
    }
    public func GetResults() throws -> Optional<Windows.Web.Http.IHttpResponseMessage> {
        var __result : Optional<UnsafeMutablePointer<_q_CWindows_CWeb_CHttp_CIHttpResponseMessage>> = nil;
        try self._n_GetResults(&__result);
        return Windows.Web.Http.IHttpResponseMessage(consuming: __result);
    }
    public var Progress : Optional<ClosedGenerics.IAsyncOperationProgressHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress> {
        get throws {
            return try get_Progress();
        }
    }
    public var Completed : Optional<ClosedGenerics.IAsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress> {
        get throws {
            return try get_Completed();
        }
    }
} // IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress
// closed generic delegate type
public class IAsyncOperationProgressHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x68e4606a, Data2: 0x76ec, Data3 : 0x5816, Data4 : (0xb2, 0xfe, 0xa0, 0x4e, 0xcd, 0xe4, 0x12, 0x6a)) }
    // [IsSpecialName] void Invoke(Windows.Foundation.IAsyncOperationWithProgress<Windows.Web.Http.HttpResponseMessage,Windows.Web.Http.HttpProgress>, Windows.Web.Http.HttpProgress)
    private func _n_Invoke(_ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress>>, _ progressInfo : _q_CWindows_CWeb_CHttp_CHttpProgress) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperationProgressHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Invoke(pThis, asyncInfo, progressInfo))
        }
    }
    public func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress>, progressInfo : Windows.Web.Http.HttpProgress) throws -> Void {
        try self._n_Invoke(RawPointer(asyncInfo), progressInfo);
    }
} // IAsyncOperationProgressHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress
// impl delegate type
open class AsyncOperationProgressHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress
{
    private static var vtable: _cg_CWindows_CFoundation_IAsyncOperationProgressHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgressVtbl = .init(
    QueryInterface: {
        guard let pUnk = $0, let riid = $1, let ppvObject = $2 else {
            return E_INVALIDARG
        }
        switch riid.pointee {
        case IUnknown.IID, ClosedGenerics.IAsyncOperationProgressHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress.IID:
            _ = pUnk.pointee.lpVtbl.pointee.AddRef(pUnk)
            ppvObject.pointee = UnsafeMutableRawPointer(pUnk)
            return S_OK
        default:
            ppvObject.pointee = nil
            return E_NOINTERFACE
        }
    },
    AddRef: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: AsyncOperationProgressHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress.WithTrailingObjects.self, capacity: 1)
        _ = pinstance.pointee.container.retain()
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeUnretainedValue()))
        return __res;
    },
    Release: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: AsyncOperationProgressHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress.WithTrailingObjects.self, capacity: 1)
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeRetainedValue()))
        return __res;
    },
    Invoke: {
        (pThis, _ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress>>, _ progressInfo : _q_CWindows_CWeb_CHttp_CHttpProgress) in
        guard let self = AsyncOperationProgressHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress.from_AsyncOperationProgressHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress(pThis) else {
            return E_INVALIDARG
        }
        do {
            let _ret : Void = try self.Invoke(asyncInfo: ClosedGenerics.IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress(asyncInfo), progressInfo: progressInfo)
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
        public var self_ref: AsyncOperationProgressHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress? = nil
    }
    private struct WithTrailingObjects {
        public var interface_struct: _cg_CWindows_CFoundation_IAsyncOperationProgressHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress
        public var container: Unmanaged<Container>
    }
    private var instance: WithTrailingObjects

    private var _cb : Optional<(Optional<ClosedGenerics.IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress>, Windows.Web.Http.HttpProgress) throws -> Void>
    public init(cb : Optional<(Optional<ClosedGenerics.IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress>, Windows.Web.Http.HttpProgress) throws -> Void> = nil) {
        _cb = cb
        self.instance = WithTrailingObjects(interface_struct: _cg_CWindows_CFoundation_IAsyncOperationProgressHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress(lpVtbl: &Self.vtable), container: Unmanaged<Container>.passRetained(Container()))
        self.instance.container.takeUnretainedValue().self_ref = self
    }
    private static func from_AsyncOperationProgressHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress(_ pUnk: UnsafeMutableRawPointer?) -> AsyncOperationProgressHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress? {
        return pUnk?.bindMemory(to: AsyncOperationProgressHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress.WithTrailingObjects.self, capacity: 1).pointee.container.takeUnretainedValue().self_ref
    }

    open func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress>, progressInfo : Windows.Web.Http.HttpProgress) throws -> Void {
        if let cb = _cb {
            try cb(asyncInfo, progressInfo)
        }
    }
    public func Interface() -> ClosedGenerics.IAsyncOperationProgressHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress {
        return withUnsafeMutablePointer(to: &self.instance.interface_struct) {
            ClosedGenerics.IAsyncOperationProgressHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress(UnsafeMutableRawPointer($0))
        }
    }
}
// wrap delegate type
open class foo_AsyncOperationProgressHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress
{
    private var _self : ClosedGenerics.IAsyncOperationProgressHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress;
    public init(plok: ClosedGenerics.IAsyncOperationProgressHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress?) throws {
        _self = plok!
    }
    public func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress>, progressInfo : Windows.Web.Http.HttpProgress) throws -> Void {
        return try _self.Invoke(asyncInfo: asyncInfo, progressInfo: progressInfo);
    }
    public func Interface() -> ClosedGenerics.IAsyncOperationProgressHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress {
        return _self
    }
}
// closed generic delegate type
public class IAsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xbeadb572, Data2: 0xf9a3, Data3 : 0x5e93, Data4 : (0xb6, 0xca, 0xe3, 0x11, 0xb6, 0x59, 0x33, 0xfc)) }
    // [IsSpecialName] void Invoke(Windows.Foundation.IAsyncOperationWithProgress<Windows.Web.Http.HttpResponseMessage,Windows.Web.Http.HttpProgress>, Windows.Foundation.AsyncStatus)
    private func _n_Invoke(_ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress>>, _ asyncStatus : _q_CWindows_CFoundation_CAsyncStatus) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Invoke(pThis, asyncInfo, asyncStatus))
        }
    }
    public func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        try self._n_Invoke(RawPointer(asyncInfo), asyncStatus);
    }
} // IAsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress
// impl delegate type
open class AsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress
{
    private static var vtable: _cg_CWindows_CFoundation_IAsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgressVtbl = .init(
    QueryInterface: {
        guard let pUnk = $0, let riid = $1, let ppvObject = $2 else {
            return E_INVALIDARG
        }
        switch riid.pointee {
        case IUnknown.IID, ClosedGenerics.IAsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress.IID:
            _ = pUnk.pointee.lpVtbl.pointee.AddRef(pUnk)
            ppvObject.pointee = UnsafeMutableRawPointer(pUnk)
            return S_OK
        default:
            ppvObject.pointee = nil
            return E_NOINTERFACE
        }
    },
    AddRef: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: AsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress.WithTrailingObjects.self, capacity: 1)
        _ = pinstance.pointee.container.retain()
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeUnretainedValue()))
        return __res;
    },
    Release: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: AsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress.WithTrailingObjects.self, capacity: 1)
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeRetainedValue()))
        return __res;
    },
    Invoke: {
        (pThis, _ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress>>, _ asyncStatus : _q_CWindows_CFoundation_CAsyncStatus) in
        guard let self = AsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress.from_AsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress(pThis) else {
            return E_INVALIDARG
        }
        do {
            let _ret : Void = try self.Invoke(asyncInfo: ClosedGenerics.IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress(asyncInfo), asyncStatus: asyncStatus)
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
        public var self_ref: AsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress? = nil
    }
    private struct WithTrailingObjects {
        public var interface_struct: _cg_CWindows_CFoundation_IAsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress
        public var container: Unmanaged<Container>
    }
    private var instance: WithTrailingObjects

    private var _cb : Optional<(Optional<ClosedGenerics.IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress>, Windows.Foundation.AsyncStatus) throws -> Void>
    public init(cb : Optional<(Optional<ClosedGenerics.IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress>, Windows.Foundation.AsyncStatus) throws -> Void> = nil) {
        _cb = cb
        self.instance = WithTrailingObjects(interface_struct: _cg_CWindows_CFoundation_IAsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress(lpVtbl: &Self.vtable), container: Unmanaged<Container>.passRetained(Container()))
        self.instance.container.takeUnretainedValue().self_ref = self
    }
    private static func from_AsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress(_ pUnk: UnsafeMutableRawPointer?) -> AsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress? {
        return pUnk?.bindMemory(to: AsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress.WithTrailingObjects.self, capacity: 1).pointee.container.takeUnretainedValue().self_ref
    }

    open func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        if let cb = _cb {
            try cb(asyncInfo, asyncStatus)
        }
    }
    public func Interface() -> ClosedGenerics.IAsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress {
        return withUnsafeMutablePointer(to: &self.instance.interface_struct) {
            ClosedGenerics.IAsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress(UnsafeMutableRawPointer($0))
        }
    }
}
// wrap delegate type
open class foo_AsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress
{
    private var _self : ClosedGenerics.IAsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress;
    public init(plok: ClosedGenerics.IAsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress?) throws {
        _self = plok!
    }
    public func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        return try _self.Invoke(asyncInfo: asyncInfo, asyncStatus: asyncStatus);
    }
    public func Interface() -> ClosedGenerics.IAsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress {
        return _self
    }
}
}
extension ClosedGenerics.IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress : WinRT.Future {
    private final class MyCompletedHandler: ClosedGenerics.AsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress {
        private var hEvent: HANDLE
        public init(signal event: HANDLE) {
            self.hEvent = event
            super.init()
        }
        override func Invoke(asyncInfo: ClosedGenerics.IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress?,
            asyncStatus: Windows.Foundation.AsyncStatus) throws {
            _ = SetEvent(self.hEvent)
        }
}
        public func get() throws -> Optional<Windows.Web.Http.IHttpResponseMessage> {
            let info: Windows.Foundation.IAsyncInfo = try QueryInterface()
            if try info.get_Status() == Windows.Foundation.AsyncStatus.Started {
            let event: HANDLE =
            CreateEventW(nil, /*bManualReset=*/true, /*DefaultValue=*/false, nil)
            // TODO(compnerd) validate event
            defer { _ = CloseHandle(event) }
            let completion: ClosedGenerics.AsyncOperationWithProgressCompletedHandler_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress =
            MyCompletedHandler(signal: event)
            try withExtendedLifetime(completion) {
            try self.put_Completed(handler: completion.Interface())
            _ = WaitForSingleObject(event, INFINITE)
            }
        }
        return try self.GetResults();
        }
}
