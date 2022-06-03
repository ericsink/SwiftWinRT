// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;

extension Windows.UI.Notifications {
// type: Windows.UI.Notifications.IToastNotification
// interface type
open class IToastNotification
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x997e2675, Data2: 0x059e, Data3 : 0x4e60, Data4 : (0x8b, 0x06, 0x17, 0x60, 0x91, 0x7c, 0x8b, 0x80)) }
// method not needed: get_Content
// method not needed: put_ExpirationTime
// method not needed: get_ExpirationTime
// method not needed: add_Dismissed
// method not needed: remove_Dismissed
// method not needed: add_Activated
// method not needed: remove_Activated
// method not needed: add_Failed
// method not needed: remove_Failed
} // IToastNotification


// type: Windows.UI.Notifications.IToastNotificationFactory
// interface type
// ACTIVATION INTERFACE
open class IToastNotificationFactory
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x04124b20, Data2: 0x82c6, Data3 : 0x4229, Data4 : (0xb1, 0x09, 0xfd, 0x9e, 0xd4, 0x66, 0x2b, 0x53)) }
    // Windows.UI.Notifications.ToastNotification CreateToastNotification(Windows.Data.Xml.Dom.XmlDocument)
    public func _n_CreateToastNotification(_ content : Optional<UnsafeMutablePointer<_q_CWindows_CData_CXml_CDom_CIXmlDocument>>, _ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CWindows_CUI_CNotifications_CIToastNotification>>>?) throws {
        return try perform(as: _q_CWindows_CUI_CNotifications_CIToastNotificationFactory.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.CreateToastNotification(pThis, content, __presult))
        }
    }
    public func CreateToastNotification(content : Optional<WinRT.Windows.Data.Xml.Dom.IXmlDocument>) throws -> Optional<WinRT.Windows.UI.Notifications.IToastNotification> {
        var __result : Optional<UnsafeMutablePointer<_q_CWindows_CUI_CNotifications_CIToastNotification>> = nil;
        try self._n_CreateToastNotification(RawPointer(content), &__result);
        return WinRT.Windows.UI.Notifications.IToastNotification(consuming: __result);
    }
} // IToastNotificationFactory


// type: Windows.UI.Notifications.IToastNotificationManagerStatics
// interface type
open class IToastNotificationManagerStatics
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x50ac103f, Data2: 0xd235, Data3 : 0x4598, Data4 : (0xbb, 0xef, 0x98, 0xfe, 0x4d, 0x1a, 0x3a, 0xd4)) }
// method not needed: CreateToastNotifier
    // Windows.UI.Notifications.ToastNotifier CreateToastNotifier(System.String)
    public func _n_CreateToastNotifierWithId(_ applicationId : Optional<HSTRING>, _ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CWindows_CUI_CNotifications_CIToastNotifier>>>?) throws {
        return try perform(as: _q_CWindows_CUI_CNotifications_CIToastNotificationManagerStatics.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.CreateToastNotifierWithId(pThis, applicationId, __presult))
        }
    }
    public func CreateToastNotifierWithId(applicationId : Swift.String) throws -> Optional<WinRT.Windows.UI.Notifications.IToastNotifier> {
        let __hstr_applicationId = try HString(applicationId);
        return try withExtendedLifetime(__hstr_applicationId) {
        var __result : Optional<UnsafeMutablePointer<_q_CWindows_CUI_CNotifications_CIToastNotifier>> = nil;
        try self._n_CreateToastNotifierWithId(__hstr_applicationId.hRef.hString, &__result);
        return WinRT.Windows.UI.Notifications.IToastNotifier(consuming: __result);
        }
    }
// method not needed: GetTemplateContent
} // IToastNotificationManagerStatics


// type: Windows.UI.Notifications.IToastNotifier
// interface type
open class IToastNotifier
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x75927b93, Data2: 0x03f3, Data3 : 0x41ec, Data4 : (0x91, 0xd3, 0x6e, 0x5b, 0xac, 0x1b, 0x38, 0xe7)) }
    // void Show(Windows.UI.Notifications.ToastNotification)
    public func _n_Show(_ notification : Optional<UnsafeMutablePointer<_q_CWindows_CUI_CNotifications_CIToastNotification>>) throws {
        return try perform(as: _q_CWindows_CUI_CNotifications_CIToastNotifier.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Show(pThis, notification))
        }
    }
    public func Show(notification : Optional<WinRT.Windows.UI.Notifications.IToastNotification>) throws -> Void {
        try self._n_Show(RawPointer(notification));
    }
