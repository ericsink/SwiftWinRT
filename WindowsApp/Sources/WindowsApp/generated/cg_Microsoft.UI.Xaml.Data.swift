// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;
@_spi(IUnknown) import WinRT;
import CWindowsApp;
import WindowsSdk;
import CWindowsSdk;

extension ClosedGenerics {
// closed interface type
public class IVectorView_1__q_CMicrosoft_CUI_CXaml_CData_CItemIndexRange
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x465af292, Data2: 0xd97c, Data3 : 0x5407, Data4 : (0x9c, 0xbe, 0x6d, 0x35, 0xd6, 0x7a, 0x03, 0x0f)) }
// method not needed: GetAt
// method not needed: get_Size
// method not needed: IndexOf
// method not needed: GetMany
} // IVectorView_1__q_CMicrosoft_CUI_CXaml_CData_CItemIndexRange
// closed interface type
public class IAsyncOperation_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x87c6d0a7, Data2: 0x9748, Data3 : 0x5f9c, Data4 : (0xb3, 0x59, 0x1e, 0x12, 0x75, 0x9c, 0xf3, 0xce)) }
    // [IsSpecialName] void put_Completed(Windows.Foundation.AsyncOperationCompletedHandler<Microsoft.UI.Xaml.Data.LoadMoreItemsResult>)
    private func _n_put_Completed(_ handler : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult>>) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.put_Completed(pThis, handler))
        }
    }
    public func put_Completed(handler : Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult>) throws -> Void {
        try self._n_put_Completed(RawPointer(handler));
    }
    // [IsSpecialName] Windows.Foundation.AsyncOperationCompletedHandler<Microsoft.UI.Xaml.Data.LoadMoreItemsResult> get_Completed()
    private func _n_get_Completed(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult>>>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_Completed(pThis, __presult))
        }
    }
    public func get_Completed() throws -> Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult> {
        var __result : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult>> = nil;
        try self._n_get_Completed(&__result);
        return ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult(consuming: __result);
    }
    // Microsoft.UI.Xaml.Data.LoadMoreItemsResult GetResults()
    private func _n_GetResults(_ __presult: UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.GetResults(pThis, __presult))
        }
    }
    public func GetResults() throws -> Microsoft.UI.Xaml.Data.LoadMoreItemsResult {
        var __result : _q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult = _q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult(Count: 0);
        try self._n_GetResults(&__result);
        return __result;
    }
    public var Completed : Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult> {
        get throws {
            return try get_Completed();
        }
    }
} // IAsyncOperation_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult
// closed generic delegate type
public class IAsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x8806a4d7, Data2: 0x81d6, Data3 : 0x50f6, Data4 : (0x91, 0x28, 0x52, 0xa9, 0x53, 0x4f, 0xeb, 0xe1)) }
    // [IsSpecialName] void Invoke(Windows.Foundation.IAsyncOperation<Microsoft.UI.Xaml.Data.LoadMoreItemsResult>, Windows.Foundation.AsyncStatus)
    private func _n_Invoke(_ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult>>, _ asyncStatus : _q_CWindows_CFoundation_CAsyncStatus) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Invoke(pThis, asyncInfo, asyncStatus))
        }
    }
    public func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        try self._n_Invoke(RawPointer(asyncInfo), asyncStatus);
    }
} // IAsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult
// impl delegate type
open class impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult
{
    private static var vtable: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResultVtbl = .init(
    QueryInterface: {
        guard let pUnk = $0, let riid = $1, let ppvObject = $2 else {
            return E_INVALIDARG
        }
        switch riid.pointee {
        case IUnknown.IID, ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult.IID:
            _ = pUnk.pointee.lpVtbl.pointee.AddRef(pUnk)
            ppvObject.pointee = UnsafeMutableRawPointer(pUnk)
            return S_OK
        default:
            ppvObject.pointee = nil
            return E_NOINTERFACE
        }
    },
    AddRef: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult.WithTrailingObjects.self, capacity: 1)
        _ = pinstance.pointee.container.retain()
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeUnretainedValue()))
        return __res;
    },
    Release: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult.WithTrailingObjects.self, capacity: 1)
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeRetainedValue()))
        return __res;
    },
    Invoke: {
        (pThis, _ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult>>, _ asyncStatus : _q_CWindows_CFoundation_CAsyncStatus) in
        guard let self = impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult.from_impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult(pThis) else {
            return E_INVALIDARG
        }
        do {
            let _ret : Void = try self.Invoke(asyncInfo: ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult(asyncInfo), asyncStatus: asyncStatus)
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
        public var self_ref: impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult? = nil
    }
    private struct WithTrailingObjects {
        public var interface_struct: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult
        public var container: Unmanaged<Container>
    }
    private var instance: WithTrailingObjects

    private var _cb : Optional<(Optional<ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult>, Windows.Foundation.AsyncStatus) throws -> Void>
    public init(cb : Optional<(Optional<ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult>, Windows.Foundation.AsyncStatus) throws -> Void> = nil) {
        _cb = cb
        self.instance = WithTrailingObjects(interface_struct: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult(lpVtbl: &Self.vtable), container: Unmanaged<Container>.passRetained(Container()))
        self.instance.container.takeUnretainedValue().self_ref = self
    }
    private static func from_impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult(_ pUnk: UnsafeMutableRawPointer?) -> impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult? {
        return pUnk?.bindMemory(to: impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult.WithTrailingObjects.self, capacity: 1).pointee.container.takeUnretainedValue().self_ref
    }

    open func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        if let cb = _cb {
            return try cb(asyncInfo, asyncStatus)
        }
    }
    public func Interface() -> ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult {
        return withUnsafeMutablePointer(to: &self.instance.interface_struct) {
            ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult(UnsafeMutableRawPointer($0))
        }
    }
}
// wrap delegate type
open class wrap_AsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult
{
    private var _self : ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult;
    public init(plok: ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult?) throws {
        _self = plok!
    }
    public func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        return try _self.Invoke(asyncInfo: asyncInfo, asyncStatus: asyncStatus);
    }
    public func Interface() -> ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult {
        return _self
    }
}
}
extension ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult : WinRT.Future {
    private final class MyCompletedHandler: ClosedGenerics.impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult {
        private var hEvent: HANDLE
        public init(signal event: HANDLE) {
            self.hEvent = event
            super.init()
        }
        override func Invoke(asyncInfo: ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult?,
            asyncStatus: Windows.Foundation.AsyncStatus) throws {
            _ = SetEvent(self.hEvent)
        }
}
        public func get() throws -> Microsoft.UI.Xaml.Data.LoadMoreItemsResult {
            let info: Windows.Foundation.IAsyncInfo = try QueryInterface()
            if try info.get_Status() == Windows.Foundation.AsyncStatus.Started {
            let event: HANDLE =
            CreateEventW(nil, /*bManualReset=*/true, /*DefaultValue=*/false, nil)
            // TODO(compnerd) validate event
            defer { _ = CloseHandle(event) }
            let completion: ClosedGenerics.impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CUI_CXaml_CData_CLoadMoreItemsResult =
            MyCompletedHandler(signal: event)
            try withExtendedLifetime(completion) {
            try self.put_Completed(handler: completion.Interface())
            _ = WaitForSingleObject(event, INFINITE)
            }
        }
        return try self.GetResults();
        }
}
