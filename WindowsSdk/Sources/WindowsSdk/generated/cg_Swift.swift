// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;
import CWindowsSdk;
@_spi(IUnknown) import WinRT;

extension ClosedGenerics {
// closed interface type
public class IIterable_1__cg_CWindows_CFoundation_CCollections_IKeyValuePair_2_HSTRING_HSTRING
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xe9bdaaf0, Data2: 0xcbf6, Data3 : 0x5c72, Data4 : (0xbe, 0x90, 0x29, 0xcb, 0xf3, 0xa1, 0x31, 0x9b)) }
// method not needed: First
} // IIterable_1__cg_CWindows_CFoundation_CCollections_IKeyValuePair_2_HSTRING_HSTRING
// closed interface type
public class IIterator_1__cg_CWindows_CFoundation_CCollections_IKeyValuePair_2_HSTRING_HSTRING
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x05eb86f1, Data2: 0x7140, Data3 : 0x5517, Data4 : (0xb8, 0x8d, 0xcb, 0xae, 0xbe, 0x57, 0xe6, 0xb1)) }
// method not needed: get_Current
// method not needed: get_HasCurrent
// method not needed: MoveNext
// method not needed: GetMany
} // IIterator_1__cg_CWindows_CFoundation_CCollections_IKeyValuePair_2_HSTRING_HSTRING
// closed interface type
public class IKeyValuePair_2_HSTRING_HSTRING
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x60310303, Data2: 0x49c5, Data3 : 0x52e6, Data4 : (0xab, 0xc6, 0xa9, 0xb3, 0x6e, 0xcc, 0xc7, 0x16)) }
// method not needed: get_Key
// method not needed: get_Value
} // IKeyValuePair_2_HSTRING_HSTRING
// closed interface type
public class IAsyncOperation_1_boolean
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xcdb5efb3, Data2: 0x5788, Data3 : 0x509d, Data4 : (0x9b, 0xe1, 0x71, 0xcc, 0xb8, 0xa3, 0x36, 0x2a)) }
    // [IsSpecialName] void put_Completed(Windows.Foundation.AsyncOperationCompletedHandler<bool>)
    private func _n_put_Completed(_ handler : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1_boolean>>) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1_boolean.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.put_Completed(pThis, handler))
        }
    }
    public func put_Completed(handler : Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1_boolean>) throws -> Void {
        try self._n_put_Completed(RawPointer(handler));
    }
    // [IsSpecialName] Windows.Foundation.AsyncOperationCompletedHandler<bool> get_Completed()
    private func _n_get_Completed(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1_boolean>>>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1_boolean.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_Completed(pThis, __presult))
        }
    }
    public func get_Completed() throws -> Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1_boolean> {
        var __result : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1_boolean>> = nil;
        try self._n_get_Completed(&__result);
        return ClosedGenerics.IAsyncOperationCompletedHandler_1_boolean(consuming: __result);
    }
    // bool GetResults()
    private func _n_GetResults(_ __presult: UnsafeMutablePointer<boolean>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperation_1_boolean.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.GetResults(pThis, __presult))
        }
    }
    public func GetResults() throws -> boolean {
        var __result : boolean = 0;
        try self._n_GetResults(&__result);
        return __result;
    }
    public var Completed : Optional<ClosedGenerics.IAsyncOperationCompletedHandler_1_boolean> {
        get throws {
            return try get_Completed();
        }
    }
} // IAsyncOperation_1_boolean
// closed generic delegate type
public class IAsyncOperationCompletedHandler_1_boolean
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xc1d3d1a2, Data2: 0xae17, Data3 : 0x5a5f, Data4 : (0xb5, 0xa2, 0xbd, 0xcc, 0x88, 0x44, 0x88, 0x9a)) }
    // [IsSpecialName] void Invoke(Windows.Foundation.IAsyncOperation<bool>, Windows.Foundation.AsyncStatus)
    private func _n_Invoke(_ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperation_1_boolean>>, _ asyncStatus : _q_CWindows_CFoundation_CAsyncStatus) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1_boolean.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Invoke(pThis, asyncInfo, asyncStatus))
        }
    }
    public func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1_boolean>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        try self._n_Invoke(RawPointer(asyncInfo), asyncStatus);
    }
} // IAsyncOperationCompletedHandler_1_boolean
// impl delegate type
open class AsyncOperationCompletedHandler_1_boolean
{
    private static var vtable: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1_booleanVtbl = .init(
    QueryInterface: {
        guard let pUnk = $0, let riid = $1, let ppvObject = $2 else {
            return E_INVALIDARG
        }
        switch riid.pointee {
        case IUnknown.IID, ClosedGenerics.IAsyncOperationCompletedHandler_1_boolean.IID:
            _ = pUnk.pointee.lpVtbl.pointee.AddRef(pUnk)
            ppvObject.pointee = UnsafeMutableRawPointer(pUnk)
            return S_OK
        default:
            ppvObject.pointee = nil
            return E_NOINTERFACE
        }
    },
    AddRef: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: AsyncOperationCompletedHandler_1_boolean.WithTrailingObjects.self, capacity: 1)
        _ = pinstance.pointee.container.retain()
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeUnretainedValue()))
        return __res;
    },
    Release: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: AsyncOperationCompletedHandler_1_boolean.WithTrailingObjects.self, capacity: 1)
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeRetainedValue()))
        return __res;
    },
    Invoke: {
        (pThis, _ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperation_1_boolean>>, _ asyncStatus : _q_CWindows_CFoundation_CAsyncStatus) in
        guard let self = AsyncOperationCompletedHandler_1_boolean.from_AsyncOperationCompletedHandler_1_boolean(pThis) else {
            return E_INVALIDARG
        }
        do {
            let _ret : Void = try self.Invoke(asyncInfo: ClosedGenerics.IAsyncOperation_1_boolean(asyncInfo), asyncStatus: asyncStatus)
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
        public var self_ref: AsyncOperationCompletedHandler_1_boolean? = nil
    }
    private struct WithTrailingObjects {
        public var interface_struct: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1_boolean
        public var container: Unmanaged<Container>
    }
    private var instance: WithTrailingObjects

    private var _cb : Optional<(Optional<ClosedGenerics.IAsyncOperation_1_boolean>, Windows.Foundation.AsyncStatus) throws -> Void>
    public init(cb : Optional<(Optional<ClosedGenerics.IAsyncOperation_1_boolean>, Windows.Foundation.AsyncStatus) throws -> Void> = nil) {
        _cb = cb
        self.instance = WithTrailingObjects(interface_struct: _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1_boolean(lpVtbl: &Self.vtable), container: Unmanaged<Container>.passRetained(Container()))
        self.instance.container.takeUnretainedValue().self_ref = self
    }
    private static func from_AsyncOperationCompletedHandler_1_boolean(_ pUnk: UnsafeMutableRawPointer?) -> AsyncOperationCompletedHandler_1_boolean? {
        return pUnk?.bindMemory(to: AsyncOperationCompletedHandler_1_boolean.WithTrailingObjects.self, capacity: 1).pointee.container.takeUnretainedValue().self_ref
    }

    open func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1_boolean>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        if let cb = _cb {
            return try cb(asyncInfo, asyncStatus)
        }
    }
    public func Interface() -> ClosedGenerics.IAsyncOperationCompletedHandler_1_boolean {
        return withUnsafeMutablePointer(to: &self.instance.interface_struct) {
            ClosedGenerics.IAsyncOperationCompletedHandler_1_boolean(UnsafeMutableRawPointer($0))
        }
    }
}
// wrap delegate type
open class foo_AsyncOperationCompletedHandler_1_boolean
{
    private var _self : ClosedGenerics.IAsyncOperationCompletedHandler_1_boolean;
    public init(plok: ClosedGenerics.IAsyncOperationCompletedHandler_1_boolean?) throws {
        _self = plok!
    }
    public func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperation_1_boolean>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        return try _self.Invoke(asyncInfo: asyncInfo, asyncStatus: asyncStatus);
    }
    public func Interface() -> ClosedGenerics.IAsyncOperationCompletedHandler_1_boolean {
        return _self
    }
}
// closed interface type
public class IReference_1_UINT64
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x6755e376, Data2: 0x53bb, Data3 : 0x568b, Data4 : (0xa1, 0x1d, 0x17, 0x23, 0x98, 0x68, 0x30, 0x9e)) }
// method not needed: get_Value
} // IReference_1_UINT64
// closed interface type
public class IAsyncOperationWithProgress_2_HSTRING_UINT64
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xc8bbcb29, Data2: 0x6b64, Data3 : 0x5ce2, Data4 : (0xa8, 0x31, 0x03, 0x8f, 0x6e, 0x02, 0x19, 0x9e)) }
    // [IsSpecialName] void put_Progress(Windows.Foundation.AsyncOperationProgressHandler<System.String,System.UInt64>)
    private func _n_put_Progress(_ handler : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationProgressHandler_2_HSTRING_UINT64>>) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperationWithProgress_2_HSTRING_UINT64.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.put_Progress(pThis, handler))
        }
    }
    public func put_Progress(handler : Optional<ClosedGenerics.IAsyncOperationProgressHandler_2_HSTRING_UINT64>) throws -> Void {
        try self._n_put_Progress(RawPointer(handler));
    }
    // [IsSpecialName] Windows.Foundation.AsyncOperationProgressHandler<System.String,System.UInt64> get_Progress()
    private func _n_get_Progress(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationProgressHandler_2_HSTRING_UINT64>>>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperationWithProgress_2_HSTRING_UINT64.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_Progress(pThis, __presult))
        }
    }
    public func get_Progress() throws -> Optional<ClosedGenerics.IAsyncOperationProgressHandler_2_HSTRING_UINT64> {
        var __result : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationProgressHandler_2_HSTRING_UINT64>> = nil;
        try self._n_get_Progress(&__result);
        return ClosedGenerics.IAsyncOperationProgressHandler_2_HSTRING_UINT64(consuming: __result);
    }
    // [IsSpecialName] void put_Completed(Windows.Foundation.AsyncOperationWithProgressCompletedHandler<System.String,System.UInt64>)
    private func _n_put_Completed(_ handler : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64>>) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperationWithProgress_2_HSTRING_UINT64.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.put_Completed(pThis, handler))
        }
    }
    public func put_Completed(handler : Optional<ClosedGenerics.IAsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64>) throws -> Void {
        try self._n_put_Completed(RawPointer(handler));
    }
    // [IsSpecialName] Windows.Foundation.AsyncOperationWithProgressCompletedHandler<System.String,System.UInt64> get_Completed()
    private func _n_get_Completed(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64>>>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperationWithProgress_2_HSTRING_UINT64.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_Completed(pThis, __presult))
        }
    }
    public func get_Completed() throws -> Optional<ClosedGenerics.IAsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64> {
        var __result : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64>> = nil;
        try self._n_get_Completed(&__result);
        return ClosedGenerics.IAsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64(consuming: __result);
    }
    // System.String GetResults()
    private func _n_GetResults(_ __presult: UnsafeMutablePointer<Optional<HSTRING>>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperationWithProgress_2_HSTRING_UINT64.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.GetResults(pThis, __presult))
        }
    }
    public func GetResults() throws -> Swift.String {
        var __result : Optional<HSTRING> = nil;
        try self._n_GetResults(&__result);
        return Swift.String(from: __result);
    }
    public var Progress : Optional<ClosedGenerics.IAsyncOperationProgressHandler_2_HSTRING_UINT64> {
        get throws {
            return try get_Progress();
        }
    }
    public var Completed : Optional<ClosedGenerics.IAsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64> {
        get throws {
            return try get_Completed();
        }
    }
} // IAsyncOperationWithProgress_2_HSTRING_UINT64
// closed generic delegate type
public class IAsyncOperationProgressHandler_2_HSTRING_UINT64
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x14da7de7, Data2: 0x40df, Data3 : 0x5d4c, Data4 : (0x82, 0x3f, 0xcf, 0x31, 0x06, 0x25, 0xad, 0x39)) }
    // [IsSpecialName] void Invoke(Windows.Foundation.IAsyncOperationWithProgress<System.String,System.UInt64>, System.UInt64)
    private func _n_Invoke(_ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationWithProgress_2_HSTRING_UINT64>>, _ progressInfo : UINT64) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperationProgressHandler_2_HSTRING_UINT64.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Invoke(pThis, asyncInfo, progressInfo))
        }
    }
    public func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperationWithProgress_2_HSTRING_UINT64>, progressInfo : Swift.UInt64) throws -> Void {
        try self._n_Invoke(RawPointer(asyncInfo), progressInfo);
    }
} // IAsyncOperationProgressHandler_2_HSTRING_UINT64
// impl delegate type
open class AsyncOperationProgressHandler_2_HSTRING_UINT64
{
    private static var vtable: _cg_CWindows_CFoundation_IAsyncOperationProgressHandler_2_HSTRING_UINT64Vtbl = .init(
    QueryInterface: {
        guard let pUnk = $0, let riid = $1, let ppvObject = $2 else {
            return E_INVALIDARG
        }
        switch riid.pointee {
        case IUnknown.IID, ClosedGenerics.IAsyncOperationProgressHandler_2_HSTRING_UINT64.IID:
            _ = pUnk.pointee.lpVtbl.pointee.AddRef(pUnk)
            ppvObject.pointee = UnsafeMutableRawPointer(pUnk)
            return S_OK
        default:
            ppvObject.pointee = nil
            return E_NOINTERFACE
        }
    },
    AddRef: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: AsyncOperationProgressHandler_2_HSTRING_UINT64.WithTrailingObjects.self, capacity: 1)
        _ = pinstance.pointee.container.retain()
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeUnretainedValue()))
        return __res;
    },
    Release: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: AsyncOperationProgressHandler_2_HSTRING_UINT64.WithTrailingObjects.self, capacity: 1)
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeRetainedValue()))
        return __res;
    },
    Invoke: {
        (pThis, _ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationWithProgress_2_HSTRING_UINT64>>, _ progressInfo : UINT64) in
        guard let self = AsyncOperationProgressHandler_2_HSTRING_UINT64.from_AsyncOperationProgressHandler_2_HSTRING_UINT64(pThis) else {
            return E_INVALIDARG
        }
        do {
            let _ret : Void = try self.Invoke(asyncInfo: ClosedGenerics.IAsyncOperationWithProgress_2_HSTRING_UINT64(asyncInfo), progressInfo: progressInfo)
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
        public var self_ref: AsyncOperationProgressHandler_2_HSTRING_UINT64? = nil
    }
    private struct WithTrailingObjects {
        public var interface_struct: _cg_CWindows_CFoundation_IAsyncOperationProgressHandler_2_HSTRING_UINT64
        public var container: Unmanaged<Container>
    }
    private var instance: WithTrailingObjects

    private var _cb : Optional<(Optional<ClosedGenerics.IAsyncOperationWithProgress_2_HSTRING_UINT64>, Swift.UInt64) throws -> Void>
    public init(cb : Optional<(Optional<ClosedGenerics.IAsyncOperationWithProgress_2_HSTRING_UINT64>, Swift.UInt64) throws -> Void> = nil) {
        _cb = cb
        self.instance = WithTrailingObjects(interface_struct: _cg_CWindows_CFoundation_IAsyncOperationProgressHandler_2_HSTRING_UINT64(lpVtbl: &Self.vtable), container: Unmanaged<Container>.passRetained(Container()))
        self.instance.container.takeUnretainedValue().self_ref = self
    }
    private static func from_AsyncOperationProgressHandler_2_HSTRING_UINT64(_ pUnk: UnsafeMutableRawPointer?) -> AsyncOperationProgressHandler_2_HSTRING_UINT64? {
        return pUnk?.bindMemory(to: AsyncOperationProgressHandler_2_HSTRING_UINT64.WithTrailingObjects.self, capacity: 1).pointee.container.takeUnretainedValue().self_ref
    }

    open func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperationWithProgress_2_HSTRING_UINT64>, progressInfo : Swift.UInt64) throws -> Void {
        if let cb = _cb {
            return try cb(asyncInfo, progressInfo)
        }
    }
    public func Interface() -> ClosedGenerics.IAsyncOperationProgressHandler_2_HSTRING_UINT64 {
        return withUnsafeMutablePointer(to: &self.instance.interface_struct) {
            ClosedGenerics.IAsyncOperationProgressHandler_2_HSTRING_UINT64(UnsafeMutableRawPointer($0))
        }
    }
}
// wrap delegate type
open class foo_AsyncOperationProgressHandler_2_HSTRING_UINT64
{
    private var _self : ClosedGenerics.IAsyncOperationProgressHandler_2_HSTRING_UINT64;
    public init(plok: ClosedGenerics.IAsyncOperationProgressHandler_2_HSTRING_UINT64?) throws {
        _self = plok!
    }
    public func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperationWithProgress_2_HSTRING_UINT64>, progressInfo : Swift.UInt64) throws -> Void {
        return try _self.Invoke(asyncInfo: asyncInfo, progressInfo: progressInfo);
    }
    public func Interface() -> ClosedGenerics.IAsyncOperationProgressHandler_2_HSTRING_UINT64 {
        return _self
    }
}
// closed generic delegate type
public class IAsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xbd75eebe, Data2: 0xe7b5, Data3 : 0x5af6, Data4 : (0x84, 0x15, 0xa4, 0xb9, 0xc9, 0x04, 0x52, 0x02)) }
    // [IsSpecialName] void Invoke(Windows.Foundation.IAsyncOperationWithProgress<System.String,System.UInt64>, Windows.Foundation.AsyncStatus)
    private func _n_Invoke(_ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationWithProgress_2_HSTRING_UINT64>>, _ asyncStatus : _q_CWindows_CFoundation_CAsyncStatus) throws {
        return try perform(as: _cg_CWindows_CFoundation_IAsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Invoke(pThis, asyncInfo, asyncStatus))
        }
    }
    public func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperationWithProgress_2_HSTRING_UINT64>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        try self._n_Invoke(RawPointer(asyncInfo), asyncStatus);
    }
} // IAsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64
// impl delegate type
open class AsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64
{
    private static var vtable: _cg_CWindows_CFoundation_IAsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64Vtbl = .init(
    QueryInterface: {
        guard let pUnk = $0, let riid = $1, let ppvObject = $2 else {
            return E_INVALIDARG
        }
        switch riid.pointee {
        case IUnknown.IID, ClosedGenerics.IAsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64.IID:
            _ = pUnk.pointee.lpVtbl.pointee.AddRef(pUnk)
            ppvObject.pointee = UnsafeMutableRawPointer(pUnk)
            return S_OK
        default:
            ppvObject.pointee = nil
            return E_NOINTERFACE
        }
    },
    AddRef: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: AsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64.WithTrailingObjects.self, capacity: 1)
        _ = pinstance.pointee.container.retain()
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeUnretainedValue()))
        return __res;
    },
    Release: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: AsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64.WithTrailingObjects.self, capacity: 1)
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeRetainedValue()))
        return __res;
    },
    Invoke: {
        (pThis, _ asyncInfo : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationWithProgress_2_HSTRING_UINT64>>, _ asyncStatus : _q_CWindows_CFoundation_CAsyncStatus) in
        guard let self = AsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64.from_AsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64(pThis) else {
            return E_INVALIDARG
        }
        do {
            let _ret : Void = try self.Invoke(asyncInfo: ClosedGenerics.IAsyncOperationWithProgress_2_HSTRING_UINT64(asyncInfo), asyncStatus: asyncStatus)
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
        public var self_ref: AsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64? = nil
    }
    private struct WithTrailingObjects {
        public var interface_struct: _cg_CWindows_CFoundation_IAsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64
        public var container: Unmanaged<Container>
    }
    private var instance: WithTrailingObjects

    private var _cb : Optional<(Optional<ClosedGenerics.IAsyncOperationWithProgress_2_HSTRING_UINT64>, Windows.Foundation.AsyncStatus) throws -> Void>
    public init(cb : Optional<(Optional<ClosedGenerics.IAsyncOperationWithProgress_2_HSTRING_UINT64>, Windows.Foundation.AsyncStatus) throws -> Void> = nil) {
        _cb = cb
        self.instance = WithTrailingObjects(interface_struct: _cg_CWindows_CFoundation_IAsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64(lpVtbl: &Self.vtable), container: Unmanaged<Container>.passRetained(Container()))
        self.instance.container.takeUnretainedValue().self_ref = self
    }
    private static func from_AsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64(_ pUnk: UnsafeMutableRawPointer?) -> AsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64? {
        return pUnk?.bindMemory(to: AsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64.WithTrailingObjects.self, capacity: 1).pointee.container.takeUnretainedValue().self_ref
    }

    open func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperationWithProgress_2_HSTRING_UINT64>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        if let cb = _cb {
            return try cb(asyncInfo, asyncStatus)
        }
    }
    public func Interface() -> ClosedGenerics.IAsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64 {
        return withUnsafeMutablePointer(to: &self.instance.interface_struct) {
            ClosedGenerics.IAsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64(UnsafeMutableRawPointer($0))
        }
    }
}
// wrap delegate type
open class foo_AsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64
{
    private var _self : ClosedGenerics.IAsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64;
    public init(plok: ClosedGenerics.IAsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64?) throws {
        _self = plok!
    }
    public func Invoke(asyncInfo : Optional<ClosedGenerics.IAsyncOperationWithProgress_2_HSTRING_UINT64>, asyncStatus : Windows.Foundation.AsyncStatus) throws -> Void {
        return try _self.Invoke(asyncInfo: asyncInfo, asyncStatus: asyncStatus);
    }
    public func Interface() -> ClosedGenerics.IAsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64 {
        return _self
    }
}
// closed generic delegate type
public class IEventHandler_1_IInspectable
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xc50898f6, Data2: 0xc536, Data3 : 0x5f47, Data4 : (0x85, 0x83, 0x8b, 0x2c, 0x24, 0x38, 0xa1, 0x3b)) }
    // [IsSpecialName] void Invoke(System.Object, System.Object)
    private func _n_Invoke(_ sender : Optional<UnsafeMutablePointer<CWinRT.IInspectable>>, _ args : Optional<UnsafeMutablePointer<CWinRT.IInspectable>>) throws {
        return try perform(as: _cg_CWindows_CFoundation_IEventHandler_1_IInspectable.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Invoke(pThis, sender, args))
        }
    }
    public func Invoke(sender : Optional<WinRT.IInspectable>, args : Optional<WinRT.IInspectable>) throws -> Void {
        try self._n_Invoke(RawPointer(sender), RawPointer(args));
    }
} // IEventHandler_1_IInspectable
// impl delegate type
open class EventHandler_1_IInspectable
{
    private static var vtable: _cg_CWindows_CFoundation_IEventHandler_1_IInspectableVtbl = .init(
    QueryInterface: {
        guard let pUnk = $0, let riid = $1, let ppvObject = $2 else {
            return E_INVALIDARG
        }
        switch riid.pointee {
        case IUnknown.IID, ClosedGenerics.IEventHandler_1_IInspectable.IID:
            _ = pUnk.pointee.lpVtbl.pointee.AddRef(pUnk)
            ppvObject.pointee = UnsafeMutableRawPointer(pUnk)
            return S_OK
        default:
            ppvObject.pointee = nil
            return E_NOINTERFACE
        }
    },
    AddRef: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: EventHandler_1_IInspectable.WithTrailingObjects.self, capacity: 1)
        _ = pinstance.pointee.container.retain()
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeUnretainedValue()))
        return __res;
    },
    Release: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: EventHandler_1_IInspectable.WithTrailingObjects.self, capacity: 1)
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeRetainedValue()))
        return __res;
    },
    Invoke: {
        (pThis, _ sender : Optional<UnsafeMutablePointer<CWinRT.IInspectable>>, _ args : Optional<UnsafeMutablePointer<CWinRT.IInspectable>>) in
        guard let self = EventHandler_1_IInspectable.from_EventHandler_1_IInspectable(pThis) else {
            return E_INVALIDARG
        }
        do {
            let _ret : Void = try self.Invoke(sender: WinRT.Object(plok: WinRT.IInspectable(sender)), args: WinRT.Object(plok: WinRT.IInspectable(args)))
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
        public var self_ref: EventHandler_1_IInspectable? = nil
    }
    private struct WithTrailingObjects {
        public var interface_struct: _cg_CWindows_CFoundation_IEventHandler_1_IInspectable
        public var container: Unmanaged<Container>
    }
    private var instance: WithTrailingObjects

    private var _cb : Optional<(Optional<WinRT.Object>, Optional<WinRT.Object>) throws -> Void>
    public init(cb : Optional<(Optional<WinRT.Object>, Optional<WinRT.Object>) throws -> Void> = nil) {
        _cb = cb
        self.instance = WithTrailingObjects(interface_struct: _cg_CWindows_CFoundation_IEventHandler_1_IInspectable(lpVtbl: &Self.vtable), container: Unmanaged<Container>.passRetained(Container()))
        self.instance.container.takeUnretainedValue().self_ref = self
    }
    private static func from_EventHandler_1_IInspectable(_ pUnk: UnsafeMutableRawPointer?) -> EventHandler_1_IInspectable? {
        return pUnk?.bindMemory(to: EventHandler_1_IInspectable.WithTrailingObjects.self, capacity: 1).pointee.container.takeUnretainedValue().self_ref
    }

    open func Invoke(sender : Optional<WinRT.Object>, args : Optional<WinRT.Object>) throws -> Void {
        if let cb = _cb {
            return try cb(sender, args)
        }
    }
    public func Interface() -> ClosedGenerics.IEventHandler_1_IInspectable {
        return withUnsafeMutablePointer(to: &self.instance.interface_struct) {
            ClosedGenerics.IEventHandler_1_IInspectable(UnsafeMutableRawPointer($0))
        }
    }
}
// wrap delegate type
open class foo_EventHandler_1_IInspectable
{
    private var _self : ClosedGenerics.IEventHandler_1_IInspectable;
    public init(plok: ClosedGenerics.IEventHandler_1_IInspectable?) throws {
        _self = plok!
    }
    public func Invoke(sender : Optional<WinRT.Object>, args : Optional<WinRT.Object>) throws -> Void {
        return try _self.Invoke(sender: sender!.GetInterface(), args: args!.GetInterface());
    }
    public func Interface() -> ClosedGenerics.IEventHandler_1_IInspectable {
        return _self
    }
}
// closed interface type
public class IVectorView_1_FLOAT
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x7bca64fd, Data2: 0x150c, Data3 : 0x5d50, Data4 : (0xb5, 0x6b, 0x9f, 0x4f, 0x47, 0x4c, 0x59, 0x30)) }
// method not needed: GetAt
// method not needed: get_Size
// method not needed: IndexOf
// method not needed: GetMany
} // IVectorView_1_FLOAT
// closed interface type
public class IVectorView_1_HSTRING
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x2f13c006, Data2: 0xa03a, Data3 : 0x5f69, Data4 : (0xb0, 0x90, 0x75, 0xa4, 0x3e, 0x33, 0x42, 0x3e)) }
// method not needed: GetAt
// method not needed: get_Size
// method not needed: IndexOf
// method not needed: GetMany
} // IVectorView_1_HSTRING
}
extension ClosedGenerics.IAsyncOperation_1_boolean : WinRT.Future {
    private final class MyCompletedHandler: ClosedGenerics.AsyncOperationCompletedHandler_1_boolean {
        private var hEvent: HANDLE
        public init(signal event: HANDLE) {
            self.hEvent = event
            super.init()
        }
        override func Invoke(asyncInfo: ClosedGenerics.IAsyncOperation_1_boolean?,
            asyncStatus: Windows.Foundation.AsyncStatus) throws {
            _ = SetEvent(self.hEvent)
        }
}
        public func get() throws -> boolean {
            let info: Windows.Foundation.IAsyncInfo = try QueryInterface()
            if try info.get_Status() == Windows.Foundation.AsyncStatus.Started {
            let event: HANDLE =
            CreateEventW(nil, /*bManualReset=*/true, /*DefaultValue=*/false, nil)
            // TODO(compnerd) validate event
            defer { _ = CloseHandle(event) }
            let completion: ClosedGenerics.AsyncOperationCompletedHandler_1_boolean =
            MyCompletedHandler(signal: event)
            try withExtendedLifetime(completion) {
            try self.put_Completed(handler: completion.Interface())
            _ = WaitForSingleObject(event, INFINITE)
            }
        }
        return try self.GetResults();
        }
}
extension ClosedGenerics.IAsyncOperationWithProgress_2_HSTRING_UINT64 : WinRT.Future {
    private final class MyCompletedHandler: ClosedGenerics.AsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64 {
        private var hEvent: HANDLE
        public init(signal event: HANDLE) {
            self.hEvent = event
            super.init()
        }
        override func Invoke(asyncInfo: ClosedGenerics.IAsyncOperationWithProgress_2_HSTRING_UINT64?,
            asyncStatus: Windows.Foundation.AsyncStatus) throws {
            _ = SetEvent(self.hEvent)
        }
}
        public func get() throws -> Swift.String {
            let info: Windows.Foundation.IAsyncInfo = try QueryInterface()
            if try info.get_Status() == Windows.Foundation.AsyncStatus.Started {
            let event: HANDLE =
            CreateEventW(nil, /*bManualReset=*/true, /*DefaultValue=*/false, nil)
            // TODO(compnerd) validate event
            defer { _ = CloseHandle(event) }
            let completion: ClosedGenerics.AsyncOperationWithProgressCompletedHandler_2_HSTRING_UINT64 =
            MyCompletedHandler(signal: event)
            try withExtendedLifetime(completion) {
            try self.put_Completed(handler: completion.Interface())
            _ = WaitForSingleObject(event, INFINITE)
            }
        }
        return try self.GetResults();
        }
}
