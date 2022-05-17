// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;

extension Windows.System {
// type: Windows.System.DispatcherQueueController
// runtime class
private struct _IDispatcherQueueControllerStatics {
static var x : IDispatcherQueueControllerStatics =
    try! RoGetActivationFactory(HString("Windows.System.DispatcherQueueController"))
}
public static var DispatcherQueueControllerStatics : IDispatcherQueueControllerStatics {
    _IDispatcherQueueControllerStatics.x
}

// type: Windows.System.IDispatcherQueueController
// interface type
public class IDispatcherQueueController
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x22f34e66, Data2: 0x50db, Data3 : 0x4e36, Data4 : (0xa9, 0x8d, 0x61, 0xc0, 0x1b, 0x38, 0x4d, 0x20)) }
// method not needed: get_DispatcherQueue
    // Windows.Foundation.IAsyncAction ShutdownQueueAsync()
    public func _n_ShutdownQueueAsync(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<__q_CWindows_CFoundation_CIAsyncAction>>>?) throws {
        return try perform(as: __q_CWindows_CSystem_CIDispatcherQueueController.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.ShutdownQueueAsync(pThis, __presult))
        }
    }
    public func ShutdownQueueAsync() throws -> Optional<WinRT.Windows.Foundation.IAsyncAction> {
        var __result : Optional<UnsafeMutablePointer<__q_CWindows_CFoundation_CIAsyncAction>> = nil;
        try self._n_ShutdownQueueAsync(&__result);
        return WinRT.Windows.Foundation.IAsyncAction(consuming: __result);
    }
    public func ShutdownQueue() async throws {
        return try await withUnsafeThrowingContinuation { continuation in
            do {
                return try continuation.resume(returning: self.ShutdownQueueAsync()!.get())
            } catch let error {
                return continuation.resume(throwing: error)
            }
        }
    }
} // IDispatcherQueueController


// type: Windows.System.IDispatcherQueueControllerStatics
// interface type
public class IDispatcherQueueControllerStatics
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x0a6c98e0, Data2: 0x5198, Data3 : 0x49a2, Data4 : (0xa3, 0x13, 0x3f, 0x70, 0xd1, 0xf1, 0x3c, 0x27)) }
    // Windows.System.DispatcherQueueController CreateOnDedicatedThread()
    public func _n_CreateOnDedicatedThread(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<__q_CWindows_CSystem_CIDispatcherQueueController>>>?) throws {
        return try perform(as: __q_CWindows_CSystem_CIDispatcherQueueControllerStatics.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.CreateOnDedicatedThread(pThis, __presult))
        }
    }
    public func CreateOnDedicatedThread() throws -> Optional<WinRT.Windows.System.IDispatcherQueueController> {
        var __result : Optional<UnsafeMutablePointer<__q_CWindows_CSystem_CIDispatcherQueueController>> = nil;
        try self._n_CreateOnDedicatedThread(&__result);
        return WinRT.Windows.System.IDispatcherQueueController(consuming: __result);
    }
} // IDispatcherQueueControllerStatics


// type: Windows.System.IUser
// interface type
public class IUser
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xdf9a26c6, Data2: 0xe746, Data3 : 0x4bcd, Data4 : (0xb5, 0xd4, 0x12, 0x01, 0x03, 0xc4, 0x20, 0x9b)) }
// method not needed: get_NonRoamableId
// method not needed: get_AuthenticationStatus
// method not needed: get_Type
// TODO COPE (write_all_methods) (generic) Windows.Foundation.IAsyncOperation<System.Object> GetPropertyAsync(System.String)
// TODO COPE (write_all_methods) (generic) Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IPropertySet> GetPropertiesAsync(Windows.Foundation.Collections.IVectorView<System.String>)
// TODO COPE (write_all_methods) (generic) Windows.Foundation.IAsyncOperation<Windows.Storage.Streams.IRandomAccessStreamReference> GetPictureAsync(Windows.System.UserPictureSize)
} // IUser


// type: Windows.System.User
// runtime class
// TODO not needed: Windows.System.IUserStatics

}
