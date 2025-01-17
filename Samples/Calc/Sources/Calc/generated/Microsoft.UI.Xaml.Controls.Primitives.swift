// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;
@_spi(IUnknown) import WinRT;
import C;

extension Microsoft.UI.Xaml.Controls.Primitives {
// type: Microsoft.UI.Xaml.Controls.Primitives.FlyoutBase
// runtime class
open class FlyoutBase
    :
    Microsoft.UI.Xaml.DependencyObject
{
    private var _self : Microsoft.UI.Xaml.Controls.Primitives.IFlyoutBase;
    public init(plok: Microsoft.UI.Xaml.Controls.Primitives.IFlyoutBase?) throws {
        _self = plok!
        try super.init(plok: _self.QueryInterface())
    }
    public func Interface() -> Microsoft.UI.Xaml.Controls.Primitives.IFlyoutBase { return _self; }
    // COMPOSABLE: Microsoft.UI.Xaml.Controls.Primitives.IFlyoutBaseFactory
    public override init() throws {
        var _inn : Optional<WinRT.IInspectable> = nil
        let _af : IFlyoutBaseFactory = try RoGetActivationFactory("Microsoft.UI.Xaml.Controls.Primitives.FlyoutBase");
        let baseInterface : Optional<WinRT.IInspectable> = nil;
        _self = try _af.CreateInstance(baseInterface: baseInterface, innerInterface: &_inn)!;
        try super.init(plok: _self.QueryInterface())
    }
    // static interface not needed: Microsoft.UI.Xaml.Controls.Primitives.IFlyoutBaseStatics
    // method not needed: get_Placement
    // method not needed: put_Placement
    // method not needed: get_Target
    // method not needed: get_AllowFocusOnInteraction
    // method not needed: put_AllowFocusOnInteraction
    // method not needed: get_LightDismissOverlayMode
    // method not needed: put_LightDismissOverlayMode
    // method not needed: get_AllowFocusWhenDisabled
    // method not needed: put_AllowFocusWhenDisabled
    // method not needed: get_ShowMode
    // method not needed: put_ShowMode
    // method not needed: get_InputDevicePrefersPrimaryCommands
    // method not needed: get_AreOpenCloseAnimationsEnabled
    // method not needed: put_AreOpenCloseAnimationsEnabled
    // method not needed: get_ShouldConstrainToRootBounds
    // method not needed: put_ShouldConstrainToRootBounds
    // method not needed: get_IsConstrainedToRootBounds
    // method not needed: get_ElementSoundMode
    // method not needed: put_ElementSoundMode
    // method not needed: get_OverlayInputPassThroughElement
    // method not needed: put_OverlayInputPassThroughElement
    // method not needed: get_IsOpen
    // method not needed: get_XamlRoot
    // method not needed: put_XamlRoot
    // method not needed: add_Opened
    // method not needed: remove_Opened
    // method not needed: add_Closed
    // method not needed: remove_Closed
    // method not needed: add_Opening
    // method not needed: remove_Opening
    // method not needed: add_Closing
    // method not needed: remove_Closing
    // method not needed: ShowAt
    // method not needed: ShowAt
    // method not needed: Hide
    // method not needed: TryInvokeKeyboardAccelerator
    // instance interface not needed: Microsoft.UI.Xaml.Controls.Primitives.IFlyoutBaseOverrides
}

// type: Microsoft.UI.Xaml.Controls.Primitives.IFlyoutBase
// interface type
open class IFlyoutBase
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xbb6603bf, Data2: 0x744d, Data3 : 0x5c31, Data4 : (0xa8, 0x7d, 0x74, 0x43, 0x94, 0x63, 0x4d, 0x77)) }
// method not needed: get_Placement
// method not needed: put_Placement
// method not needed: get_Target
// method not needed: get_AllowFocusOnInteraction
// method not needed: put_AllowFocusOnInteraction
// method not needed: get_LightDismissOverlayMode
// method not needed: put_LightDismissOverlayMode
// method not needed: get_AllowFocusWhenDisabled
// method not needed: put_AllowFocusWhenDisabled
// method not needed: get_ShowMode
// method not needed: put_ShowMode
// method not needed: get_InputDevicePrefersPrimaryCommands
// method not needed: get_AreOpenCloseAnimationsEnabled
// method not needed: put_AreOpenCloseAnimationsEnabled
// method not needed: get_ShouldConstrainToRootBounds
// method not needed: put_ShouldConstrainToRootBounds
// method not needed: get_IsConstrainedToRootBounds
// method not needed: get_ElementSoundMode
// method not needed: put_ElementSoundMode
// method not needed: get_OverlayInputPassThroughElement
// method not needed: put_OverlayInputPassThroughElement
// method not needed: get_IsOpen
// method not needed: get_XamlRoot
// method not needed: put_XamlRoot
// method not needed: add_Opened
// method not needed: remove_Opened
// method not needed: add_Closed
// method not needed: remove_Closed
// method not needed: add_Opening
// method not needed: remove_Opening
// method not needed: add_Closing
// method not needed: remove_Closing
// method not needed: ShowAt
// method not needed: ShowAtWithOptions
// method not needed: Hide
// method not needed: TryInvokeKeyboardAccelerator
} // IFlyoutBase


