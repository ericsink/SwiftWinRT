// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;
@_spi(IUnknown) import WinRT;
import C;

extension ClosedGenerics {
// closed interface type
public class IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x63adbeeb, Data2: 0xf748, Data3 : 0x5aec, Data4 : (0xa9, 0xd3, 0x5f, 0xd7, 0x31, 0xb2, 0xbc, 0x67)) }
    // [IsSpecialName] void put_Completed(Windows.Foundation.AsyncOperationCompletedHandler<Microsoft.Graphics.Canvas.Svg.CanvasSvgDocument>)
    private func _n_put_Completed(_ handler : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument>>) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.put_Completed(pThis, handler))
        }
    }
    public func put_Completed(handler : Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument>) throws -> Void {
        try self._n_put_Completed(RawPointer(handler));
    }
    // [IsSpecialName] Windows.Foundation.AsyncOperationCompletedHandler<Microsoft.Graphics.Canvas.Svg.CanvasSvgDocument> get_Completed()
    private func _n_get_Completed(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument>>>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_Completed(pThis, __presult))
        }
    }
    public func get_Completed() throws -> Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument> {
        var __result : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument>> = nil;
        try self._n_get_Completed(&__result);
        return ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument(consuming: __result);
    }
    // Microsoft.Graphics.Canvas.Svg.CanvasSvgDocument GetResults()
    private func _n_GetResults(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CMicrosoft_CGraphics_CCanvas_CSvg_CICanvasSvgDocument>>>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.GetResults(pThis, __presult))
        }
    }
    public func GetResults() throws -> Optional<Microsoft.Graphics.Canvas.Svg.ICanvasSvgDocument> {
        var __result : Optional<UnsafeMutablePointer<_q_CMicrosoft_CGraphics_CCanvas_CSvg_CICanvasSvgDocument>> = nil;
        try self._n_GetResults(&__result);
        return Microsoft.Graphics.Canvas.Svg.ICanvasSvgDocument(consuming: __result);
    }
    public var Completed : Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument> {
        get throws {
            return try get_Completed();
        }
    }
} // IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument
// closed generic delegate type
public class IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x45ebe17c, Data2: 0xefb1, Data3 : 0x5ba2, Data4 : (0x92, 0x80, 0x84, 0x13, 0x4c, 0xea, 0x38, 0xf9)) }
    // [IsSpecialName] void Invoke(Windows.Foundation.IAsyncOperation<Microsoft.Graphics.Canvas.Svg.CanvasSvgDocument>, Windows.Foundation.AsyncStatus)
    private func _n_Invoke(_ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument>>, _ asyncStatus : _q_CWindows_CFoundation_CAsyncStatus) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Invoke(pThis, asyncInfo, asyncStatus))
        }
    }
    public func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        try self._n_Invoke(RawPointer(asyncInfo), asyncStatus);
    }
} // IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument
// impl delegate type
open class impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument
{
    private static var vtable: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocumentVtbl = .init(
    QueryInterface: {
        guard let pUnk = $0, let riid = $1, let ppvObject = $2 else {
            return E_INVALIDARG
        }
        switch riid.pointee {
        case IUnknown.IID, ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument.IID:
            _ = pUnk.pointee.lpVtbl.pointee.AddRef(pUnk)
            ppvObject.pointee = UnsafeMutableRawPointer(pUnk)
            return S_OK
        default:
            ppvObject.pointee = nil
            return E_NOINTERFACE
        }
    },
    AddRef: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument.WithTrailingObjects.self, capacity: 1)
        _ = pinstance.pointee.container.retain()
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeUnretainedValue()))
        return __res;
    },
    Release: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument.WithTrailingObjects.self, capacity: 1)
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeRetainedValue()))
        return __res;
    },
    Invoke: {
        (pThis, _ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument>>, _ asyncStatus : _q_CWindows_CFoundation_CAsyncStatus) in
        guard let self = impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument.from_impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument(pThis) else {
            return E_INVALIDARG
        }
        do {
            let _ret : Void = try self.Invoke(asyncInfo: ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument(asyncInfo), asyncStatus: asyncStatus)
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
        public var self_ref: impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument? = nil
    }
    private struct WithTrailingObjects {
        public var interface_struct: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument
        public var container: Unmanaged<Container>
    }
    private var instance: WithTrailingObjects

    private var _cb : Optional<(Optional<ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument>, Windows.Foundation.AsyncStatus) throws -> Void>
    public init(cb : Optional<(Optional<ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument>, Windows.Foundation.AsyncStatus) throws -> Void> = nil) {
        _cb = cb
        self.instance = WithTrailingObjects(interface_struct: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument(lpVtbl: &Self.vtable), container: Unmanaged<Container>.passRetained(Container()))
        self.instance.container.takeUnretainedValue().self_ref = self
    }
    private static func from_impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument(_ pUnk: UnsafeMutableRawPointer?) -> impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument? {
        return pUnk?.bindMemory(to: impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument.WithTrailingObjects.self, capacity: 1).pointee.container.takeUnretainedValue().self_ref
    }

    open func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        if let cb = _cb {
            return try cb(asyncInfo, asyncStatus)
        }
    }
    public func Interface() -> ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument {
        return withUnsafeMutablePointer(to: &self.instance.interface_struct) {
            ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument(UnsafeMutableRawPointer($0))
        }
    }
}
// wrap delegate type
open class wrap_AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument
{
    private var _self : ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument;
    public init(plok: ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument?) throws {
        _self = plok!
    }
    public func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        return try _self.Invoke(asyncInfo: asyncInfo, asyncStatus: asyncStatus);
    }
    public func Interface() -> ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument {
        return _self
    }
}
// closed interface type
public class IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x68a752f6, Data2: 0x827a, Data3 : 0x5816, Data4 : (0x8e, 0x65, 0x0b, 0x33, 0x42, 0x67, 0x30, 0x75)) }
    // [IsSpecialName] void put_Completed(Windows.Foundation.AsyncOperationCompletedHandler<Microsoft.Graphics.Canvas.Svg.CanvasSvgNamedElement>)
    private func _n_put_Completed(_ handler : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement>>) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.put_Completed(pThis, handler))
        }
    }
    public func put_Completed(handler : Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement>) throws -> Void {
        try self._n_put_Completed(RawPointer(handler));
    }
    // [IsSpecialName] Windows.Foundation.AsyncOperationCompletedHandler<Microsoft.Graphics.Canvas.Svg.CanvasSvgNamedElement> get_Completed()
    private func _n_get_Completed(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement>>>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_Completed(pThis, __presult))
        }
    }
    public func get_Completed() throws -> Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement> {
        var __result : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement>> = nil;
        try self._n_get_Completed(&__result);
        return ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement(consuming: __result);
    }
    // Microsoft.Graphics.Canvas.Svg.CanvasSvgNamedElement GetResults()
    private func _n_GetResults(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CMicrosoft_CGraphics_CCanvas_CSvg_CICanvasSvgNamedElement>>>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.GetResults(pThis, __presult))
        }
    }
    public func GetResults() throws -> Optional<Microsoft.Graphics.Canvas.Svg.ICanvasSvgNamedElement> {
        var __result : Optional<UnsafeMutablePointer<_q_CMicrosoft_CGraphics_CCanvas_CSvg_CICanvasSvgNamedElement>> = nil;
        try self._n_GetResults(&__result);
        return Microsoft.Graphics.Canvas.Svg.ICanvasSvgNamedElement(consuming: __result);
    }
    public var Completed : Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement> {
        get throws {
            return try get_Completed();
        }
    }
} // IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement
// closed generic delegate type
public class IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x76b5a817, Data2: 0x1bef, Data3 : 0x5f3e, Data4 : (0x91, 0xbb, 0x56, 0x97, 0xa3, 0xba, 0x6e, 0x51)) }
    // [IsSpecialName] void Invoke(Windows.Foundation.IAsyncOperation<Microsoft.Graphics.Canvas.Svg.CanvasSvgNamedElement>, Windows.Foundation.AsyncStatus)
    private func _n_Invoke(_ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement>>, _ asyncStatus : _q_CWindows_CFoundation_CAsyncStatus) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Invoke(pThis, asyncInfo, asyncStatus))
        }
    }
    public func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        try self._n_Invoke(RawPointer(asyncInfo), asyncStatus);
    }
} // IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement
// impl delegate type
open class impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement
{
    private static var vtable: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElementVtbl = .init(
    QueryInterface: {
        guard let pUnk = $0, let riid = $1, let ppvObject = $2 else {
            return E_INVALIDARG
        }
        switch riid.pointee {
        case IUnknown.IID, ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement.IID:
            _ = pUnk.pointee.lpVtbl.pointee.AddRef(pUnk)
            ppvObject.pointee = UnsafeMutableRawPointer(pUnk)
            return S_OK
        default:
            ppvObject.pointee = nil
            return E_NOINTERFACE
        }
    },
    AddRef: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement.WithTrailingObjects.self, capacity: 1)
        _ = pinstance.pointee.container.retain()
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeUnretainedValue()))
        return __res;
    },
    Release: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement.WithTrailingObjects.self, capacity: 1)
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeRetainedValue()))
        return __res;
    },
    Invoke: {
        (pThis, _ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement>>, _ asyncStatus : _q_CWindows_CFoundation_CAsyncStatus) in
        guard let self = impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement.from_impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement(pThis) else {
            return E_INVALIDARG
        }
        do {
            let _ret : Void = try self.Invoke(asyncInfo: ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement(asyncInfo), asyncStatus: asyncStatus)
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
        public var self_ref: impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement? = nil
    }
    private struct WithTrailingObjects {
        public var interface_struct: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement
        public var container: Unmanaged<Container>
    }
    private var instance: WithTrailingObjects

    private var _cb : Optional<(Optional<ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement>, Windows.Foundation.AsyncStatus) throws -> Void>
    public init(cb : Optional<(Optional<ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement>, Windows.Foundation.AsyncStatus) throws -> Void> = nil) {
        _cb = cb
        self.instance = WithTrailingObjects(interface_struct: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement(lpVtbl: &Self.vtable), container: Unmanaged<Container>.passRetained(Container()))
        self.instance.container.takeUnretainedValue().self_ref = self
    }
    private static func from_impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement(_ pUnk: UnsafeMutableRawPointer?) -> impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement? {
        return pUnk?.bindMemory(to: impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement.WithTrailingObjects.self, capacity: 1).pointee.container.takeUnretainedValue().self_ref
    }

    open func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        if let cb = _cb {
            return try cb(asyncInfo, asyncStatus)
        }
    }
    public func Interface() -> ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement {
        return withUnsafeMutablePointer(to: &self.instance.interface_struct) {
            ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement(UnsafeMutableRawPointer($0))
        }
    }
}
// wrap delegate type
open class wrap_AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement
{
    private var _self : ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement;
    public init(plok: ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement?) throws {
        _self = plok!
    }
    public func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        return try _self.Invoke(asyncInfo: asyncInfo, asyncStatus: asyncStatus);
    }
    public func Interface() -> ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement {
        return _self
    }
}
}
extension ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument : WinRT.Future {
    private final class MyCompletedHandler: ClosedGenerics.impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument {
        private var hEvent: HANDLE
        public init(signal event: HANDLE) {
            self.hEvent = event
            super.init()
        }
        override func Invoke(asyncInfo: ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument?,
            asyncStatus: Windows.Foundation.AsyncStatus) throws {
            _ = SetEvent(self.hEvent)
        }
}
        public func get() throws -> Optional<Microsoft.Graphics.Canvas.Svg.ICanvasSvgDocument> {
            let info: Windows.Foundation.IAsyncInfo = try QueryInterface()
            if try info.get_Status() == Windows.Foundation.AsyncStatus.Started {
            let event: HANDLE =
            CreateEventW(nil, /*bManualReset=*/true, /*DefaultValue=*/false, nil)
            // TODO(compnerd) validate event
            defer { _ = CloseHandle(event) }
            let completion: ClosedGenerics.impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgDocument =
            MyCompletedHandler(signal: event)
            try withExtendedLifetime(completion) {
            try self.put_Completed(handler: completion.Interface())
            _ = WaitForSingleObject(event, INFINITE)
            }
        }
        return try self.GetResults();
        }
}
extension ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement : WinRT.Future {
    private final class MyCompletedHandler: ClosedGenerics.impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement {
        private var hEvent: HANDLE
        public init(signal event: HANDLE) {
            self.hEvent = event
            super.init()
        }
        override func Invoke(asyncInfo: ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement?,
            asyncStatus: Windows.Foundation.AsyncStatus) throws {
            _ = SetEvent(self.hEvent)
        }
}
        public func get() throws -> Optional<Microsoft.Graphics.Canvas.Svg.ICanvasSvgNamedElement> {
            let info: Windows.Foundation.IAsyncInfo = try QueryInterface()
            if try info.get_Status() == Windows.Foundation.AsyncStatus.Started {
            let event: HANDLE =
            CreateEventW(nil, /*bManualReset=*/true, /*DefaultValue=*/false, nil)
            // TODO(compnerd) validate event
            defer { _ = CloseHandle(event) }
            let completion: ClosedGenerics.impl_AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CSvg_CCanvasSvgNamedElement =
            MyCompletedHandler(signal: event)
            try withExtendedLifetime(completion) {
            try self.put_Completed(handler: completion.Interface())
            _ = WaitForSingleObject(event, INFINITE)
            }
        }
        return try self.GetResults();
        }
}
