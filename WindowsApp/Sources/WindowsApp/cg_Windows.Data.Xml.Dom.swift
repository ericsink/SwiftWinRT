// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;
import CWindowsApp;
@_spi(IUnknown) import WinRT;

extension ClosedGenerics {
// closed interface type
public class IAsyncOperation_1__q_CWindows_CData_CXml_CDom_CXmlDocument
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xf858e239, Data2: 0x1896, Data3 : 0x5982, Data4 : (0x84, 0x95, 0x14, 0x31, 0x68, 0x47, 0x8e, 0xb8)) }
    // [IsSpecialName] void put_Completed(Windows.Foundation.AsyncOperationCompletedHandler<Windows.Data.Xml.Dom.XmlDocument>)
    private func _n_put_Completed(_ handler : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CWindows_CData_CXml_CDom_CXmlDocument>>) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__q_CWindows_CData_CXml_CDom_CXmlDocument.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.put_Completed(pThis, handler))
        }
    }
    public func put_Completed(handler : Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CData_CXml_CDom_CXmlDocument>) throws -> Void {
        try self._n_put_Completed(RawPointer(handler));
    }
    // [IsSpecialName] Windows.Foundation.AsyncOperationCompletedHandler<Windows.Data.Xml.Dom.XmlDocument> get_Completed()
    private func _n_get_Completed(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CWindows_CData_CXml_CDom_CXmlDocument>>>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__q_CWindows_CData_CXml_CDom_CXmlDocument.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_Completed(pThis, __presult))
        }
    }
    public func get_Completed() throws -> Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CData_CXml_CDom_CXmlDocument> {
        var __result : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CWindows_CData_CXml_CDom_CXmlDocument>> = nil;
        try self._n_get_Completed(&__result);
        return ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CData_CXml_CDom_CXmlDocument(consuming: __result);
    }
    // Windows.Data.Xml.Dom.XmlDocument GetResults()
    private func _n_GetResults(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CWindows_CData_CXml_CDom_CIXmlDocument>>>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__q_CWindows_CData_CXml_CDom_CXmlDocument.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.GetResults(pThis, __presult))
        }
    }
    public func GetResults() throws -> Optional<Windows.Data.Xml.Dom.IXmlDocument> {
        var __result : Optional<UnsafeMutablePointer<_q_CWindows_CData_CXml_CDom_CIXmlDocument>> = nil;
        try self._n_GetResults(&__result);
        return Windows.Data.Xml.Dom.IXmlDocument(consuming: __result);
    }
    public var Completed : Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CData_CXml_CDom_CXmlDocument> {
        get throws {
            return try get_Completed();
        }
    }
} // IAsyncOperation_1__q_CWindows_CData_CXml_CDom_CXmlDocument
// closed generic delegate type
public class IAsyncOperationCompletedHandler_1__q_CWindows_CData_CXml_CDom_CXmlDocument
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x5eef7817, Data2: 0x93dd, Data3 : 0x5c0b, Data4 : (0x9e, 0x5a, 0xeb, 0x49, 0x04, 0x08, 0xf3, 0xa9)) }
    // [IsSpecialName] void Invoke(Windows.Foundation.IAsyncOperation<Windows.Data.Xml.Dom.XmlDocument>, Windows.Foundation.AsyncStatus)
    private func _n_Invoke(_ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperation_1__q_CWindows_CData_CXml_CDom_CXmlDocument>>, _ asyncStatus : _q_CWindows_CFoundation_CAsyncStatus) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CWindows_CData_CXml_CDom_CXmlDocument.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Invoke(pThis, asyncInfo, asyncStatus))
        }
    }
    public func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1__q_CWindows_CData_CXml_CDom_CXmlDocument>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        try self._n_Invoke(RawPointer(asyncInfo), asyncStatus);
    }
} // IAsyncOperationCompletedHandler_1__q_CWindows_CData_CXml_CDom_CXmlDocument
// impl delegate type
open class AsyncOperationCompletedHandler_1__q_CWindows_CData_CXml_CDom_CXmlDocument
{
    private static var vtable: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CWindows_CData_CXml_CDom_CXmlDocumentVtbl = .init(
    QueryInterface: {
        guard let pUnk = $0, let riid = $1, let ppvObject = $2 else {
            return E_INVALIDARG
        }
        switch riid.pointee {
        case IUnknown.IID, ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CData_CXml_CDom_CXmlDocument.IID:
            _ = pUnk.pointee.lpVtbl.pointee.AddRef(pUnk)
            ppvObject.pointee = UnsafeMutableRawPointer(pUnk)
            return S_OK
        default:
            ppvObject.pointee = nil
            return E_NOINTERFACE
        }
    },
    AddRef: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: AsyncOperationCompletedHandler_1__q_CWindows_CData_CXml_CDom_CXmlDocument.WithTrailingObjects.self, capacity: 1)
        _ = pinstance.pointee.container.retain()
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeUnretainedValue()))
        return __res;
    },
    Release: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: AsyncOperationCompletedHandler_1__q_CWindows_CData_CXml_CDom_CXmlDocument.WithTrailingObjects.self, capacity: 1)
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeRetainedValue()))
        return __res;
    },
    Invoke: {
        (pThis, _ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperation_1__q_CWindows_CData_CXml_CDom_CXmlDocument>>, _ asyncStatus : _q_CWindows_CFoundation_CAsyncStatus) in
        guard let self = AsyncOperationCompletedHandler_1__q_CWindows_CData_CXml_CDom_CXmlDocument.from_AsyncOperationCompletedHandler_1__q_CWindows_CData_CXml_CDom_CXmlDocument(pThis) else {
            return E_INVALIDARG
        }
        do {
            let _ret : Void = try self.Invoke(asyncInfo: ClosedGenerics.IAsyncOperation_1__q_CWindows_CData_CXml_CDom_CXmlDocument(asyncInfo), asyncStatus: asyncStatus)
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
        public var self_ref: AsyncOperationCompletedHandler_1__q_CWindows_CData_CXml_CDom_CXmlDocument? = nil
    }
    private struct WithTrailingObjects {
        public var interface_struct: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CWindows_CData_CXml_CDom_CXmlDocument
        public var container: Unmanaged<Container>
    }
    private var instance: WithTrailingObjects

    private var _cb : Optional<(Optional<ClosedGenerics.IAsyncOperation_1__q_CWindows_CData_CXml_CDom_CXmlDocument>, Windows.Foundation.AsyncStatus) throws -> Void>
    public init(cb : Optional<(Optional<ClosedGenerics.IAsyncOperation_1__q_CWindows_CData_CXml_CDom_CXmlDocument>, Windows.Foundation.AsyncStatus) throws -> Void> = nil) {
        _cb = cb
        self.instance = WithTrailingObjects(interface_struct: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CWindows_CData_CXml_CDom_CXmlDocument(lpVtbl: &Self.vtable), container: Unmanaged<Container>.passRetained(Container()))
        self.instance.container.takeUnretainedValue().self_ref = self
    }
    private static func from_AsyncOperationCompletedHandler_1__q_CWindows_CData_CXml_CDom_CXmlDocument(_ pUnk: UnsafeMutableRawPointer?) -> AsyncOperationCompletedHandler_1__q_CWindows_CData_CXml_CDom_CXmlDocument? {
        return pUnk?.bindMemory(to: AsyncOperationCompletedHandler_1__q_CWindows_CData_CXml_CDom_CXmlDocument.WithTrailingObjects.self, capacity: 1).pointee.container.takeUnretainedValue().self_ref
    }

    open func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1__q_CWindows_CData_CXml_CDom_CXmlDocument>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        if let cb = _cb {
            try cb(asyncInfo, asyncStatus)
        }
    }
    public func Interface() -> ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CData_CXml_CDom_CXmlDocument {
        return withUnsafeMutablePointer(to: &self.instance.interface_struct) {
            ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CWindows_CData_CXml_CDom_CXmlDocument(UnsafeMutableRawPointer($0))
        }
    }
}
}
extension ClosedGenerics.IAsyncOperation_1__q_CWindows_CData_CXml_CDom_CXmlDocument : Future {
    private final class MyCompletedHandler: ClosedGenerics.AsyncOperationCompletedHandler_1__q_CWindows_CData_CXml_CDom_CXmlDocument {
        private var hEvent: HANDLE
        public init(signal event: HANDLE) {
            self.hEvent = event
            super.init()
        }
        override func Invoke(asyncInfo: ClosedGenerics.IAsyncOperation_1__q_CWindows_CData_CXml_CDom_CXmlDocument?,
            asyncStatus: Windows.Foundation.AsyncStatus) throws {
            _ = SetEvent(self.hEvent)
        }
}
        internal func get() throws -> Optional<Windows.Data.Xml.Dom.IXmlDocument> {
            let info: Windows.Foundation.IAsyncInfo = try QueryInterface()
            if try info.get_Status() == Windows.Foundation.AsyncStatus.Started {
            let event: HANDLE =
            CreateEventW(nil, /*bManualReset=*/true, /*DefaultValue=*/false, nil)
            // TODO(compnerd) validate event
            defer { _ = CloseHandle(event) }
            let completion: ClosedGenerics.AsyncOperationCompletedHandler_1__q_CWindows_CData_CXml_CDom_CXmlDocument =
            MyCompletedHandler(signal: event)
            try withExtendedLifetime(completion) {
            try self.put_Completed(handler: completion.Interface())
            _ = WaitForSingleObject(event, INFINITE)
            }
        }
        return try self.GetResults();
        }
}