// method not needed: Hide
// method not needed: get_Setting
// method not needed: AddToSchedule
// method not needed: RemoveFromSchedule
// method not needed: GetScheduledToastNotifications
} // IToastNotifier


// type: Windows.UI.Notifications.ToastNotification
// runtime class
public class ToastNotification
{
    private var _self : WinRT.Windows.UI.Notifications.IToastNotification;
    public init(plok: WinRT.Windows.UI.Notifications.IToastNotification?) {
        _self = plok!
    }
    internal func Interface() -> WinRT.Windows.UI.Notifications.IToastNotification { return _self; }
    public init(content : Optional<WinRT.Windows.Data.Xml.Dom.XmlDocument>) throws {
        let _af : IToastNotificationFactory = try RoGetActivationFactory(HString("Windows.UI.Notifications.ToastNotification"));
        _self = try _af.CreateToastNotification(content: content!.Interface())!;
    }
    // method not needed: get_Content
    // method not needed: put_ExpirationTime
    // method not needed: get_ExpirationTime
    // method not needed: add_Dismissed
    // method not needed: remove_Dismissed
    // method not needed: add_Activated
    // method not needed: remove_Activated
    // method not needed: add_Failed
    // method not needed: remove_Failed
    // instance interface not needed: Windows.UI.Notifications.IToastNotification2
    // instance interface not needed: Windows.UI.Notifications.IToastNotification3
    // instance interface not needed: Windows.UI.Notifications.IToastNotification4
    // instance interface not needed: Windows.UI.Notifications.IToastNotification6
}

// type: Windows.UI.Notifications.ToastNotificationManager
// static class
public class ToastNotificationManager
{
    // static interface not needed: Windows.UI.Notifications.IToastNotificationManagerStatics4
    private struct _IToastNotificationManagerStatics {
        static var x : IToastNotificationManagerStatics =
            try! RoGetActivationFactory(HString("Windows.UI.Notifications.ToastNotificationManager"))
    }
    public static var ToastNotificationManagerStatics : IToastNotificationManagerStatics {
        _IToastNotificationManagerStatics.x
    }
// method not needed: CreateToastNotifier
    public static func CreateToastNotifierWithId(applicationId : Swift.String) throws -> Optional<WinRT.Windows.UI.Notifications.ToastNotifier> {
        return try WinRT.Windows.UI.Notifications.ToastNotifier(plok: ToastNotificationManagerStatics.CreateToastNotifierWithId(applicationId: applicationId));
    }
// method not needed: GetTemplateContent
    // static interface not needed: Windows.UI.Notifications.IToastNotificationManagerStatics2
    // static interface not needed: Windows.UI.Notifications.IToastNotificationManagerStatics5
}

// type: Windows.UI.Notifications.ToastNotifier
// runtime class
public class ToastNotifier
{
    private var _self : WinRT.Windows.UI.Notifications.IToastNotifier;
    public init(plok: WinRT.Windows.UI.Notifications.IToastNotifier?) {
        _self = plok!
    }
    internal func Interface() -> WinRT.Windows.UI.Notifications.IToastNotifier { return _self; }
    public func Show(notification : Optional<WinRT.Windows.UI.Notifications.ToastNotification>) throws -> Void {
        let _ifc : IToastNotifier = try _self.QueryInterface();
        return try _ifc.Show(notification: notification!.Interface());
    }
    // method not needed: Hide
    // method not needed: get_Setting
    // method not needed: AddToSchedule
    // method not needed: RemoveFromSchedule
    // method not needed: GetScheduledToastNotifications
    // instance interface not needed: Windows.UI.Notifications.IToastNotifier2
    // instance interface not needed: Windows.UI.Notifications.IToastNotifier3
}

}
