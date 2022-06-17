
open class Object
{
    private var _self : WinRT.IInspectable;
    internal init(plok: WinRT.IInspectable?) throws {
        _self = plok!
    }
    // TODO this deliberately has a different name from Interface(),
    // which all the derived clases use, because giving this the
    // same name triggers a ton of errors about needing an override
    // keyword, and when we add that keyword, we get errors saying
    // it isn't needed.  probably because all the subclasses return
    // something that inherits from the type this one returns.
    internal final func GetInterface() throws -> WinRT.IInspectable {
        return _self
    }
  public func QueryInterface<Interface: IUnknown>() throws -> Interface {
    return try _self.QueryInterface()
  }
}

