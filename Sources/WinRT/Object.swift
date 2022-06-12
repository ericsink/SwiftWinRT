
open class Object
{
    private var _self : WinRT.IInspectable;
    internal init(plok: WinRT.IInspectable?) throws {
        _self = plok!
    }
    internal final func GetInterface() throws -> WinRT.IInspectable {
        return _self
    }
}

