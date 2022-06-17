// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;

extension Windows.System.Profile {
// type: Windows.System.Profile.ISystemIdentificationInfo
// interface type
open class ISystemIdentificationInfo
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x0c659e7d, Data2: 0xc3c2, Data3 : 0x4d33, Data4 : (0xa2, 0xdf, 0x21, 0xbc, 0x41, 0x91, 0x6e, 0xb3)) }
    // [IsSpecialName] Windows.Storage.Streams.IBuffer get_Id()
    private func _n_get_Id(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CWindows_CStorage_CStreams_CIBuffer>>>?) throws {
        return try perform(as: _q_CWindows_CSystem_CProfile_CISystemIdentificationInfo.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_Id(pThis, __presult))
        }
    }
    public func get_Id() throws -> Optional<WinRT.Windows.Storage.Streams.IBuffer> {
        var __result : Optional<UnsafeMutablePointer<_q_CWindows_CStorage_CStreams_CIBuffer>> = nil;
        try self._n_get_Id(&__result);
        return WinRT.Windows.Storage.Streams.IBuffer(consuming: __result);
    }
    // [IsSpecialName] Windows.System.Profile.SystemIdentificationSource get_Source()
    private func _n_get_Source(_ __presult: UnsafeMutablePointer<_q_CWindows_CSystem_CProfile_CSystemIdentificationSource>?) throws {
        return try perform(as: _q_CWindows_CSystem_CProfile_CISystemIdentificationInfo.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_Source(pThis, __presult))
        }
    }
    public func get_Source() throws -> WinRT.Windows.System.Profile.SystemIdentificationSource {
        var __result : _q_CWindows_CSystem_CProfile_CSystemIdentificationSource = _q_CWindows_CSystem_CProfile_CSystemIdentificationSource_None;
        try self._n_get_Source(&__result);
        return __result;
    }
    public var Id : Optional<WinRT.Windows.Storage.Streams.IBuffer> {
        get throws {
            return try get_Id();
        }
    }
    public var Source : WinRT.Windows.System.Profile.SystemIdentificationSource {
        get throws {
            return try get_Source();
        }
    }
} // ISystemIdentificationInfo


// type: Windows.System.Profile.ISystemIdentificationStatics
// interface type
open class ISystemIdentificationStatics
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x5581f42a, Data2: 0xd3df, Data3 : 0x4d93, Data4 : (0xa3, 0x7d, 0xc4, 0x1a, 0x61, 0x6c, 0x6d, 0x01)) }
    // Windows.System.Profile.SystemIdentificationInfo GetSystemIdForPublisher()
    private func _n_GetSystemIdForPublisher(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CWindows_CSystem_CProfile_CISystemIdentificationInfo>>>?) throws {
        return try perform(as: _q_CWindows_CSystem_CProfile_CISystemIdentificationStatics.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.GetSystemIdForPublisher(pThis, __presult))
        }
    }
    public func GetSystemIdForPublisher() throws -> Optional<WinRT.Windows.System.Profile.ISystemIdentificationInfo> {
        var __result : Optional<UnsafeMutablePointer<_q_CWindows_CSystem_CProfile_CISystemIdentificationInfo>> = nil;
        try self._n_GetSystemIdForPublisher(&__result);
        return WinRT.Windows.System.Profile.ISystemIdentificationInfo(consuming: __result);
    }
    // Windows.System.Profile.SystemIdentificationInfo GetSystemIdForUser(Windows.System.User)
    private func _n_GetSystemIdForUser(_ user : Optional<UnsafeMutablePointer<_q_CWindows_CSystem_CIUser>>, _ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CWindows_CSystem_CProfile_CISystemIdentificationInfo>>>?) throws {
        return try perform(as: _q_CWindows_CSystem_CProfile_CISystemIdentificationStatics.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.GetSystemIdForUser(pThis, user, __presult))
        }
    }
    public func GetSystemIdForUser(user : Optional<WinRT.Windows.System.IUser>) throws -> Optional<WinRT.Windows.System.Profile.ISystemIdentificationInfo> {
        var __result : Optional<UnsafeMutablePointer<_q_CWindows_CSystem_CProfile_CISystemIdentificationInfo>> = nil;
        try self._n_GetSystemIdForUser(RawPointer(user), &__result);
        return WinRT.Windows.System.Profile.ISystemIdentificationInfo(consuming: __result);
    }
} // ISystemIdentificationStatics