// type: Microsoft.UI.Xaml.Controls.Primitives.IFlyoutBaseFactory
// interface type
// COMPOSITION INTERFACE
open class IFlyoutBaseFactory
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x006d738f, Data2: 0x7c91, Data3 : 0x5ef3, Data4 : (0x8a, 0x80, 0xa5, 0x48, 0x10, 0x8d, 0xab, 0x8b)) }
    // Microsoft.UI.Xaml.Controls.Primitives.FlyoutBase CreateInstance(System.Object, ref System.Object)
    private func _n_CreateInstance(_ baseInterface : Optional<UnsafeMutablePointer<CWinRT.IInspectable>>, _ innerInterface : UnsafeMutablePointer<Optional<UnsafeMutablePointer<CWinRT.IInspectable>>>, _ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CControls_CPrimitives_CIFlyoutBase>>>?) throws {
        return try perform(as: _q_CMicrosoft_CUI_CXaml_CControls_CPrimitives_CIFlyoutBaseFactory.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.CreateInstance(pThis, baseInterface, innerInterface, __presult))
        }
    }
    public func CreateInstance(baseInterface : Optional<WinRT.IInspectable>, innerInterface : inout Optional<WinRT.IInspectable>) throws -> Optional<Microsoft.UI.Xaml.Controls.Primitives.IFlyoutBase> {
        var __result : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CControls_CPrimitives_CIFlyoutBase>> = nil;
            var _tmp_out_innerInterface: Optional<UnsafeMutablePointer<CWinRT.IInspectable>> = nil;
        try self._n_CreateInstance(RawPointer(baseInterface), &_tmp_out_innerInterface, &__result);
            innerInterface = WinRT.IInspectable(consuming: _tmp_out_innerInterface);
        return Microsoft.UI.Xaml.Controls.Primitives.IFlyoutBase(consuming: __result);
    }
} // IFlyoutBaseFactory


