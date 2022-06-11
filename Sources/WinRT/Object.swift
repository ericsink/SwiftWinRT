
#if not
open class Object
{
    private var _self : WinRT.IInspectable;
    internal init(plok: WinRT.IInspectable?) throws {
        _self = plok!
    }
    internal func Interface<Interface: IUnknown>() throws -> Interface {
        return try _self.QueryInterface()
    }
}
#endif


