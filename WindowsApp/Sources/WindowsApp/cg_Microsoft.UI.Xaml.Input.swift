// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;
import CWindowsSdk;
@_spi(IUnknown) import WinRT;
import WindowsSdk;

extension ClosedGenerics {
// closed interface type
public class IVectorView_1__q_CMicrosoft_CUI_CXaml_CInput_CPointer
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x81082898, Data2: 0xc342, Data3 : 0x5b9f, Data4 : (0x9f, 0xcc, 0x09, 0x27, 0x88, 0x1f, 0x30, 0xad)) }
// method not needed: GetAt
// method not needed: get_Size
// method not needed: IndexOf
// method not needed: GetMany
} // IVectorView_1__q_CMicrosoft_CUI_CXaml_CInput_CPointer
// closed interface type
public class IVector_1__q_CMicrosoft_CUI_CXaml_CInput_CKeyboardAccelerator
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x0db091c3, Data2: 0x8538, Data3 : 0x5d25, Data4 : (0x93, 0x7f, 0xdb, 0x6e, 0x00, 0x3e, 0x1f, 0x71)) }
    // Microsoft.UI.Xaml.Input.KeyboardAccelerator GetAt(System.UInt32)
    private func _n_GetAt(_ index : UINT32, _ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CInput_CIKeyboardAccelerator>>>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_CCollections_IVector_1__q_CMicrosoft_CUI_CXaml_CInput_CKeyboardAccelerator.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.GetAt(pThis, index, __presult))
        }
    }
    public func GetAt(index : Swift.UInt32) throws -> Optional<Microsoft.UI.Xaml.Input.IKeyboardAccelerator> {
        var __result : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CInput_CIKeyboardAccelerator>> = nil;
        try self._n_GetAt(index, &__result);
        return Microsoft.UI.Xaml.Input.IKeyboardAccelerator(consuming: __result);
    }
    // [IsSpecialName] System.UInt32 get_Size()
    private func _n_get_Size(_ __presult: UnsafeMutablePointer<UINT32>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_CCollections_IVector_1__q_CMicrosoft_CUI_CXaml_CInput_CKeyboardAccelerator.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_Size(pThis, __presult))
        }
    }
    public func get_Size() throws -> Swift.UInt32 {
        var __result : UINT32 = 0;
        try self._n_get_Size(&__result);
        return __result;
    }
    // Windows.Foundation.Collections.IVectorView<Microsoft.UI.Xaml.Input.KeyboardAccelerator> GetView()
    private func _n_GetView(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CMicrosoft_CUI_CXaml_CInput_CKeyboardAccelerator>>>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_CCollections_IVector_1__q_CMicrosoft_CUI_CXaml_CInput_CKeyboardAccelerator.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.GetView(pThis, __presult))
        }
    }
    public func GetView() throws -> Optional<ClosedGenerics.IVectorView_1__q_CMicrosoft_CUI_CXaml_CInput_CKeyboardAccelerator> {
        var __result : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_CCollections_IVectorView_1__q_CMicrosoft_CUI_CXaml_CInput_CKeyboardAccelerator>> = nil;
        try self._n_GetView(&__result);
        return ClosedGenerics.IVectorView_1__q_CMicrosoft_CUI_CXaml_CInput_CKeyboardAccelerator(consuming: __result);
    }
    // bool IndexOf(Microsoft.UI.Xaml.Input.KeyboardAccelerator, ref System.UInt32)
    private func _n_IndexOf(_ value : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CInput_CIKeyboardAccelerator>>, _ index : UnsafeMutablePointer<UINT32>, _ __presult: UnsafeMutablePointer<boolean>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_CCollections_IVector_1__q_CMicrosoft_CUI_CXaml_CInput_CKeyboardAccelerator.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.IndexOf(pThis, value, index, __presult))
        }
    }
    public func IndexOf(value : Optional<Microsoft.UI.Xaml.Input.IKeyboardAccelerator>, index : inout Swift.UInt32) throws -> boolean {
        var __result : boolean = 0;
            var _tmp_out_index: UINT32 = 0;
        try self._n_IndexOf(RawPointer(value), &_tmp_out_index, &__result);
            index = _tmp_out_index;
        return __result;
    }
    // void SetAt(System.UInt32, Microsoft.UI.Xaml.Input.KeyboardAccelerator)
    private func _n_SetAt(_ index : UINT32, _ value : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CInput_CIKeyboardAccelerator>>) throws {
        return try perform(as: _cg_CWindows_CFoundation_CCollections_IVector_1__q_CMicrosoft_CUI_CXaml_CInput_CKeyboardAccelerator.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.SetAt(pThis, index, value))
        }
    }
    public func SetAt(index : Swift.UInt32, value : Optional<Microsoft.UI.Xaml.Input.IKeyboardAccelerator>) throws -> Void {
        try self._n_SetAt(index, RawPointer(value));
    }
    // void InsertAt(System.UInt32, Microsoft.UI.Xaml.Input.KeyboardAccelerator)
    private func _n_InsertAt(_ index : UINT32, _ value : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CInput_CIKeyboardAccelerator>>) throws {
        return try perform(as: _cg_CWindows_CFoundation_CCollections_IVector_1__q_CMicrosoft_CUI_CXaml_CInput_CKeyboardAccelerator.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.InsertAt(pThis, index, value))
        }
    }
    public func InsertAt(index : Swift.UInt32, value : Optional<Microsoft.UI.Xaml.Input.IKeyboardAccelerator>) throws -> Void {
        try self._n_InsertAt(index, RawPointer(value));
    }
    // void RemoveAt(System.UInt32)
    private func _n_RemoveAt(_ index : UINT32) throws {
        return try perform(as: _cg_CWindows_CFoundation_CCollections_IVector_1__q_CMicrosoft_CUI_CXaml_CInput_CKeyboardAccelerator.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.RemoveAt(pThis, index))
        }
    }
    public func RemoveAt(index : Swift.UInt32) throws -> Void {
        try self._n_RemoveAt(index);
    }
    // void Append(Microsoft.UI.Xaml.Input.KeyboardAccelerator)
    private func _n_Append(_ value : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CInput_CIKeyboardAccelerator>>) throws {
        return try perform(as: _cg_CWindows_CFoundation_CCollections_IVector_1__q_CMicrosoft_CUI_CXaml_CInput_CKeyboardAccelerator.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Append(pThis, value))
        }
    }
    public func Append(value : Optional<Microsoft.UI.Xaml.Input.IKeyboardAccelerator>) throws -> Void {
        try self._n_Append(RawPointer(value));
    }
    // void RemoveAtEnd()
    private func _n_RemoveAtEnd() throws {
        return try perform(as: _cg_CWindows_CFoundation_CCollections_IVector_1__q_CMicrosoft_CUI_CXaml_CInput_CKeyboardAccelerator.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.RemoveAtEnd(pThis))
        }
    }
    public func RemoveAtEnd() throws -> Void {
        try self._n_RemoveAtEnd();
    }
    // void Clear()
    private func _n_Clear() throws {
        return try perform(as: _cg_CWindows_CFoundation_CCollections_IVector_1__q_CMicrosoft_CUI_CXaml_CInput_CKeyboardAccelerator.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Clear(pThis))
        }
    }
    public func Clear() throws -> Void {
        try self._n_Clear();
    }
    // System.UInt32 GetMany(System.UInt32, Microsoft.UI.Xaml.Input.KeyboardAccelerator[])
    private func _n_GetMany(_ startIndex : UINT32, _ itemsLength : UINT32, _ items : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CInput_CIKeyboardAccelerator>>, _ __presult: UnsafeMutablePointer<UINT32>?) throws {
        return try perform(as: _cg_CWindows_CFoundation_CCollections_IVector_1__q_CMicrosoft_CUI_CXaml_CInput_CKeyboardAccelerator.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.GetMany(pThis, startIndex, itemsLength, items, __presult))
        }
    }
    public func GetMany(startIndex : Swift.UInt32, itemsLength : UINT32, items : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CInput_CIKeyboardAccelerator>>) throws -> Swift.UInt32 {
        var __result : UINT32 = 0;
        try self._n_GetMany(startIndex, itemsLength, items, &__result);
        return __result;
    }
    // void ReplaceAll(Microsoft.UI.Xaml.Input.KeyboardAccelerator[])
    private func _n_ReplaceAll(_ itemsLength : UINT32, _ items : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CInput_CIKeyboardAccelerator>>) throws {
        return try perform(as: _cg_CWindows_CFoundation_CCollections_IVector_1__q_CMicrosoft_CUI_CXaml_CInput_CKeyboardAccelerator.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.ReplaceAll(pThis, itemsLength, items))
        }
    }
    public func ReplaceAll(itemsLength : UINT32, items : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CInput_CIKeyboardAccelerator>>) throws -> Void {
        try self._n_ReplaceAll(itemsLength, items);
    }
    public var Size : Swift.UInt32 {
        get throws {
            return try get_Size();
        }
    }
} // IVector_1__q_CMicrosoft_CUI_CXaml_CInput_CKeyboardAccelerator
// closed interface type
public class IVectorView_1__q_CMicrosoft_CUI_CXaml_CInput_CKeyboardAccelerator
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x4d4dfa1a, Data2: 0x7153, Data3 : 0x51f3, Data4 : (0x80, 0x36, 0x6b, 0x61, 0xde, 0x68, 0xbc, 0xa8)) }
// method not needed: GetAt
// method not needed: get_Size
// method not needed: IndexOf
// method not needed: GetMany
} // IVectorView_1__q_CMicrosoft_CUI_CXaml_CInput_CKeyboardAccelerator
}