// type: Microsoft.UI.Xaml.Controls.Primitives.ISelector
// interface type
open class ISelector
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x8f7e2159, Data2: 0xe61d, Data3 : 0x576f, Data4 : (0x84, 0x76, 0xf8, 0x3f, 0xde, 0x3d, 0x68, 0x9e)) }
    // [IsSpecialName] System.Int32 get_SelectedIndex()
    private func _n_get_SelectedIndex(_ __presult: UnsafeMutablePointer<INT32>?) throws {
        return try perform(as: _q_CMicrosoft_CUI_CXaml_CControls_CPrimitives_CISelector.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_SelectedIndex(pThis, __presult))
        }
    }
    public func get_SelectedIndex() throws -> Swift.Int32 {
        var __result : INT32 = 0;
        try self._n_get_SelectedIndex(&__result);
        return __result;
    }
    // [IsSpecialName] void put_SelectedIndex(System.Int32)
    private func _n_put_SelectedIndex(_ value : INT32) throws {
        return try perform(as: _q_CMicrosoft_CUI_CXaml_CControls_CPrimitives_CISelector.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.put_SelectedIndex(pThis, value))
        }
    }
    public func put_SelectedIndex(value : Swift.Int32) throws -> Void {
        try self._n_put_SelectedIndex(value);
    }
    // [IsSpecialName] System.Object get_SelectedItem()
    private func _n_get_SelectedItem(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<CWinRT.IInspectable>>>?) throws {
        return try perform(as: _q_CMicrosoft_CUI_CXaml_CControls_CPrimitives_CISelector.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_SelectedItem(pThis, __presult))
        }
    }
    public func get_SelectedItem() throws -> Optional<WinRT.IInspectable> {
        var __result : Optional<UnsafeMutablePointer<CWinRT.IInspectable>> = nil;
        try self._n_get_SelectedItem(&__result);
        return WinRT.IInspectable(consuming: __result);
    }
    // [IsSpecialName] void put_SelectedItem(System.Object)
    private func _n_put_SelectedItem(_ value : Optional<UnsafeMutablePointer<CWinRT.IInspectable>>) throws {
        return try perform(as: _q_CMicrosoft_CUI_CXaml_CControls_CPrimitives_CISelector.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.put_SelectedItem(pThis, value))
        }
    }
    public func put_SelectedItem(value : Optional<WinRT.IInspectable>) throws -> Void {
        try self._n_put_SelectedItem(RawPointer(value));
    }
    // [IsSpecialName] System.Object get_SelectedValue()
    private func _n_get_SelectedValue(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<CWinRT.IInspectable>>>?) throws {
        return try perform(as: _q_CMicrosoft_CUI_CXaml_CControls_CPrimitives_CISelector.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_SelectedValue(pThis, __presult))
        }
    }
    public func get_SelectedValue() throws -> Optional<WinRT.IInspectable> {
        var __result : Optional<UnsafeMutablePointer<CWinRT.IInspectable>> = nil;
        try self._n_get_SelectedValue(&__result);
        return WinRT.IInspectable(consuming: __result);
    }
    // [IsSpecialName] void put_SelectedValue(System.Object)
    private func _n_put_SelectedValue(_ value : Optional<UnsafeMutablePointer<CWinRT.IInspectable>>) throws {
        return try perform(as: _q_CMicrosoft_CUI_CXaml_CControls_CPrimitives_CISelector.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.put_SelectedValue(pThis, value))
        }
    }
    public func put_SelectedValue(value : Optional<WinRT.IInspectable>) throws -> Void {
        try self._n_put_SelectedValue(RawPointer(value));
    }
    // [IsSpecialName] System.String get_SelectedValuePath()
    private func _n_get_SelectedValuePath(_ __presult: UnsafeMutablePointer<Optional<HSTRING>>?) throws {
        return try perform(as: _q_CMicrosoft_CUI_CXaml_CControls_CPrimitives_CISelector.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_SelectedValuePath(pThis, __presult))
        }
    }
    public func get_SelectedValuePath() throws -> Swift.String {
        var __result : Optional<HSTRING> = nil;
        try self._n_get_SelectedValuePath(&__result);
        return Swift.String(from: __result);
    }
    // [IsSpecialName] void put_SelectedValuePath(System.String)
    private func _n_put_SelectedValuePath(_ value : Optional<HSTRING>) throws {
        return try perform(as: _q_CMicrosoft_CUI_CXaml_CControls_CPrimitives_CISelector.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.put_SelectedValuePath(pThis, value))
        }
    }
    public func put_SelectedValuePath(value : Optional<Swift.String>) throws -> Void {
        let __hstr_value = try HString(value!);
        return try withExtendedLifetime(__hstr_value) {
        try self._n_put_SelectedValuePath(__hstr_value.Raw());
        }
    }
    // [IsSpecialName] Windows.Foundation.IReference<bool> get_IsSynchronizedWithCurrentItem()
    private func _n_get_IsSynchronizedWithCurrentItem(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IReference_1_boolean>>>?) throws {
        return try perform(as: _q_CMicrosoft_CUI_CXaml_CControls_CPrimitives_CISelector.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_IsSynchronizedWithCurrentItem(pThis, __presult))
        }
    }
    public func get_IsSynchronizedWithCurrentItem() throws -> Optional<ClosedGenerics.IReference_1_boolean> {
        var __result : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IReference_1_boolean>> = nil;
        try self._n_get_IsSynchronizedWithCurrentItem(&__result);
        return ClosedGenerics.IReference_1_boolean(consuming: __result);
    }
    // [IsSpecialName] void put_IsSynchronizedWithCurrentItem(Windows.Foundation.IReference<bool>)
    private func _n_put_IsSynchronizedWithCurrentItem(_ value : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IReference_1_boolean>>) throws {
        return try perform(as: _q_CMicrosoft_CUI_CXaml_CControls_CPrimitives_CISelector.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.put_IsSynchronizedWithCurrentItem(pThis, value))
        }
    }
    public func put_IsSynchronizedWithCurrentItem(value : Optional<ClosedGenerics.IReference_1_boolean>) throws -> Void {
        try self._n_put_IsSynchronizedWithCurrentItem(RawPointer(value));
    }
    // [IsSpecialName] Windows.Foundation.EventRegistrationToken add_SelectionChanged(Microsoft.UI.Xaml.Controls.SelectionChangedEventHandler)
    private func _n_add_SelectionChanged(_ handler : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CControls_CISelectionChangedEventHandler>>, _ __presult: UnsafeMutablePointer<_q_CWindows_CFoundation_CEventRegistrationToken>?) throws {
        return try perform(as: _q_CMicrosoft_CUI_CXaml_CControls_CPrimitives_CISelector.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.add_SelectionChanged(pThis, handler, __presult))
        }
    }
    public func add_SelectionChanged(handler : Optional<Microsoft.UI.Xaml.Controls.ISelectionChangedEventHandler>) throws -> Windows.Foundation.EventRegistrationToken {
        var __result : _q_CWindows_CFoundation_CEventRegistrationToken = _q_CWindows_CFoundation_CEventRegistrationToken(Value: 0);
        try self._n_add_SelectionChanged(RawPointer(handler), &__result);
        return __result;
    }
    // [IsSpecialName] void remove_SelectionChanged(Windows.Foundation.EventRegistrationToken)
    private func _n_remove_SelectionChanged(_ token : _q_CWindows_CFoundation_CEventRegistrationToken) throws {
        return try perform(as: _q_CMicrosoft_CUI_CXaml_CControls_CPrimitives_CISelector.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.remove_SelectionChanged(pThis, token))
        }
    }
    public func remove_SelectionChanged(token : Windows.Foundation.EventRegistrationToken) throws -> Void {
        try self._n_remove_SelectionChanged(token);
    }
    public var IsSynchronizedWithCurrentItem : Optional<ClosedGenerics.IReference_1_boolean> {
        get throws {
            return try get_IsSynchronizedWithCurrentItem();
        }
    }
    public var SelectedIndex : Swift.Int32 {
        get throws {
            return try get_SelectedIndex();
        }
    }
    public var SelectedItem : Optional<WinRT.IInspectable> {
        get throws {
            return try get_SelectedItem();
        }
    }
    public var SelectedValue : Optional<WinRT.IInspectable> {
        get throws {
            return try get_SelectedValue();
        }
    }
    public var SelectedValuePath : Swift.String {
        get throws {
            return try get_SelectedValuePath();
        }
    }
} // ISelector


