// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;
@_spi(IUnknown) import WinRT;
import CWindowsSdk;

extension ClosedGenerics {
// closed interface type
public class IVector_1__q_CWindows_CWeb_CWebErrorStatus
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x61bc06e3, Data2: 0xb752, Data3 : 0x5b56, Data4 : (0x83, 0x74, 0x3b, 0x45, 0xa2, 0x14, 0x69, 0x3f)) }
    // Windows.Web.WebErrorStatus GetAt(System.UInt32)
    private func _n_GetAt(_ index : UINT32, _ __presult: UnsafeMutablePointer<_q_CWindows_CWeb_CWebErrorStatus>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_CCollections_IVector_1__q_CWindows_CWeb_CWebErrorStatus.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.GetAt(pThis, index, __presult))
        }
    }
    public func GetAt(index : Swift.UInt32) throws -> Windows.Web.WebErrorStatus {
        var __result : _q_CWindows_CWeb_CWebErrorStatus = _q_CWindows_CWeb_CWebErrorStatus_Unknown;
        try self._n_GetAt(index, &__result);
        return __result;
    }
    // [IsSpecialName] System.UInt32 get_Size()
    private func _n_get_Size(_ __presult: UnsafeMutablePointer<UINT32>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_CCollections_IVector_1__q_CWindows_CWeb_CWebErrorStatus.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_Size(pThis, __presult))
        }
    }
    public func get_Size() throws -> Swift.UInt32 {
        var __result : UINT32 = 0;
        try self._n_get_Size(&__result);
        return __result;
    }
    // Windows.Foundation.Collections.IVectorView<Windows.Web.WebErrorStatus> GetView()
    private func _n_GetView(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CWeb_CWebErrorStatus>>>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_CCollections_IVector_1__q_CWindows_CWeb_CWebErrorStatus.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.GetView(pThis, __presult))
        }
    }
    public func GetView() throws -> Optional<ClosedGenerics.IVectorView_1__q_CWindows_CWeb_CWebErrorStatus> {
        var __result : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CWindows_CWeb_CWebErrorStatus>> = nil;
        try self._n_GetView(&__result);
        return ClosedGenerics.IVectorView_1__q_CWindows_CWeb_CWebErrorStatus(consuming: __result);
    }
    // bool IndexOf(Windows.Web.WebErrorStatus, ref System.UInt32)
    private func _n_IndexOf(_ value : _q_CWindows_CWeb_CWebErrorStatus, _ index : UnsafeMutablePointer<UINT32>, _ __presult: UnsafeMutablePointer<boolean>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_CCollections_IVector_1__q_CWindows_CWeb_CWebErrorStatus.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.IndexOf(pThis, value, index, __presult))
        }
    }
    public func IndexOf(value : Windows.Web.WebErrorStatus, index : inout Swift.UInt32) throws -> boolean {
        var __result : boolean = 0;
            var _tmp_out_index: UINT32 = 0;
        try self._n_IndexOf(value, &_tmp_out_index, &__result);
            index = _tmp_out_index;
        return __result;
    }
    // void SetAt(System.UInt32, Windows.Web.WebErrorStatus)
    private func _n_SetAt(_ index : UINT32, _ value : _q_CWindows_CWeb_CWebErrorStatus) throws {
        return try perform(as: _cg_CWindows_CFoundation_CCollections_IVector_1__q_CWindows_CWeb_CWebErrorStatus.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.SetAt(pThis, index, value))
        }
    }
    public func SetAt(index : Swift.UInt32, value : Windows.Web.WebErrorStatus) throws -> Void {
        try self._n_SetAt(index, value);
    }
    // void InsertAt(System.UInt32, Windows.Web.WebErrorStatus)
    private func _n_InsertAt(_ index : UINT32, _ value : _q_CWindows_CWeb_CWebErrorStatus) throws {
        return try perform(as: _cg_CWindows_CFoundation_CCollections_IVector_1__q_CWindows_CWeb_CWebErrorStatus.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.InsertAt(pThis, index, value))
        }
    }
    public func InsertAt(index : Swift.UInt32, value : Windows.Web.WebErrorStatus) throws -> Void {
        try self._n_InsertAt(index, value);
    }
    // void RemoveAt(System.UInt32)
    private func _n_RemoveAt(_ index : UINT32) throws {
        return try perform(as: _cg_CWindows_CFoundation_CCollections_IVector_1__q_CWindows_CWeb_CWebErrorStatus.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.RemoveAt(pThis, index))
        }
    }
    public func RemoveAt(index : Swift.UInt32) throws -> Void {
        try self._n_RemoveAt(index);
    }
    // void Append(Windows.Web.WebErrorStatus)
    private func _n_Append(_ value : _q_CWindows_CWeb_CWebErrorStatus) throws {
        return try perform(as: _cg_CWindows_CFoundation_CCollections_IVector_1__q_CWindows_CWeb_CWebErrorStatus.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Append(pThis, value))
        }
    }
    public func Append(value : Windows.Web.WebErrorStatus) throws -> Void {
        try self._n_Append(value);
    }
    // void RemoveAtEnd()
    private func _n_RemoveAtEnd() throws {
        return try perform(as: _cg_CWindows_CFoundation_CCollections_IVector_1__q_CWindows_CWeb_CWebErrorStatus.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.RemoveAtEnd(pThis))
        }
    }
    public func RemoveAtEnd() throws -> Void {
        try self._n_RemoveAtEnd();
    }
    // void Clear()
    private func _n_Clear() throws {
        return try perform(as: _cg_CWindows_CFoundation_CCollections_IVector_1__q_CWindows_CWeb_CWebErrorStatus.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Clear(pThis))
        }
    }
    public func Clear() throws -> Void {
        try self._n_Clear();
    }
    // System.UInt32 GetMany(System.UInt32, Windows.Web.WebErrorStatus[])
    private func _n_GetMany(_ startIndex : UINT32, _ itemsLength : UINT32, _ items : Optional<UnsafeMutablePointer<_q_CWindows_CWeb_CWebErrorStatus>>, _ __presult: UnsafeMutablePointer<UINT32>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_CCollections_IVector_1__q_CWindows_CWeb_CWebErrorStatus.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.GetMany(pThis, startIndex, itemsLength, items, __presult))
        }
    }
    public func GetMany(startIndex : Swift.UInt32, itemsLength : UINT32, items : Optional<UnsafeMutablePointer<_q_CWindows_CWeb_CWebErrorStatus>>) throws -> Swift.UInt32 {
        var __result : UINT32 = 0;
        try self._n_GetMany(startIndex, itemsLength, items, &__result);
        return __result;
    }
    // void ReplaceAll(Windows.Web.WebErrorStatus[])
    private func _n_ReplaceAll(_ itemsLength : UINT32, _ items : Optional<UnsafeMutablePointer<_q_CWindows_CWeb_CWebErrorStatus>>) throws {
        return try perform(as: _cg_CWindows_CFoundation_CCollections_IVector_1__q_CWindows_CWeb_CWebErrorStatus.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.ReplaceAll(pThis, itemsLength, items))
        }
    }
    public func ReplaceAll(itemsLength : UINT32, items : Optional<UnsafeMutablePointer<_q_CWindows_CWeb_CWebErrorStatus>>) throws -> Void {
        try self._n_ReplaceAll(itemsLength, items);
    }
    public var Size : Swift.UInt32 {
        get throws {
            return try get_Size();
        }
    }
} // IVector_1__q_CWindows_CWeb_CWebErrorStatus
// closed interface type
public class IVectorView_1__q_CWindows_CWeb_CWebErrorStatus
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xf5d10d42, Data2: 0xa776, Data3 : 0x533a, Data4 : (0x8f, 0x4b, 0x2e, 0x1c, 0x6e, 0x5b, 0xbf, 0x24)) }
// method not needed: GetAt
// method not needed: get_Size
// method not needed: IndexOf
// method not needed: GetMany
} // IVectorView_1__q_CWindows_CWeb_CWebErrorStatus
// closed interface type
public class IReference_1__q_CWindows_CWeb_CWebErrorStatus
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xf2b26336, Data2: 0x6a9d, Data3 : 0x54de, Data4 : (0x8e, 0xca, 0x00, 0xd6, 0xc8, 0x71, 0xe4, 0x69)) }
// method not needed: get_Value
} // IReference_1__q_CWindows_CWeb_CWebErrorStatus
}
