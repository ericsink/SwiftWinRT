// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;
@_spi(IUnknown) import WinRT;
import CWindowsSdk;

extension ClosedGenerics {
// closed interface type
public class IVectorView_1__q_CWindows_CData_CText_CSelectableWordSegment
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x33f90a72, Data2: 0x86f4, Data3 : 0x5027, Data4 : (0xb5, 0x0a, 0x69, 0x39, 0xa1, 0xf9, 0xd5, 0x60)) }
// method not needed: GetAt
// method not needed: get_Size
// method not needed: IndexOf
// method not needed: GetMany
} // IVectorView_1__q_CWindows_CData_CText_CSelectableWordSegment
// closed interface type
public class IIterable_1__q_CWindows_CData_CText_CSelectableWordSegment
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x784b0cec, Data2: 0x1348, Data3 : 0x5334, Data4 : (0x91, 0xe5, 0x2e, 0x01, 0x32, 0x94, 0xe2, 0x11)) }
// method not needed: First
} // IIterable_1__q_CWindows_CData_CText_CSelectableWordSegment
// closed interface type
public class IIterator_1__q_CWindows_CData_CText_CSelectableWordSegment
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xa5842459, Data2: 0x147d, Data3 : 0x5a88, Data4 : (0x8f, 0x23, 0xa3, 0x39, 0x8a, 0xfd, 0x8a, 0x85)) }
// method not needed: get_Current
// method not needed: get_HasCurrent
// method not needed: MoveNext
// method not needed: GetMany
} // IIterator_1__q_CWindows_CData_CText_CSelectableWordSegment
// closed interface type
public class IVectorView_1__q_CWindows_CData_CText_CTextSegment
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x2f245f9d, Data2: 0xeb5f, Data3 : 0x5641, Data4 : (0x9d, 0xcc, 0x6a, 0xb1, 0x94, 0x6c, 0xc7, 0xe6)) }
// method not needed: GetAt
// method not needed: get_Size
// method not needed: IndexOf
// method not needed: GetMany
} // IVectorView_1__q_CWindows_CData_CText_CTextSegment
// closed interface type
public class IAsyncOperation_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x6bc3019d, Data2: 0xdd10, Data3 : 0x5510, Data4 : (0xb1, 0x64, 0x80, 0x8c, 0x23, 0x2b, 0x7d, 0x64)) }
    // [IsSpecialName] void put_Completed(Windows.Foundation.AsyncOperationCompletedHandler<Windows.Foundation.Collections.IVectorView<Windows.Data.Text.TextPhoneme>>)
    private func _n_put_Completed(_ handler : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme>>) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.put_Completed(pThis, handler))
        }
    }
    public func put_Completed(handler : Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme>) throws -> Void {
        try self._n_put_Completed(RawPointer(handler));
    }
    // [IsSpecialName] Windows.Foundation.AsyncOperationCompletedHandler<Windows.Foundation.Collections.IVectorView<Windows.Data.Text.TextPhoneme>> get_Completed()
    private func _n_get_Completed(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme>>>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_Completed(pThis, __presult))
        }
    }
    public func get_Completed() throws -> Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme> {
        var __result : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme>> = nil;
        try self._n_get_Completed(&__result);
        return ClosedGenerics.IAsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme(consuming: __result);
    }
    // Windows.Foundation.Collections.IVectorView<Windows.Data.Text.TextPhoneme> GetResults()
    private func _n_GetResults(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme>>>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.GetResults(pThis, __presult))
        }
    }
    public func GetResults() throws -> Optional<ClosedGenerics.IVectorView_1__q_CWindows_CData_CText_CTextPhoneme> {
        var __result : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme>> = nil;
        try self._n_GetResults(&__result);
        return ClosedGenerics.IVectorView_1__q_CWindows_CData_CText_CTextPhoneme(consuming: __result);
    }
    public var Completed : Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme> {
        get throws {
            return try get_Completed();
        }
    }
} // IAsyncOperation_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme
// closed generic delegate type
public class IAsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x83e14307, Data2: 0x0be1, Data3 : 0x5560, Data4 : (0x8b, 0xfc, 0x29, 0x10, 0x95, 0xcf, 0x6d, 0x30)) }
    // [IsSpecialName] void Invoke(Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Data.Text.TextPhoneme>>, Windows.Foundation.AsyncStatus)
    private func _n_Invoke(_ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperation_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme>>, _ asyncStatus : _q_CWindows_CFoundation_CAsyncStatus) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Invoke(pThis, asyncInfo, asyncStatus))
        }
    }
    public func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        try self._n_Invoke(RawPointer(asyncInfo), asyncStatus);
    }
} // IAsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme
// impl delegate type
open class AsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme
{
    private static var vtable: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhonemeVtbl = .init(
    QueryInterface: {
        guard let pUnk = $0, let riid = $1, let ppvObject = $2 else {
            return E_INVALIDARG
        }
        switch riid.pointee {
        case IUnknown.IID, ClosedGenerics.IAsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme.IID:
            _ = pUnk.pointee.lpVtbl.pointee.AddRef(pUnk)
            ppvObject.pointee = UnsafeMutableRawPointer(pUnk)
            return S_OK
        default:
            ppvObject.pointee = nil
            return E_NOINTERFACE
        }
    },
    AddRef: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: AsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme.WithTrailingObjects.self, capacity: 1)
        _ = pinstance.pointee.container.retain()
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeUnretainedValue()))
        return __res;
    },
    Release: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: AsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme.WithTrailingObjects.self, capacity: 1)
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeRetainedValue()))
        return __res;
    },
    Invoke: {
        (pThis, _ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperation_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme>>, _ asyncStatus : _q_CWindows_CFoundation_CAsyncStatus) in
        guard let self = AsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme.from_AsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme(pThis) else {
            return E_INVALIDARG
        }
        do {
            let _ret : Void = try self.Invoke(asyncInfo: ClosedGenerics.IAsyncOperation_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme(asyncInfo), asyncStatus: asyncStatus)
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
        public var self_ref: AsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme? = nil
    }
    private struct WithTrailingObjects {
        public var interface_struct: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme
        public var container: Unmanaged<Container>
    }
    private var instance: WithTrailingObjects

    private var _cb : Optional<(Optional<ClosedGenerics.IAsyncOperation_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme>, Windows.Foundation.AsyncStatus) throws -> Void>
    public init(cb : Optional<(Optional<ClosedGenerics.IAsyncOperation_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme>, Windows.Foundation.AsyncStatus) throws -> Void> = nil) {
        _cb = cb
        self.instance = WithTrailingObjects(interface_struct: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme(lpVtbl: &Self.vtable), container: Unmanaged<Container>.passRetained(Container()))
        self.instance.container.takeUnretainedValue().self_ref = self
    }
    private static func from_AsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme(_ pUnk: UnsafeMutableRawPointer?) -> AsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme? {
        return pUnk?.bindMemory(to: AsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme.WithTrailingObjects.self, capacity: 1).pointee.container.takeUnretainedValue().self_ref
    }

    open func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        if let cb = _cb {
            return try cb(asyncInfo, asyncStatus)
        }
    }
    public func Interface() -> ClosedGenerics.IAsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme {
        return withUnsafeMutablePointer(to: &self.instance.interface_struct) {
            ClosedGenerics.IAsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme(UnsafeMutableRawPointer($0))
        }
    }
}
// wrap delegate type
open class foo_AsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme
{
    private var _self : ClosedGenerics.IAsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme;
    public init(plok: ClosedGenerics.IAsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme?) throws {
        _self = plok!
    }
    public func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        return try _self.Invoke(asyncInfo: asyncInfo, asyncStatus: asyncStatus);
    }
    public func Interface() -> ClosedGenerics.IAsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme {
        return _self
    }
}
// closed interface type
public class IVectorView_1__q_CWindows_CData_CText_CTextPhoneme
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xcfc6e66d, Data2: 0x5e2a, Data3 : 0x582d, Data4 : (0x8b, 0x6d, 0xfb, 0xf7, 0x1c, 0xf3, 0xd0, 0xeb)) }
// method not needed: GetAt
// method not needed: get_Size
// method not needed: IndexOf
// method not needed: GetMany
} // IVectorView_1__q_CWindows_CData_CText_CTextPhoneme
// closed interface type
public class IVectorView_1__q_CWindows_CData_CText_CAlternateWordForm
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x6b742ff2, Data2: 0x746a, Data3 : 0x5545, Data4 : (0xa6, 0xed, 0x3b, 0xba, 0x45, 0x3c, 0xf5, 0xd9)) }
// method not needed: GetAt
// method not needed: get_Size
// method not needed: IndexOf
// method not needed: GetMany
} // IVectorView_1__q_CWindows_CData_CText_CAlternateWordForm
// closed interface type
public class IVectorView_1__q_CWindows_CData_CText_CWordSegment
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xc706749a, Data2: 0xe11d, Data3 : 0x5e07, Data4 : (0x85, 0x34, 0x2b, 0xd2, 0x3e, 0xc2, 0x10, 0xf9)) }
// method not needed: GetAt
// method not needed: get_Size
// method not needed: IndexOf
// method not needed: GetMany
} // IVectorView_1__q_CWindows_CData_CText_CWordSegment
// closed interface type
public class IIterable_1__q_CWindows_CData_CText_CWordSegment
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xd14dc94a, Data2: 0xa311, Data3 : 0x5ddc, Data4 : (0xbf, 0x8b, 0xd5, 0x87, 0x95, 0xd8, 0x7d, 0x6d)) }
// method not needed: First
} // IIterable_1__q_CWindows_CData_CText_CWordSegment
// closed interface type
public class IIterator_1__q_CWindows_CData_CText_CWordSegment
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xaeb846b3, Data2: 0x664b, Data3 : 0x545e, Data4 : (0xab, 0x93, 0xf5, 0xfc, 0x66, 0xd2, 0x4e, 0x32)) }
// method not needed: get_Current
// method not needed: get_HasCurrent
// method not needed: MoveNext
// method not needed: GetMany
} // IIterator_1__q_CWindows_CData_CText_CWordSegment
// closed interface type
public class IMap_2_HSTRING__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextSegment
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xa31b6540, Data2: 0xb2b1, Data3 : 0x536d, Data4 : (0x81, 0x8f, 0x8a, 0xde, 0x70, 0x51, 0xc3, 0xb3)) }
// method not needed: Lookup
// method not needed: get_Size
// method not needed: HasKey
// method not needed: GetView
// method not needed: Insert
// method not needed: Remove
// method not needed: Clear
} // IMap_2_HSTRING__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextSegment
// closed interface type
public class IMapView_2_HSTRING__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextSegment
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x91d443d6, Data2: 0x3777, Data3 : 0x5102, Data4 : (0xb0, 0xbc, 0x3d, 0x41, 0x83, 0xa2, 0x6f, 0xf9)) }
// method not needed: Lookup
// method not needed: get_Size
// method not needed: HasKey
// method not needed: Split
} // IMapView_2_HSTRING__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextSegment
}
extension ClosedGenerics.IAsyncOperation_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme : WinRT.Future {
    private final class MyCompletedHandler: ClosedGenerics.AsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme {
        private var hEvent: HANDLE
        public init(signal event: HANDLE) {
            self.hEvent = event
            super.init()
        }
        override func Invoke(asyncInfo: ClosedGenerics.IAsyncOperation_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme?,
            asyncStatus: Windows.Foundation.AsyncStatus) throws {
            _ = SetEvent(self.hEvent)
        }
}
        public func get() throws -> Optional<ClosedGenerics.IVectorView_1__q_CWindows_CData_CText_CTextPhoneme> {
            let info: Windows.Foundation.IAsyncInfo = try QueryInterface()
            if try info.get_Status() == Windows.Foundation.AsyncStatus.Started {
            let event: HANDLE =
            CreateEventW(nil, /*bManualReset=*/true, /*DefaultValue=*/false, nil)
            // TODO(compnerd) validate event
            defer { _ = CloseHandle(event) }
            let completion: ClosedGenerics.AsyncOperationCompletedHandler_1__cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CData_CText_CTextPhoneme =
            MyCompletedHandler(signal: event)
            try withExtendedLifetime(completion) {
            try self.put_Completed(handler: completion.Interface())
            _ = WaitForSingleObject(event, INFINITE)
            }
        }
        return try self.GetResults();
        }
}