// type: Microsoft.UI.Xaml.Controls.Primitives.ISelectorStatics
// interface type
open class ISelectorStatics
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x569b2234, Data2: 0x1ceb, Data3 : 0x516e, Data4 : (0xb6, 0x4e, 0x0d, 0x47, 0x94, 0x52, 0xe2, 0x79)) }
    // [IsSpecialName] Microsoft.UI.Xaml.DependencyProperty get_SelectedIndexProperty()
    private func _n_get_SelectedIndexProperty(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CIDependencyProperty>>>?) throws {
        return try perform(as: _q_CMicrosoft_CUI_CXaml_CControls_CPrimitives_CISelectorStatics.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_SelectedIndexProperty(pThis, __presult))
        }
    }
    public func get_SelectedIndexProperty() throws -> Optional<Microsoft.UI.Xaml.IDependencyProperty> {
        var __result : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CIDependencyProperty>> = nil;
        try self._n_get_SelectedIndexProperty(&__result);
        return Microsoft.UI.Xaml.IDependencyProperty(consuming: __result);
    }
    // [IsSpecialName] Microsoft.UI.Xaml.DependencyProperty get_SelectedItemProperty()
    private func _n_get_SelectedItemProperty(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CIDependencyProperty>>>?) throws {
        return try perform(as: _q_CMicrosoft_CUI_CXaml_CControls_CPrimitives_CISelectorStatics.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_SelectedItemProperty(pThis, __presult))
        }
    }
    public func get_SelectedItemProperty() throws -> Optional<Microsoft.UI.Xaml.IDependencyProperty> {
        var __result : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CIDependencyProperty>> = nil;
        try self._n_get_SelectedItemProperty(&__result);
        return Microsoft.UI.Xaml.IDependencyProperty(consuming: __result);
    }
    // [IsSpecialName] Microsoft.UI.Xaml.DependencyProperty get_SelectedValueProperty()
    private func _n_get_SelectedValueProperty(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CIDependencyProperty>>>?) throws {
        return try perform(as: _q_CMicrosoft_CUI_CXaml_CControls_CPrimitives_CISelectorStatics.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_SelectedValueProperty(pThis, __presult))
        }
    }
    public func get_SelectedValueProperty() throws -> Optional<Microsoft.UI.Xaml.IDependencyProperty> {
        var __result : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CIDependencyProperty>> = nil;
        try self._n_get_SelectedValueProperty(&__result);
        return Microsoft.UI.Xaml.IDependencyProperty(consuming: __result);
    }
    // [IsSpecialName] Microsoft.UI.Xaml.DependencyProperty get_SelectedValuePathProperty()
    private func _n_get_SelectedValuePathProperty(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CIDependencyProperty>>>?) throws {
        return try perform(as: _q_CMicrosoft_CUI_CXaml_CControls_CPrimitives_CISelectorStatics.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_SelectedValuePathProperty(pThis, __presult))
        }
    }
    public func get_SelectedValuePathProperty() throws -> Optional<Microsoft.UI.Xaml.IDependencyProperty> {
        var __result : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CIDependencyProperty>> = nil;
        try self._n_get_SelectedValuePathProperty(&__result);
        return Microsoft.UI.Xaml.IDependencyProperty(consuming: __result);
    }
    // [IsSpecialName] Microsoft.UI.Xaml.DependencyProperty get_IsSynchronizedWithCurrentItemProperty()
    private func _n_get_IsSynchronizedWithCurrentItemProperty(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CIDependencyProperty>>>?) throws {
        return try perform(as: _q_CMicrosoft_CUI_CXaml_CControls_CPrimitives_CISelectorStatics.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_IsSynchronizedWithCurrentItemProperty(pThis, __presult))
        }
    }
    public func get_IsSynchronizedWithCurrentItemProperty() throws -> Optional<Microsoft.UI.Xaml.IDependencyProperty> {
        var __result : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CIDependencyProperty>> = nil;
        try self._n_get_IsSynchronizedWithCurrentItemProperty(&__result);
        return Microsoft.UI.Xaml.IDependencyProperty(consuming: __result);
    }
    // bool GetIsSelectionActive(Microsoft.UI.Xaml.DependencyObject)
    private func _n_GetIsSelectionActive(_ element : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CIDependencyObject>>, _ __presult: UnsafeMutablePointer<boolean>?) throws {
        return try perform(as: _q_CMicrosoft_CUI_CXaml_CControls_CPrimitives_CISelectorStatics.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.GetIsSelectionActive(pThis, element, __presult))
        }
    }
    public func GetIsSelectionActive(element : Optional<Microsoft.UI.Xaml.IDependencyObject>) throws -> boolean {
        var __result : boolean = 0;
        try self._n_GetIsSelectionActive(RawPointer(element), &__result);
        return __result;
    }
    public var IsSynchronizedWithCurrentItemProperty : Optional<Microsoft.UI.Xaml.IDependencyProperty> {
        get throws {
            return try get_IsSynchronizedWithCurrentItemProperty();
        }
    }
    public var SelectedIndexProperty : Optional<Microsoft.UI.Xaml.IDependencyProperty> {
        get throws {
            return try get_SelectedIndexProperty();
        }
    }
    public var SelectedItemProperty : Optional<Microsoft.UI.Xaml.IDependencyProperty> {
        get throws {
            return try get_SelectedItemProperty();
        }
    }
    public var SelectedValuePathProperty : Optional<Microsoft.UI.Xaml.IDependencyProperty> {
        get throws {
            return try get_SelectedValuePathProperty();
        }
    }
    public var SelectedValueProperty : Optional<Microsoft.UI.Xaml.IDependencyProperty> {
        get throws {
            return try get_SelectedValueProperty();
        }
    }
} // ISelectorStatics


