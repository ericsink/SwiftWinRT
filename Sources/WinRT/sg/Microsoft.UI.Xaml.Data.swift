// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;

extension Microsoft.UI.Xaml.Data {
// type: Microsoft.UI.Xaml.Data.BindingBase
// runtime class
open class BindingBase
    :
    Microsoft.UI.Xaml.DependencyObject
{
    private var _self : WinRT.Microsoft.UI.Xaml.Data.IBindingBase;
    internal init(plok: WinRT.Microsoft.UI.Xaml.Data.IBindingBase?) throws {
        _self = plok!
        try super.init(plok: _self.QueryInterface())
    }
    internal func Interface() -> WinRT.Microsoft.UI.Xaml.Data.IBindingBase { return _self; }
    // COMPOSABLE: Microsoft.UI.Xaml.Data.IBindingBaseFactory
    public override init(baseInterface : Optional<WinRT.IInspectable>, innerInterface : inout Optional<WinRT.IInspectable>) throws {
        let _af : IBindingBaseFactory = try RoGetActivationFactory(HString("Microsoft.UI.Xaml.Data.BindingBase"));
        _self = try _af.CreateInstance(baseInterface: baseInterface, innerInterface: &innerInterface)!;
        try super.init(plok: _self.QueryInterface())
    }
    public convenience init() throws {
        var _inn : Optional<WinRT.IInspectable> = nil
        try self.init(baseInterface: nil, innerInterface: &_inn)
    }
}

// type: Microsoft.UI.Xaml.Data.BindingExpression
// runtime class
open class BindingExpression
    :
    Microsoft.UI.Xaml.Data.BindingExpressionBase
{
    private var _self : WinRT.Microsoft.UI.Xaml.Data.IBindingExpression;
    internal init(plok: WinRT.Microsoft.UI.Xaml.Data.IBindingExpression?) throws {
        _self = plok!
        try super.init(plok: _self.QueryInterface())
    }
    internal func Interface() -> WinRT.Microsoft.UI.Xaml.Data.IBindingExpression { return _self; }
    // COMPOSABLE: Microsoft.UI.Xaml.Data.IBindingExpressionFactory
// composable interface not needed: Microsoft.UI.Xaml.Data.IBindingExpressionFactory
    // method not needed: get_DataItem
    // method not needed: get_ParentBinding
    // method not needed: UpdateSource
}

// type: Microsoft.UI.Xaml.Data.BindingExpressionBase
// runtime class
open class BindingExpressionBase
{
    private var _self : WinRT.Microsoft.UI.Xaml.Data.IBindingExpressionBase;
    internal init(plok: WinRT.Microsoft.UI.Xaml.Data.IBindingExpressionBase?) throws {
        _self = plok!
    }
    internal func Interface() -> WinRT.Microsoft.UI.Xaml.Data.IBindingExpressionBase { return _self; }
    // COMPOSABLE: Microsoft.UI.Xaml.Data.IBindingExpressionBaseFactory
// composable interface not needed: Microsoft.UI.Xaml.Data.IBindingExpressionBaseFactory
}

// type: Microsoft.UI.Xaml.Data.IBindingBase
// interface type
open class IBindingBase
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x91ddd141, Data2: 0x5944, Data3 : 0x50ef, Data4 : (0xb8, 0x5e, 0x21, 0x8e, 0x46, 0x3f, 0x7a, 0x73)) }
} // IBindingBase


// type: Microsoft.UI.Xaml.Data.IBindingBaseFactory
// interface type
// COMPOSITION INTERFACE
open class IBindingBaseFactory
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xc8a866c5, Data2: 0xf6f3, Data3 : 0x5f7a, Data4 : (0x95, 0x92, 0xd3, 0x85, 0xaf, 0x48, 0xbd, 0x8f)) }
    // Microsoft.UI.Xaml.Data.BindingBase CreateInstance(System.Object, ref System.Object)
    public func _n_CreateInstance(_ baseInterface : Optional<UnsafeMutablePointer<CWinRT.IInspectable>>, _ innerInterface : UnsafeMutablePointer<Optional<UnsafeMutablePointer<CWinRT.IInspectable>>>, _ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CData_CIBindingBase>>>?) throws {
        return try perform(as: _q_CMicrosoft_CUI_CXaml_CData_CIBindingBaseFactory.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.CreateInstance(pThis, baseInterface, innerInterface, __presult))
        }
    }
    public func CreateInstance(baseInterface : Optional<WinRT.IInspectable>, innerInterface : inout Optional<WinRT.IInspectable>) throws -> Optional<WinRT.Microsoft.UI.Xaml.Data.IBindingBase> {
        var __result : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CData_CIBindingBase>> = nil;
            var _tmp_out_innerInterface: Optional<UnsafeMutablePointer<CWinRT.IInspectable>> = nil;
        try self._n_CreateInstance(RawPointer(baseInterface), &_tmp_out_innerInterface, &__result);
            innerInterface = WinRT.IInspectable(consuming: _tmp_out_innerInterface);
        return WinRT.Microsoft.UI.Xaml.Data.IBindingBase(consuming: __result);
    }
} // IBindingBaseFactory


// type: Microsoft.UI.Xaml.Data.IBindingExpression
// interface type
open class IBindingExpression
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x4c023916, Data2: 0x37bc, Data3 : 0x5b07, Data4 : (0xbc, 0x9d, 0x15, 0xc5, 0x47, 0xbd, 0x9b, 0x26)) }
// method not needed: get_DataItem
// method not needed: get_ParentBinding
// method not needed: UpdateSource
} // IBindingExpression


// type: Microsoft.UI.Xaml.Data.IBindingExpressionBase
// interface type
open class IBindingExpressionBase
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x8825e5a9, Data2: 0xd9a3, Data3 : 0x5e87, Data4 : (0xbc, 0xd8, 0xc6, 0x31, 0x33, 0xd2, 0x90, 0x29)) }
} // IBindingExpressionBase


// type: Microsoft.UI.Xaml.Data.IValueConverter
// interface type
open class IValueConverter
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xafdd2bff, Data2: 0x10f5, Data3 : 0x5173, Data4 : (0xb7, 0xc0, 0x35, 0x90, 0xbd, 0x96, 0xcb, 0x35)) }
// method not needed: Convert
// method not needed: ConvertBack
} // IValueConverter


}
