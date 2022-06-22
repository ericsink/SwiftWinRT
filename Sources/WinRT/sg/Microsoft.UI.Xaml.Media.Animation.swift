// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;

extension Microsoft.UI.Xaml.Media.Animation {
// type: Microsoft.UI.Xaml.Media.Animation.ITransition
// interface type
open class ITransition
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xe5b71956, Data2: 0x8e44, Data3 : 0x5a38, Data4 : (0xb4, 0x1e, 0x27, 0x4d, 0x70, 0x61, 0x02, 0xbf)) }
} // ITransition


// type: Microsoft.UI.Xaml.Media.Animation.Transition
// runtime class
open class Transition
    :
    Microsoft.UI.Xaml.DependencyObject
{
    private var _self : WinRT.Microsoft.UI.Xaml.Media.Animation.ITransition;
    internal init(plok: WinRT.Microsoft.UI.Xaml.Media.Animation.ITransition?) throws {
        _self = plok!
        try super.init(plok: _self.QueryInterface())
    }
    internal func Interface() -> WinRT.Microsoft.UI.Xaml.Media.Animation.ITransition { return _self; }
    // COMPOSABLE: Microsoft.UI.Xaml.Media.Animation.ITransitionFactory
// composable interface not needed: Microsoft.UI.Xaml.Media.Animation.ITransitionFactory
}

// type: Microsoft.UI.Xaml.Media.Animation.TransitionCollection
// runtime class
public class TransitionCollection
    :
    WinRT.Object
{
    private var _self : WinRT.ClosedGenerics.IVector_1__q_CMicrosoft_CUI_CXaml_CMedia_CAnimation_CTransition;
    internal init(plok: WinRT.ClosedGenerics.IVector_1__q_CMicrosoft_CUI_CXaml_CMedia_CAnimation_CTransition?) throws {
        _self = plok!
        try super.init(plok: _self.QueryInterface())
    }
    internal func Interface() -> WinRT.ClosedGenerics.IVector_1__q_CMicrosoft_CUI_CXaml_CMedia_CAnimation_CTransition { return _self; }
    public init() throws {
        _self = try RoActivateInstance("Microsoft.UI.Xaml.Media.Animation.TransitionCollection")
        try super.init(plok: _self.QueryInterface())
    }
    public func GetAt(index : Swift.UInt32) throws -> Optional<WinRT.Microsoft.UI.Xaml.Media.Animation.Transition> {
        let _ifc : WinRT.ClosedGenerics.IVector_1__q_CMicrosoft_CUI_CXaml_CMedia_CAnimation_CTransition = try _self.QueryInterface();
        return try WinRT.Microsoft.UI.Xaml.Media.Animation.Transition(plok: _ifc.GetAt(index: index));
    }
    public func get_Size() throws -> Swift.UInt32 {
        let _ifc : WinRT.ClosedGenerics.IVector_1__q_CMicrosoft_CUI_CXaml_CMedia_CAnimation_CTransition = try _self.QueryInterface();
        return try _ifc.get_Size();
    }
    public func GetView() throws -> Optional<WinRT.ClosedGenerics.IVectorView_1__q_CMicrosoft_CUI_CXaml_CMedia_CAnimation_CTransition> {
        let _ifc : WinRT.ClosedGenerics.IVector_1__q_CMicrosoft_CUI_CXaml_CMedia_CAnimation_CTransition = try _self.QueryInterface();
        return try _ifc.GetView();
    }
    public func IndexOf(value : Optional<WinRT.Microsoft.UI.Xaml.Media.Animation.Transition>, index : inout Swift.UInt32) throws -> boolean {
        let _ifc : WinRT.ClosedGenerics.IVector_1__q_CMicrosoft_CUI_CXaml_CMedia_CAnimation_CTransition = try _self.QueryInterface();
            var _tmp_out_index: Swift.UInt32 = 0;
        return try _ifc.IndexOf(value: value!.Interface(), index: &_tmp_out_index);
    }
    public func SetAt(index : Swift.UInt32, value : Optional<WinRT.Microsoft.UI.Xaml.Media.Animation.Transition>) throws -> Void {
        let _ifc : WinRT.ClosedGenerics.IVector_1__q_CMicrosoft_CUI_CXaml_CMedia_CAnimation_CTransition = try _self.QueryInterface();
        return try _ifc.SetAt(index: index, value: value!.Interface());
    }
    public func InsertAt(index : Swift.UInt32, value : Optional<WinRT.Microsoft.UI.Xaml.Media.Animation.Transition>) throws -> Void {
        let _ifc : WinRT.ClosedGenerics.IVector_1__q_CMicrosoft_CUI_CXaml_CMedia_CAnimation_CTransition = try _self.QueryInterface();
        return try _ifc.InsertAt(index: index, value: value!.Interface());
    }
    public func RemoveAt(index : Swift.UInt32) throws -> Void {
        let _ifc : WinRT.ClosedGenerics.IVector_1__q_CMicrosoft_CUI_CXaml_CMedia_CAnimation_CTransition = try _self.QueryInterface();
        return try _ifc.RemoveAt(index: index);
    }
    public func Append(value : Optional<WinRT.Microsoft.UI.Xaml.Media.Animation.Transition>) throws -> Void {
        let _ifc : WinRT.ClosedGenerics.IVector_1__q_CMicrosoft_CUI_CXaml_CMedia_CAnimation_CTransition = try _self.QueryInterface();
        return try _ifc.Append(value: value!.Interface());
    }
    public func RemoveAtEnd() throws -> Void {
        let _ifc : WinRT.ClosedGenerics.IVector_1__q_CMicrosoft_CUI_CXaml_CMedia_CAnimation_CTransition = try _self.QueryInterface();
        return try _ifc.RemoveAtEnd();
    }
    public func Clear() throws -> Void {
        let _ifc : WinRT.ClosedGenerics.IVector_1__q_CMicrosoft_CUI_CXaml_CMedia_CAnimation_CTransition = try _self.QueryInterface();
        return try _ifc.Clear();
    }
    public func GetMany(startIndex : Swift.UInt32, itemsLength : UINT32, items : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CMedia_CAnimation_CITransition>>) throws -> Swift.UInt32 {
        let _ifc : WinRT.ClosedGenerics.IVector_1__q_CMicrosoft_CUI_CXaml_CMedia_CAnimation_CTransition = try _self.QueryInterface();
        return try _ifc.GetMany(startIndex: startIndex, itemsLength: itemsLength, items: items);
    }
    public func ReplaceAll(itemsLength : UINT32, items : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CMedia_CAnimation_CITransition>>) throws -> Void {
        let _ifc : WinRT.ClosedGenerics.IVector_1__q_CMicrosoft_CUI_CXaml_CMedia_CAnimation_CTransition = try _self.QueryInterface();
        return try _ifc.ReplaceAll(itemsLength: itemsLength, items: items);
    }
    public var Size : Swift.UInt32 {
        get throws {
        let _ifc : WinRT.ClosedGenerics.IVector_1__q_CMicrosoft_CUI_CXaml_CMedia_CAnimation_CTransition = try _self.QueryInterface();
            return try _ifc.Size;
        }
    }
    // instance interface not needed: Windows.Foundation.Collections.IIterable`1[[Microsoft.UI.Xaml.Media.Animation.Transition, Microsoft, Version=255.255.255.255, Culture=neutral, PublicKeyToken=null, ContentType=WindowsRuntime]]
}

}