// type: Microsoft.UI.Xaml.Controls.Primitives.Selector
// runtime class
open class Selector
    :
    Microsoft.UI.Xaml.Controls.ItemsControl
{
    private var _self : Microsoft.UI.Xaml.Controls.Primitives.ISelector;
    public init(plok: Microsoft.UI.Xaml.Controls.Primitives.ISelector?) throws {
        _self = plok!
        try super.init(plok: _self.QueryInterface())
    }
    public func Interface() -> Microsoft.UI.Xaml.Controls.Primitives.ISelector { return _self; }
    // COMPOSABLE: Microsoft.UI.Xaml.Controls.Primitives.ISelectorFactory
// composable interface not needed: Microsoft.UI.Xaml.Controls.Primitives.ISelectorFactory
    private struct _ISelectorStatics {
        static var x : ISelectorStatics =
            try! RoGetActivationFactory("Microsoft.UI.Xaml.Controls.Primitives.Selector")
    }
    public static var SelectorStatics : ISelectorStatics {
        _ISelectorStatics.x
    }
    public static func get_SelectedIndexProperty() throws -> Optional<Microsoft.UI.Xaml.DependencyProperty> {
        return try Microsoft.UI.Xaml.DependencyProperty(plok: SelectorStatics.get_SelectedIndexProperty());
    }
    public static func get_SelectedItemProperty() throws -> Optional<Microsoft.UI.Xaml.DependencyProperty> {
        return try Microsoft.UI.Xaml.DependencyProperty(plok: SelectorStatics.get_SelectedItemProperty());
    }
    public static func get_SelectedValueProperty() throws -> Optional<Microsoft.UI.Xaml.DependencyProperty> {
        return try Microsoft.UI.Xaml.DependencyProperty(plok: SelectorStatics.get_SelectedValueProperty());
    }
    public static func get_SelectedValuePathProperty() throws -> Optional<Microsoft.UI.Xaml.DependencyProperty> {
        return try Microsoft.UI.Xaml.DependencyProperty(plok: SelectorStatics.get_SelectedValuePathProperty());
    }
    public static func get_IsSynchronizedWithCurrentItemProperty() throws -> Optional<Microsoft.UI.Xaml.DependencyProperty> {
        return try Microsoft.UI.Xaml.DependencyProperty(plok: SelectorStatics.get_IsSynchronizedWithCurrentItemProperty());
    }
    public static func GetIsSelectionActive(element : Optional<Microsoft.UI.Xaml.DependencyObject>) throws -> boolean {
        return try SelectorStatics.GetIsSelectionActive(element: element!.Interface());
    }
    public static var IsSynchronizedWithCurrentItemProperty : Optional<Microsoft.UI.Xaml.DependencyProperty> {
        get throws {
        return try Microsoft.UI.Xaml.DependencyProperty(plok: SelectorStatics.IsSynchronizedWithCurrentItemProperty);
        }
    }
    public static var SelectedIndexProperty : Optional<Microsoft.UI.Xaml.DependencyProperty> {
        get throws {
        return try Microsoft.UI.Xaml.DependencyProperty(plok: SelectorStatics.SelectedIndexProperty);
        }
    }
    public static var SelectedItemProperty : Optional<Microsoft.UI.Xaml.DependencyProperty> {
        get throws {
        return try Microsoft.UI.Xaml.DependencyProperty(plok: SelectorStatics.SelectedItemProperty);
        }
    }
    public static var SelectedValuePathProperty : Optional<Microsoft.UI.Xaml.DependencyProperty> {
        get throws {
        return try Microsoft.UI.Xaml.DependencyProperty(plok: SelectorStatics.SelectedValuePathProperty);
        }
    }
    public static var SelectedValueProperty : Optional<Microsoft.UI.Xaml.DependencyProperty> {
        get throws {
        return try Microsoft.UI.Xaml.DependencyProperty(plok: SelectorStatics.SelectedValueProperty);
        }
    }
    public func get_SelectedIndex() throws -> Swift.Int32 {
        let _ifc : Microsoft.UI.Xaml.Controls.Primitives.ISelector = try _self.QueryInterface();
        return try _ifc.get_SelectedIndex();
    }
    public func put_SelectedIndex(value : Swift.Int32) throws -> Void {
        let _ifc : Microsoft.UI.Xaml.Controls.Primitives.ISelector = try _self.QueryInterface();
        return try _ifc.put_SelectedIndex(value: value);
    }
    public func get_SelectedItem() throws -> Optional<WinRT.IInspectable> {
        let _ifc : Microsoft.UI.Xaml.Controls.Primitives.ISelector = try _self.QueryInterface();
        return try _ifc.get_SelectedItem();
    }
    public func put_SelectedItem(value : Optional<WinRT.Object>) throws -> Void {
        let _ifc : Microsoft.UI.Xaml.Controls.Primitives.ISelector = try _self.QueryInterface();
        return try _ifc.put_SelectedItem(value: value!.GetInterface());
    }
    public func get_SelectedValue() throws -> Optional<WinRT.IInspectable> {
        let _ifc : Microsoft.UI.Xaml.Controls.Primitives.ISelector = try _self.QueryInterface();
        return try _ifc.get_SelectedValue();
    }
    public func put_SelectedValue(value : Optional<WinRT.Object>) throws -> Void {
        let _ifc : Microsoft.UI.Xaml.Controls.Primitives.ISelector = try _self.QueryInterface();
        return try _ifc.put_SelectedValue(value: value!.GetInterface());
    }
    public func get_SelectedValuePath() throws -> Optional<Swift.String> {
        let _ifc : Microsoft.UI.Xaml.Controls.Primitives.ISelector = try _self.QueryInterface();
        return try _ifc.get_SelectedValuePath();
    }
    public func put_SelectedValuePath(value : Swift.String) throws -> Void {
        let _ifc : Microsoft.UI.Xaml.Controls.Primitives.ISelector = try _self.QueryInterface();
        return try _ifc.put_SelectedValuePath(value: value);
    }
    public func get_IsSynchronizedWithCurrentItem() throws -> Optional<ClosedGenerics.IReference_1_boolean> {
        let _ifc : Microsoft.UI.Xaml.Controls.Primitives.ISelector = try _self.QueryInterface();
        return try _ifc.get_IsSynchronizedWithCurrentItem();
    }
    public func put_IsSynchronizedWithCurrentItem(value : Optional<ClosedGenerics.IReference_1_boolean>) throws -> Void {
        let _ifc : Microsoft.UI.Xaml.Controls.Primitives.ISelector = try _self.QueryInterface();
        return try _ifc.put_IsSynchronizedWithCurrentItem(value: value);
    }
    public func add_SelectionChanged(handler : @escaping (Optional<WinRT.Object>, Optional<Microsoft.UI.Xaml.Controls.SelectionChangedEventArgs>) throws -> Void) throws -> Windows.Foundation.EventRegistrationToken {
        let _ifc : Microsoft.UI.Xaml.Controls.Primitives.ISelector = try _self.QueryInterface();
        return try _ifc.add_SelectionChanged(handler: Microsoft.UI.Xaml.Controls.impl_SelectionChangedEventHandler(cb: handler).Interface());
    }
    public func remove_SelectionChanged(token : Windows.Foundation.EventRegistrationToken) throws -> Void {
        let _ifc : Microsoft.UI.Xaml.Controls.Primitives.ISelector = try _self.QueryInterface();
        return try _ifc.remove_SelectionChanged(token: token);
    }
    public var IsSynchronizedWithCurrentItem : Optional<ClosedGenerics.IReference_1_boolean> {
        get throws {
        let _ifc : Microsoft.UI.Xaml.Controls.Primitives.ISelector = try _self.QueryInterface();
        return try _ifc.IsSynchronizedWithCurrentItem;
        }
    }
    public var SelectedIndex : Swift.Int32 {
        get throws {
        let _ifc : Microsoft.UI.Xaml.Controls.Primitives.ISelector = try _self.QueryInterface();
        return try _ifc.SelectedIndex;
        }
    }
    public var SelectedItem : Optional<WinRT.IInspectable> {
        get throws {
        let _ifc : Microsoft.UI.Xaml.Controls.Primitives.ISelector = try _self.QueryInterface();
        return try _ifc.SelectedItem;
        }
    }
    public var SelectedValue : Optional<WinRT.IInspectable> {
        get throws {
        let _ifc : Microsoft.UI.Xaml.Controls.Primitives.ISelector = try _self.QueryInterface();
        return try _ifc.SelectedValue;
        }
    }
    public var SelectedValuePath : Optional<Swift.String> {
        get throws {
        let _ifc : Microsoft.UI.Xaml.Controls.Primitives.ISelector = try _self.QueryInterface();
        return try _ifc.SelectedValuePath;
        }
    }
}

}
