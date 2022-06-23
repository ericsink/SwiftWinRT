// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;
import CWindowsSdk;
@_spi(IUnknown) import WinRT;
import WindowsSdk;

extension Microsoft.UI.Xaml.Automation.Peers {
// type: Microsoft.UI.Xaml.Automation.Peers.AutomationPeer
// runtime class
open class AutomationPeer
    :
    Microsoft.UI.Xaml.DependencyObject
{
    private var _self : Microsoft.UI.Xaml.Automation.Peers.IAutomationPeer;
    public init(plok: Microsoft.UI.Xaml.Automation.Peers.IAutomationPeer?) throws {
        _self = plok!
        try super.init(plok: _self.QueryInterface())
    }
    public func Interface() -> Microsoft.UI.Xaml.Automation.Peers.IAutomationPeer { return _self; }
    // COMPOSABLE: Microsoft.UI.Xaml.Automation.Peers.IAutomationPeerFactory
    public override init() throws {
        var _inn : Optional<WinRT.IInspectable> = nil
        let _af : IAutomationPeerFactory = try RoGetActivationFactory("Microsoft.UI.Xaml.Automation.Peers.AutomationPeer");
        let baseInterface : Optional<WinRT.IInspectable> = nil;
        _self = try _af.CreateInstance(baseInterface: baseInterface, innerInterface: &_inn)!;
        try super.init(plok: _self.QueryInterface())
    }
    // static interface not needed: Microsoft.UI.Xaml.Automation.Peers.IAutomationPeerStatics
    // method not needed: get_EventsSource
    // method not needed: put_EventsSource
    // method not needed: GetPattern
    // method not needed: RaiseAutomationEvent
    // method not needed: RaisePropertyChangedEvent
    // method not needed: GetAcceleratorKey
    // method not needed: GetAccessKey
    // method not needed: GetAutomationControlType
    // method not needed: GetAutomationId
    // method not needed: GetBoundingRectangle
    // method not needed: GetChildren
    // method not needed: Navigate
    // method not needed: GetClassName
    // method not needed: GetClickablePoint
    // method not needed: GetHelpText
    // method not needed: GetItemStatus
    // method not needed: GetItemType
    // method not needed: GetLabeledBy
    // method not needed: GetLocalizedControlType
    // method not needed: GetName
    // method not needed: GetOrientation
    // method not needed: HasKeyboardFocus
    // method not needed: IsContentElement
    // method not needed: IsControlElement
    // method not needed: IsEnabled
    // method not needed: IsKeyboardFocusable
    // method not needed: IsOffscreen
    // method not needed: IsPassword
    // method not needed: IsRequiredForForm
    // method not needed: SetFocus
    // method not needed: GetParent
    // method not needed: InvalidatePeer
    // method not needed: GetPeerFromPoint
    // method not needed: GetElementFromPoint
    // method not needed: GetFocusedElement
    // method not needed: GetLiveSetting
    // method not needed: ShowContextMenu
    // method not needed: GetControlledPeers
    // method not needed: GetAnnotations
    // method not needed: SetParent
    // method not needed: RaiseTextEditTextChangedEvent
    // method not needed: GetPositionInSet
    // method not needed: GetSizeOfSet
    // method not needed: GetLevel
    // method not needed: RaiseStructureChangedEvent
    // method not needed: GetLandmarkType
    // method not needed: GetLocalizedLandmarkType
    // method not needed: IsPeripheral
    // method not needed: IsDataValidForForm
    // method not needed: GetFullDescription
    // method not needed: GetCulture
    // method not needed: RaiseNotificationEvent
    // method not needed: GetHeadingLevel
    // method not needed: IsDialog
    // instance interface not needed: Microsoft.UI.Xaml.Automation.Peers.IAutomationPeerProtected
    // instance interface not needed: Microsoft.UI.Xaml.Automation.Peers.IAutomationPeerOverrides
}

// type: Microsoft.UI.Xaml.Automation.Peers.IAutomationPeer
// interface type
open class IAutomationPeer
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xe51d3e4e, Data2: 0x34f0, Data3 : 0x568c, Data4 : (0x99, 0x9f, 0x62, 0x77, 0xe2, 0xaf, 0xe6, 0xd7)) }
// method not needed: get_EventsSource
// method not needed: put_EventsSource
// method not needed: GetPattern
// method not needed: RaiseAutomationEvent
// method not needed: RaisePropertyChangedEvent
// method not needed: GetAcceleratorKey
// method not needed: GetAccessKey
// method not needed: GetAutomationControlType
// method not needed: GetAutomationId
// method not needed: GetBoundingRectangle
// method not needed: GetChildren
// method not needed: Navigate
// method not needed: GetClassName_
// method not needed: GetClickablePoint
// method not needed: GetHelpText
// method not needed: GetItemStatus
// method not needed: GetItemType
// method not needed: GetLabeledBy
// method not needed: GetLocalizedControlType
// method not needed: GetName
// method not needed: GetOrientation
// method not needed: HasKeyboardFocus
// method not needed: IsContentElement
// method not needed: IsControlElement
// method not needed: IsEnabled
// method not needed: IsKeyboardFocusable
// method not needed: IsOffscreen
// method not needed: IsPassword
// method not needed: IsRequiredForForm
// method not needed: SetFocus
// method not needed: GetParent
// method not needed: InvalidatePeer
// method not needed: GetPeerFromPoint
// method not needed: GetElementFromPoint
// method not needed: GetFocusedElement
// method not needed: GetLiveSetting
// method not needed: ShowContextMenu
// method not needed: GetControlledPeers
// method not needed: GetAnnotations
// method not needed: SetParent
// method not needed: RaiseTextEditTextChangedEvent
// method not needed: GetPositionInSet
// method not needed: GetSizeOfSet
// method not needed: GetLevel
// method not needed: RaiseStructureChangedEvent
// method not needed: GetLandmarkType
// method not needed: GetLocalizedLandmarkType
// method not needed: IsPeripheral
// method not needed: IsDataValidForForm
// method not needed: GetFullDescription
// method not needed: GetCulture
// method not needed: RaiseNotificationEvent
// method not needed: GetHeadingLevel
// method not needed: IsDialog
} // IAutomationPeer