// type: Windows.System.Profile.SystemIdentification
// static class
public class SystemIdentification
{
    private struct _ISystemIdentificationStatics {
        static var x : ISystemIdentificationStatics =
            try! RoGetActivationFactory("Windows.System.Profile.SystemIdentification")
    }
    public static var SystemIdentificationStatics : ISystemIdentificationStatics {
        _ISystemIdentificationStatics.x
    }
    public static func GetSystemIdForPublisher() throws -> Optional<WinRT.Windows.System.Profile.SystemIdentificationInfo> {
        return try WinRT.Windows.System.Profile.SystemIdentificationInfo(plok: SystemIdentificationStatics.GetSystemIdForPublisher());
    }
    public static func GetSystemIdForUser(user : Optional<WinRT.Windows.System.User>) throws -> Optional<WinRT.Windows.System.Profile.SystemIdentificationInfo> {
        return try WinRT.Windows.System.Profile.SystemIdentificationInfo(plok: SystemIdentificationStatics.GetSystemIdForUser(user: user!.Interface()));
    }
}

// type: Windows.System.Profile.SystemIdentificationInfo
// runtime class
public class SystemIdentificationInfo
    :
    WinRT.Object
{
    private var _self : WinRT.Windows.System.Profile.ISystemIdentificationInfo;
    internal init(plok: WinRT.Windows.System.Profile.ISystemIdentificationInfo?) throws {
        _self = plok!
        try super.init(plok: _self.QueryInterface())
    }
    internal func Interface() -> WinRT.Windows.System.Profile.ISystemIdentificationInfo { return _self; }
    public func get_Id() throws -> Optional<WinRT.Windows.Storage.Streams.IBuffer> {
        let _ifc : WinRT.Windows.System.Profile.ISystemIdentificationInfo = try _self.QueryInterface();
        return try _ifc.get_Id();
    }
    public func get_Source() throws -> WinRT.Windows.System.Profile.SystemIdentificationSource {
        let _ifc : WinRT.Windows.System.Profile.ISystemIdentificationInfo = try _self.QueryInterface();
        return try _ifc.get_Source();
    }
    public var Id : Optional<WinRT.Windows.Storage.Streams.IBuffer> {
        get throws {
        let _ifc : WinRT.Windows.System.Profile.ISystemIdentificationInfo = try _self.QueryInterface();
            return try _ifc.Id;
        }
    }
    public var Source : WinRT.Windows.System.Profile.SystemIdentificationSource {
        get throws {
        let _ifc : WinRT.Windows.System.Profile.ISystemIdentificationInfo = try _self.QueryInterface();
            return try _ifc.Source;
        }
    }
}

// type: Windows.System.Profile.SystemIdentificationSource
// enum type
public typealias SystemIdentificationSource = _q_CWindows_CSystem_CProfile_CSystemIdentificationSource;

}
extension WinRT.Windows.System.Profile.SystemIdentificationSource {
    public static var None : Self {
        get {
            return _q_CWindows_CSystem_CProfile_CSystemIdentificationSource_None;
        }
    }
    public static var Tpm : Self {
        get {
            return _q_CWindows_CSystem_CProfile_CSystemIdentificationSource_Tpm;
        }
    }
    public static var Uefi : Self {
        get {
            return _q_CWindows_CSystem_CProfile_CSystemIdentificationSource_Uefi;
        }
    }
    public static var Registry : Self {
        get {
            return _q_CWindows_CSystem_CProfile_CSystemIdentificationSource_Registry;
        }
    }
}
