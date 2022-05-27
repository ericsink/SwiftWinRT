// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;

extension Windows.Networking {
// type: Windows.Networking.EndpointPair
// runtime class
public class EndpointPair
{
    public init(localHostName : Optional<WinRT.Windows.Networking.IHostName>, localServiceName : Swift.String, remoteHostName : Optional<WinRT.Windows.Networking.IHostName>, remoteServiceName : Swift.String) throws {
        let _af : IEndpointPairFactory = try! RoGetActivationFactory(HString("Windows.Networking.EndpointPair"));
        _self = try _af.CreateEndpointPair(localHostName: localHostName, localServiceName: localServiceName, remoteHostName: remoteHostName, remoteServiceName: remoteServiceName)!;
        _IEndpointPair = try _self.QueryInterface();
    }
    private var _self : IInspectable;
    public var _IEndpointPair : IEndpointPair;
    // method not needed: get_LocalHostName
    // method not needed: put_LocalHostName
    // method not needed: get_LocalServiceName
    // method not needed: put_LocalServiceName
    // method not needed: get_RemoteHostName
    // method not needed: put_RemoteHostName
    // method not needed: get_RemoteServiceName
    // method not needed: put_RemoteServiceName
}

// type: Windows.Networking.HostName
// runtime class
public class HostName
{
    public init(hostName : Swift.String) throws {
        let _af : IHostNameFactory = try! RoGetActivationFactory(HString("Windows.Networking.HostName"));
        _self = try _af.CreateHostName(hostName: hostName)!;
        _IHostName = try _self.QueryInterface();
    }
    // static interface not needed: Windows.Networking.IHostNameStatics
    private var _self : IInspectable;
    public var _IHostName : IHostName;
    // method not needed: get_IPInformation
    // method not needed: get_RawName
    // method not needed: get_DisplayName
    // method not needed: get_CanonicalName
    // method not needed: get_Type
    // method not needed: IsEqual
    // instance interface not needed: Windows.Foundation.IStringable
}

// type: Windows.Networking.HostNameSortOptions
// enum type
public typealias HostNameSortOptions = _q_CWindows_CNetworking_CHostNameSortOptions;

// type: Windows.Networking.IEndpointPair
// interface type
public class IEndpointPair
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x33a0aa36, Data2: 0xf8fa, Data3 : 0x4b30, Data4 : (0xb8, 0x56, 0x76, 0x51, 0x7c, 0x3b, 0xd0, 0x6d)) }
// method not needed: get_LocalHostName
// method not needed: put_LocalHostName
// method not needed: get_LocalServiceName
// method not needed: put_LocalServiceName
// method not needed: get_RemoteHostName
// method not needed: put_RemoteHostName
// method not needed: get_RemoteServiceName
// method not needed: put_RemoteServiceName
} // IEndpointPair


// type: Windows.Networking.IEndpointPairFactory
// interface type
public class IEndpointPairFactory
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xb609d971, Data2: 0x64e0, Data3 : 0x442b, Data4 : (0xaa, 0x6f, 0xcc, 0x8c, 0x8f, 0x18, 0x1f, 0x78)) }
    // Windows.Networking.EndpointPair CreateEndpointPair(Windows.Networking.HostName, System.String, Windows.Networking.HostName, System.String)
    public func _n_CreateEndpointPair(_ localHostName : Optional<UnsafeMutablePointer<_q_CWindows_CNetworking_CIHostName>>, _ localServiceName : Optional<HSTRING>, _ remoteHostName : Optional<UnsafeMutablePointer<_q_CWindows_CNetworking_CIHostName>>, _ remoteServiceName : Optional<HSTRING>, _ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CWindows_CNetworking_CIEndpointPair>>>?) throws {
        return try perform(as: _q_CWindows_CNetworking_CIEndpointPairFactory.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.CreateEndpointPair(pThis, localHostName, localServiceName, remoteHostName, remoteServiceName, __presult))
        }
    }
    public func CreateEndpointPair(localHostName : Optional<WinRT.Windows.Networking.IHostName>, localServiceName : Swift.String, remoteHostName : Optional<WinRT.Windows.Networking.IHostName>, remoteServiceName : Swift.String) throws -> Optional<WinRT.Windows.Networking.IEndpointPair> {
        let __hstr_localServiceName = try HString(localServiceName);
        return try withExtendedLifetime(__hstr_localServiceName) {
        let __hstr_remoteServiceName = try HString(remoteServiceName);
        return try withExtendedLifetime(__hstr_remoteServiceName) {
        var __result : Optional<UnsafeMutablePointer<_q_CWindows_CNetworking_CIEndpointPair>> = nil;
        try self._n_CreateEndpointPair(RawPointer(localHostName), __hstr_localServiceName.hRef.hString, RawPointer(remoteHostName), __hstr_remoteServiceName.hRef.hString, &__result);
        return WinRT.Windows.Networking.IEndpointPair(consuming: __result);
        }
        }
    }
} // IEndpointPairFactory


// type: Windows.Networking.IHostName
// interface type
public class IHostName
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xbf8ecaad, Data2: 0xed96, Data3 : 0x49a7, Data4 : (0x90, 0x84, 0xd4, 0x16, 0xca, 0xe8, 0x8d, 0xcb)) }
// method not needed: get_IPInformation
// method not needed: get_RawName
// method not needed: get_DisplayName
// method not needed: get_CanonicalName
// method not needed: get_Type
// method not needed: IsEqual
} // IHostName


// type: Windows.Networking.IHostNameFactory
// interface type
public class IHostNameFactory
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x458c23ed, Data2: 0x712f, Data3 : 0x4576, Data4 : (0xad, 0xf1, 0xc2, 0x0b, 0x2c, 0x64, 0x35, 0x58)) }
    // Windows.Networking.HostName CreateHostName(System.String)
    public func _n_CreateHostName(_ hostName : Optional<HSTRING>, _ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CWindows_CNetworking_CIHostName>>>?) throws {
        return try perform(as: _q_CWindows_CNetworking_CIHostNameFactory.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.CreateHostName(pThis, hostName, __presult))
        }
    }
    public func CreateHostName(hostName : Swift.String) throws -> Optional<WinRT.Windows.Networking.IHostName> {
        let __hstr_hostName = try HString(hostName);
        return try withExtendedLifetime(__hstr_hostName) {
        var __result : Optional<UnsafeMutablePointer<_q_CWindows_CNetworking_CIHostName>> = nil;
        try self._n_CreateHostName(__hstr_hostName.hRef.hString, &__result);
        return WinRT.Windows.Networking.IHostName(consuming: __result);
        }
    }
} // IHostNameFactory


}
extension WinRT.Windows.Networking.HostNameSortOptions {
    public static var None : Self {
        get {
            return _q_CWindows_CNetworking_CHostNameSortOptions_None;
        }
    }
    public static var OptimizeForLongConnections : Self {
        get {
            return _q_CWindows_CNetworking_CHostNameSortOptions_OptimizeForLongConnections;
        }
    }
}