// type: Microsoft.UI.Xaml.Automation.Peers.IAutomationPeerFactory
// interface type
// COMPOSITION INTERFACE
open class IAutomationPeerFactory
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xa1af86a0, Data2: 0x6ec6, Data3 : 0x5be2, Data4 : (0x85, 0x8f, 0x72, 0x80, 0x8b, 0xe6, 0xfd, 0xdd)) }
    // Microsoft.UI.Xaml.Automation.Peers.AutomationPeer CreateInstance(System.Object, ref System.Object)
    private func _n_CreateInstance(_ baseInterface : Optional<UnsafeMutablePointer<CWinRT.IInspectable>>, _ innerInterface : UnsafeMutablePointer<Optional<UnsafeMutablePointer<CWinRT.IInspectable>>>, _ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CAutomation_CPeers_CIAutomationPeer>>>?) throws {
        return try perform(as: _q_CMicrosoft_CUI_CXaml_CAutomation_CPeers_CIAutomationPeerFactory.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.CreateInstance(pThis, baseInterface, innerInterface, __presult))
        }
    }
    public func CreateInstance(baseInterface : Optional<WinRT.IInspectable>, innerInterface : inout Optional<WinRT.IInspectable>) throws -> Optional<Microsoft.UI.Xaml.Automation.Peers.IAutomationPeer> {
        var __result : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CXaml_CAutomation_CPeers_CIAutomationPeer>> = nil;
            var _tmp_out_innerInterface: Optional<UnsafeMutablePointer<CWinRT.IInspectable>> = nil;
        try self._n_CreateInstance(RawPointer(baseInterface), &_tmp_out_innerInterface, &__result);
            innerInterface = WinRT.IInspectable(consuming: _tmp_out_innerInterface);
        return Microsoft.UI.Xaml.Automation.Peers.IAutomationPeer(consuming: __result);
    }
} // IAutomationPeerFactory


}
