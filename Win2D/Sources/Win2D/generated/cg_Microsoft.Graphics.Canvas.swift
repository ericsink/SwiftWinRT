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
// closed interface type
public class IReference_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBufferPrecision
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x8bff1f50, Data2: 0xaef3, Data3 : 0x558e, Data4 : (0xa0, 0x2b, 0x58, 0x9b, 0x6c, 0x0c, 0xfe, 0xa8)) }
// method not needed: get_Value
} // IReference_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBufferPrecision
// closed interface type
public class IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x0391e8ef, Data2: 0x719a, Data3 : 0x5c80, Data4 : (0xb8, 0x7a, 0x7d, 0x90, 0x2b, 0x15, 0x4e, 0x3e)) }
    // [IsSpecialName] void put_Completed(Windows.Foundation.AsyncOperationCompletedHandler<Microsoft.Graphics.Canvas.CanvasBitmap>)
    private func _n_put_Completed(_ handler : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap>>) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.put_Completed(pThis, handler))
        }
    }
    public func put_Completed(handler : Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap>) throws -> Void {
        try self._n_put_Completed(RawPointer(handler));
    }
    // [IsSpecialName] Windows.Foundation.AsyncOperationCompletedHandler<Microsoft.Graphics.Canvas.CanvasBitmap> get_Completed()
    private func _n_get_Completed(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap>>>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_Completed(pThis, __presult))
        }
    }
    public func get_Completed() throws -> Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap> {
        var __result : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap>> = nil;
        try self._n_get_Completed(&__result);
        return ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap(consuming: __result);
    }
    // Microsoft.Graphics.Canvas.CanvasBitmap GetResults()
    private func _n_GetResults(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CMicrosoft_CGraphics_CCanvas_CICanvasBitmap>>>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.GetResults(pThis, __presult))
        }
    }
    public func GetResults() throws -> Optional<Microsoft.Graphics.Canvas.ICanvasBitmap> {
        var __result : Optional<UnsafeMutablePointer<_q_CMicrosoft_CGraphics_CCanvas_CICanvasBitmap>> = nil;
        try self._n_GetResults(&__result);
        return Microsoft.Graphics.Canvas.ICanvasBitmap(consuming: __result);
    }
    public var Completed : Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap> {
        get throws {
            return try get_Completed();
        }
    }
} // IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap
// closed generic delegate type
public class IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x01f4b012, Data2: 0xb7d5, Data3 : 0x5e02, Data4 : (0x8c, 0xaa, 0x2c, 0x46, 0x0f, 0x35, 0xc9, 0x47)) }
    // [IsSpecialName] void Invoke(Windows.Foundation.IAsyncOperation<Microsoft.Graphics.Canvas.CanvasBitmap>, Windows.Foundation.AsyncStatus)
    private func _n_Invoke(_ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap>>, _ asyncStatus : _q_CWindows_CFoundation_CAsyncStatus) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Invoke(pThis, asyncInfo, asyncStatus))
        }
    }
    public func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        try self._n_Invoke(RawPointer(asyncInfo), asyncStatus);
    }
} // IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap
// impl delegate type
open class AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap
{
    private static var vtable: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmapVtbl = .init(
    QueryInterface: {
        guard let pUnk = $0, let riid = $1, let ppvObject = $2 else {
            return E_INVALIDARG
        }
        switch riid.pointee {
        case IUnknown.IID, ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap.IID:
            _ = pUnk.pointee.lpVtbl.pointee.AddRef(pUnk)
            ppvObject.pointee = UnsafeMutableRawPointer(pUnk)
            return S_OK
        default:
            ppvObject.pointee = nil
            return E_NOINTERFACE
        }
    },
    AddRef: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap.WithTrailingObjects.self, capacity: 1)
        _ = pinstance.pointee.container.retain()
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeUnretainedValue()))
        return __res;
    },
    Release: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap.WithTrailingObjects.self, capacity: 1)
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeRetainedValue()))
        return __res;
    },
    Invoke: {
        (pThis, _ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap>>, _ asyncStatus : _q_CWindows_CFoundation_CAsyncStatus) in
        guard let self = AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap.from_AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap(pThis) else {
            return E_INVALIDARG
        }
        do {
            let _ret : Void = try self.Invoke(asyncInfo: ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap(asyncInfo), asyncStatus: asyncStatus)
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
        public var self_ref: AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap? = nil
    }
    private struct WithTrailingObjects {
        public var interface_struct: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap
        public var container: Unmanaged<Container>
    }
    private var instance: WithTrailingObjects

    private var _cb : Optional<(Optional<ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap>, Windows.Foundation.AsyncStatus) throws -> Void>
    public init(cb : Optional<(Optional<ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap>, Windows.Foundation.AsyncStatus) throws -> Void> = nil) {
        _cb = cb
        self.instance = WithTrailingObjects(interface_struct: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap(lpVtbl: &Self.vtable), container: Unmanaged<Container>.passRetained(Container()))
        self.instance.container.takeUnretainedValue().self_ref = self
    }
    private static func from_AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap(_ pUnk: UnsafeMutableRawPointer?) -> AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap? {
        return pUnk?.bindMemory(to: AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap.WithTrailingObjects.self, capacity: 1).pointee.container.takeUnretainedValue().self_ref
    }

    open func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        if let cb = _cb {
            return try cb(asyncInfo, asyncStatus)
        }
    }
    public func Interface() -> ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap {
        return withUnsafeMutablePointer(to: &self.instance.interface_struct) {
            ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap(UnsafeMutableRawPointer($0))
        }
    }
}
// wrap delegate type
open class foo_AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap
{
    private var _self : ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap;
    public init(plok: ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap?) throws {
        _self = plok!
    }
    public func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        return try _self.Invoke(asyncInfo: asyncInfo, asyncStatus: asyncStatus);
    }
    public func Interface() -> ClosedGenerics.IAsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap {
        return _self
    }
}
}
extension ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap : WinRT.Future {
    private final class MyCompletedHandler: ClosedGenerics.AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap {
        private var hEvent: HANDLE
        public init(signal event: HANDLE) {
            self.hEvent = event
            super.init()
        }
        override func Invoke(asyncInfo: ClosedGenerics.IAsyncOperation_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap?,
            asyncStatus: Windows.Foundation.AsyncStatus) throws {
            _ = SetEvent(self.hEvent)
        }
}
        public func get() throws -> Optional<Microsoft.Graphics.Canvas.ICanvasBitmap> {
            let info: Windows.Foundation.IAsyncInfo = try QueryInterface()
            if try info.get_Status() == Windows.Foundation.AsyncStatus.Started {
            let event: HANDLE =
            CreateEventW(nil, /*bManualReset=*/true, /*DefaultValue=*/false, nil)
            // TODO(compnerd) validate event
            defer { _ = CloseHandle(event) }
            let completion: ClosedGenerics.AsyncOperationCompletedHandler_1__q_CMicrosoft_CGraphics_CCanvas_CCanvasBitmap =
            MyCompletedHandler(signal: event)
            try withExtendedLifetime(completion) {
            try self.put_Completed(handler: completion.Interface())
            _ = WaitForSingleObject(event, INFINITE)
            }
        }
        return try self.GetResults();
        }
}
