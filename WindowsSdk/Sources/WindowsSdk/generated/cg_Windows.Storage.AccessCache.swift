// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;
@_spi(IUnknown) import WinRT;
import CWindowsSdk;

extension ClosedGenerics {
// closed interface type
public class IVectorView_1__q_CWindows_CStorage_CAccessCache_CAccessListEntry
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x42b49b8a, Data2: 0x3014, Data3 : 0x5d27, Data4 : (0x8f, 0x2c, 0x1e, 0xf5, 0xee, 0x89, 0xec, 0x00)) }
// method not needed: GetAt
// method not needed: get_Size
// method not needed: IndexOf
// method not needed: GetMany
} // IVectorView_1__q_CWindows_CStorage_CAccessCache_CAccessListEntry
// closed interface type
public class IIterable_1__q_CWindows_CStorage_CAccessCache_CAccessListEntry
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x4995c2b0, Data2: 0x736b, Data3 : 0x588d, Data4 : (0xae, 0x42, 0x6f, 0x69, 0xb0, 0x25, 0xb3, 0x88)) }
// method not needed: First
} // IIterable_1__q_CWindows_CStorage_CAccessCache_CAccessListEntry
// closed interface type
public class IIterator_1__q_CWindows_CStorage_CAccessCache_CAccessListEntry
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xd1a0a6c4, Data2: 0x889d, Data3 : 0x519b, Data4 : (0x85, 0x08, 0x26, 0x24, 0x1b, 0x32, 0x9b, 0x7e)) }
// method not needed: get_Current
// method not needed: get_HasCurrent
// method not needed: MoveNext
// method not needed: GetMany
} // IIterator_1__q_CWindows_CStorage_CAccessCache_CAccessListEntry
// closed generic delegate type
public class ITypedEventHandler_2__q_CWindows_CStorage_CAccessCache_CStorageItemMostRecentlyUsedList__q_CWindows_CStorage_CAccessCache_CItemRemovedEventArgs
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x029dace8, Data2: 0x98d1, Data3 : 0x5bf7, Data4 : (0xb7, 0x80, 0x97, 0x17, 0xe9, 0x50, 0x27, 0xff)) }
    // [IsSpecialName] void Invoke(Windows.Storage.AccessCache.StorageItemMostRecentlyUsedList, Windows.Storage.AccessCache.ItemRemovedEventArgs)
    private func _n_Invoke(_ sender : Optional<UnsafeMutablePointer<_q_CWindows_CStorage_CAccessCache_CIStorageItemMostRecentlyUsedList>>, _ args : Optional<UnsafeMutablePointer<_q_CWindows_CStorage_CAccessCache_CIItemRemovedEventArgs>>) throws {
        return try perform(as: _cg_CWindows_CFoundation_ITypedEventHandler_2__q_CWindows_CStorage_CAccessCache_CStorageItemMostRecentlyUsedList__q_CWindows_CStorage_CAccessCache_CItemRemovedEventArgs.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Invoke(pThis, sender, args))
        }
    }
    public func Invoke(sender : Optional<Windows.Storage.AccessCache.IStorageItemMostRecentlyUsedList>, args : Optional<Windows.Storage.AccessCache.IItemRemovedEventArgs>) throws -> Void {
        try self._n_Invoke(RawPointer(sender), RawPointer(args));
    }
} // ITypedEventHandler_2__q_CWindows_CStorage_CAccessCache_CStorageItemMostRecentlyUsedList__q_CWindows_CStorage_CAccessCache_CItemRemovedEventArgs
// impl delegate type
open class impl_TypedEventHandler_2__q_CWindows_CStorage_CAccessCache_CStorageItemMostRecentlyUsedList__q_CWindows_CStorage_CAccessCache_CItemRemovedEventArgs
{
    private static var vtable: _cg_CWindows_CFoundation_ITypedEventHandler_2__q_CWindows_CStorage_CAccessCache_CStorageItemMostRecentlyUsedList__q_CWindows_CStorage_CAccessCache_CItemRemovedEventArgsVtbl = .init(
    QueryInterface: {
        guard let pUnk = $0, let riid = $1, let ppvObject = $2 else {
            return E_INVALIDARG
        }
        switch riid.pointee {
        case IUnknown.IID, ClosedGenerics.ITypedEventHandler_2__q_CWindows_CStorage_CAccessCache_CStorageItemMostRecentlyUsedList__q_CWindows_CStorage_CAccessCache_CItemRemovedEventArgs.IID:
            _ = pUnk.pointee.lpVtbl.pointee.AddRef(pUnk)
            ppvObject.pointee = UnsafeMutableRawPointer(pUnk)
            return S_OK
        default:
            ppvObject.pointee = nil
            return E_NOINTERFACE
        }
    },
    AddRef: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: impl_TypedEventHandler_2__q_CWindows_CStorage_CAccessCache_CStorageItemMostRecentlyUsedList__q_CWindows_CStorage_CAccessCache_CItemRemovedEventArgs.WithTrailingObjects.self, capacity: 1)
        _ = pinstance.pointee.container.retain()
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeUnretainedValue()))
        return __res;
    },
    Release: {
        let pinstance = UnsafeMutableRawPointer($0!).bindMemory(to: impl_TypedEventHandler_2__q_CWindows_CStorage_CAccessCache_CStorageItemMostRecentlyUsedList__q_CWindows_CStorage_CAccessCache_CItemRemovedEventArgs.WithTrailingObjects.self, capacity: 1)
        let __res = ULONG(_getRetainCount(pinstance.pointee.container.takeRetainedValue()))
        return __res;
    },
    Invoke: {
        (pThis, _ sender : Optional<UnsafeMutablePointer<_q_CWindows_CStorage_CAccessCache_CIStorageItemMostRecentlyUsedList>>, _ args : Optional<UnsafeMutablePointer<_q_CWindows_CStorage_CAccessCache_CIItemRemovedEventArgs>>) in
        guard let self = impl_TypedEventHandler_2__q_CWindows_CStorage_CAccessCache_CStorageItemMostRecentlyUsedList__q_CWindows_CStorage_CAccessCache_CItemRemovedEventArgs.from_impl_TypedEventHandler_2__q_CWindows_CStorage_CAccessCache_CStorageItemMostRecentlyUsedList__q_CWindows_CStorage_CAccessCache_CItemRemovedEventArgs(pThis) else {
            return E_INVALIDARG
        }
        do {
            let _ret : Void = try self.Invoke(sender: Windows.Storage.AccessCache.StorageItemMostRecentlyUsedList(plok: Windows.Storage.AccessCache.IStorageItemMostRecentlyUsedList(sender)), args: Windows.Storage.AccessCache.ItemRemovedEventArgs(plok: Windows.Storage.AccessCache.IItemRemovedEventArgs(args)))
            return S_OK
        }
        catch let _e as WinRT.Error {
            return _e.hr;
        } catch {
            return E_FAIL
        }
    }
    )
    private class Container {
        public var self_ref: impl_TypedEventHandler_2__q_CWindows_CStorage_CAccessCache_CStorageItemMostRecentlyUsedList__q_CWindows_CStorage_CAccessCache_CItemRemovedEventArgs? = nil
    }
    private struct WithTrailingObjects {
        public var interface_struct: _cg_CWindows_CFoundation_ITypedEventHandler_2__q_CWindows_CStorage_CAccessCache_CStorageItemMostRecentlyUsedList__q_CWindows_CStorage_CAccessCache_CItemRemovedEventArgs
        public var container: Unmanaged<Container>
    }
    private var instance: WithTrailingObjects

    private var _cb : Optional<(Optional<Windows.Storage.AccessCache.StorageItemMostRecentlyUsedList>, Optional<Windows.Storage.AccessCache.ItemRemovedEventArgs>) throws -> Void>
    public init(cb : Optional<(Optional<Windows.Storage.AccessCache.StorageItemMostRecentlyUsedList>, Optional<Windows.Storage.AccessCache.ItemRemovedEventArgs>) throws -> Void> = nil) {
        _cb = cb
        self.instance = WithTrailingObjects(interface_struct: _cg_CWindows_CFoundation_ITypedEventHandler_2__q_CWindows_CStorage_CAccessCache_CStorageItemMostRecentlyUsedList__q_CWindows_CStorage_CAccessCache_CItemRemovedEventArgs(lpVtbl: &Self.vtable), container: Unmanaged<Container>.passRetained(Container()))
        self.instance.container.takeUnretainedValue().self_ref = self
    }
    private static func from_impl_TypedEventHandler_2__q_CWindows_CStorage_CAccessCache_CStorageItemMostRecentlyUsedList__q_CWindows_CStorage_CAccessCache_CItemRemovedEventArgs(_ pUnk: UnsafeMutableRawPointer?) -> impl_TypedEventHandler_2__q_CWindows_CStorage_CAccessCache_CStorageItemMostRecentlyUsedList__q_CWindows_CStorage_CAccessCache_CItemRemovedEventArgs? {
        return pUnk?.bindMemory(to: impl_TypedEventHandler_2__q_CWindows_CStorage_CAccessCache_CStorageItemMostRecentlyUsedList__q_CWindows_CStorage_CAccessCache_CItemRemovedEventArgs.WithTrailingObjects.self, capacity: 1).pointee.container.takeUnretainedValue().self_ref
    }

    open func Invoke(sender : Optional<Windows.Storage.AccessCache.StorageItemMostRecentlyUsedList>, args : Optional<Windows.Storage.AccessCache.ItemRemovedEventArgs>) throws -> Void {
        if let cb = _cb {
            return try cb(sender, args)
        }
    }
    public func Interface() -> ClosedGenerics.ITypedEventHandler_2__q_CWindows_CStorage_CAccessCache_CStorageItemMostRecentlyUsedList__q_CWindows_CStorage_CAccessCache_CItemRemovedEventArgs {
        return withUnsafeMutablePointer(to: &self.instance.interface_struct) {
            ClosedGenerics.ITypedEventHandler_2__q_CWindows_CStorage_CAccessCache_CStorageItemMostRecentlyUsedList__q_CWindows_CStorage_CAccessCache_CItemRemovedEventArgs(UnsafeMutableRawPointer($0))
        }
    }
}
// wrap delegate type
open class wrap_TypedEventHandler_2__q_CWindows_CStorage_CAccessCache_CStorageItemMostRecentlyUsedList__q_CWindows_CStorage_CAccessCache_CItemRemovedEventArgs
{
    private var _self : ClosedGenerics.ITypedEventHandler_2__q_CWindows_CStorage_CAccessCache_CStorageItemMostRecentlyUsedList__q_CWindows_CStorage_CAccessCache_CItemRemovedEventArgs;
    public init(plok: ClosedGenerics.ITypedEventHandler_2__q_CWindows_CStorage_CAccessCache_CStorageItemMostRecentlyUsedList__q_CWindows_CStorage_CAccessCache_CItemRemovedEventArgs?) throws {
        _self = plok!
    }
    public func Invoke(sender : Optional<Windows.Storage.AccessCache.StorageItemMostRecentlyUsedList>, args : Optional<Windows.Storage.AccessCache.ItemRemovedEventArgs>) throws -> Void {
        return try _self.Invoke(sender: sender!.Interface(), args: args!.Interface());
    }
    public func Interface() -> ClosedGenerics.ITypedEventHandler_2__q_CWindows_CStorage_CAccessCache_CStorageItemMostRecentlyUsedList__q_CWindows_CStorage_CAccessCache_CItemRemovedEventArgs {
        return _self
    }
}
}
