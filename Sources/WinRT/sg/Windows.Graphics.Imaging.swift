// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;

extension Windows.Graphics.Imaging {
// type: Windows.Graphics.Imaging.BitmapAlphaMode
// enum type
public typealias BitmapAlphaMode = _q_CWindows_CGraphics_CImaging_CBitmapAlphaMode;

// type: Windows.Graphics.Imaging.BitmapPixelFormat
// enum type
public typealias BitmapPixelFormat = _q_CWindows_CGraphics_CImaging_CBitmapPixelFormat;

// type: Windows.Graphics.Imaging.BitmapSize
// struct type
public typealias BitmapSize = _q_CWindows_CGraphics_CImaging_CBitmapSize;

// type: Windows.Graphics.Imaging.ISoftwareBitmap
// interface type
open class ISoftwareBitmap
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x689e0708, Data2: 0x7eef, Data3 : 0x483f, Data4 : (0x96, 0x3f, 0xda, 0x93, 0x88, 0x18, 0xe0, 0x73)) }
// method not needed: get_BitmapPixelFormat
// method not needed: get_BitmapAlphaMode
// method not needed: get_PixelWidth
// method not needed: get_PixelHeight
// method not needed: get_IsReadOnly
// method not needed: put_DpiX
// method not needed: get_DpiX
// method not needed: put_DpiY
// method not needed: get_DpiY
// method not needed: LockBuffer
// method not needed: CopyTo
// method not needed: CopyFromBuffer
// method not needed: CopyToBuffer
// method not needed: GetReadOnlyView
} // ISoftwareBitmap


// type: Windows.Graphics.Imaging.ISoftwareBitmapFactory
// interface type
// ACTIVATION INTERFACE
open class ISoftwareBitmapFactory
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xc99feb69, Data2: 0x2d62, Data3 : 0x4d47, Data4 : (0xa6, 0xb3, 0x4f, 0xdb, 0x6a, 0x07, 0xfd, 0xf8)) }
    // Windows.Graphics.Imaging.SoftwareBitmap Create(Windows.Graphics.Imaging.BitmapPixelFormat, System.Int32, System.Int32)
    private func _n_Create(_ format : _q_CWindows_CGraphics_CImaging_CBitmapPixelFormat, _ width : INT32, _ height : INT32, _ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CWindows_CGraphics_CImaging_CISoftwareBitmap>>>?) throws {
        return try perform(as: _q_CWindows_CGraphics_CImaging_CISoftwareBitmapFactory.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Create(pThis, format, width, height, __presult))
        }
    }
    public func Create(format : WinRT.Windows.Graphics.Imaging.BitmapPixelFormat, width : Swift.Int32, height : Swift.Int32) throws -> Optional<WinRT.Windows.Graphics.Imaging.ISoftwareBitmap> {
        var __result : Optional<UnsafeMutablePointer<_q_CWindows_CGraphics_CImaging_CISoftwareBitmap>> = nil;
        try self._n_Create(format, width, height, &__result);
        return WinRT.Windows.Graphics.Imaging.ISoftwareBitmap(consuming: __result);
    }
    // Windows.Graphics.Imaging.SoftwareBitmap CreateWithAlpha(Windows.Graphics.Imaging.BitmapPixelFormat, System.Int32, System.Int32, Windows.Graphics.Imaging.BitmapAlphaMode)
    private func _n_CreateWithAlpha(_ format : _q_CWindows_CGraphics_CImaging_CBitmapPixelFormat, _ width : INT32, _ height : INT32, _ alpha : _q_CWindows_CGraphics_CImaging_CBitmapAlphaMode, _ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CWindows_CGraphics_CImaging_CISoftwareBitmap>>>?) throws {
        return try perform(as: _q_CWindows_CGraphics_CImaging_CISoftwareBitmapFactory.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.CreateWithAlpha(pThis, format, width, height, alpha, __presult))
        }
    }
    public func CreateWithAlpha(format : WinRT.Windows.Graphics.Imaging.BitmapPixelFormat, width : Swift.Int32, height : Swift.Int32, alpha : WinRT.Windows.Graphics.Imaging.BitmapAlphaMode) throws -> Optional<WinRT.Windows.Graphics.Imaging.ISoftwareBitmap> {
        var __result : Optional<UnsafeMutablePointer<_q_CWindows_CGraphics_CImaging_CISoftwareBitmap>> = nil;
        try self._n_CreateWithAlpha(format, width, height, alpha, &__result);
        return WinRT.Windows.Graphics.Imaging.ISoftwareBitmap(consuming: __result);
    }
} // ISoftwareBitmapFactory


// type: Windows.Graphics.Imaging.SoftwareBitmap
// runtime class
public class SoftwareBitmap
    :
    WinRT.Object
{
    private var _self : WinRT.Windows.Graphics.Imaging.ISoftwareBitmap;
    internal init(plok: WinRT.Windows.Graphics.Imaging.ISoftwareBitmap?) throws {
        _self = plok!
        try super.init(plok: _self.QueryInterface())
    }
    internal func Interface() -> WinRT.Windows.Graphics.Imaging.ISoftwareBitmap { return _self; }
    public init(format : WinRT.Windows.Graphics.Imaging.BitmapPixelFormat, width : Swift.Int32, height : Swift.Int32) throws {
        let _af : ISoftwareBitmapFactory = try RoGetActivationFactory("Windows.Graphics.Imaging.SoftwareBitmap");
        _self = try _af.Create(format: format, width: width, height: height)!;
        try super.init(plok: _self.QueryInterface())
    }
    public init(format : WinRT.Windows.Graphics.Imaging.BitmapPixelFormat, width : Swift.Int32, height : Swift.Int32, alpha : WinRT.Windows.Graphics.Imaging.BitmapAlphaMode) throws {
        let _af : ISoftwareBitmapFactory = try RoGetActivationFactory("Windows.Graphics.Imaging.SoftwareBitmap");
        _self = try _af.CreateWithAlpha(format: format, width: width, height: height, alpha: alpha)!;
        try super.init(plok: _self.QueryInterface())
    }
    // static interface not needed: Windows.Graphics.Imaging.ISoftwareBitmapStatics
    // method not needed: get_BitmapPixelFormat
    // method not needed: get_BitmapAlphaMode
    // method not needed: get_PixelWidth
    // method not needed: get_PixelHeight
    // method not needed: get_IsReadOnly
    // method not needed: put_DpiX
    // method not needed: get_DpiX
    // method not needed: put_DpiY
    // method not needed: get_DpiY
    // method not needed: LockBuffer
    // method not needed: CopyTo
    // method not needed: CopyFromBuffer
    // method not needed: CopyToBuffer
    // method not needed: GetReadOnlyView
    public func Close() throws -> Void {
        let _ifc : WinRT.Windows.Foundation.IClosable = try _self.QueryInterface();
        return try _ifc.Close();
    }
}

}
extension WinRT.Windows.Graphics.Imaging.BitmapAlphaMode {
    public static var Premultiplied : Self {
        get {
            return _q_CWindows_CGraphics_CImaging_CBitmapAlphaMode_Premultiplied;
        }
    }
    public static var Straight : Self {
        get {
            return _q_CWindows_CGraphics_CImaging_CBitmapAlphaMode_Straight;
        }
    }
    public static var Ignore : Self {
        get {
            return _q_CWindows_CGraphics_CImaging_CBitmapAlphaMode_Ignore;
        }
    }
}
extension WinRT.Windows.Graphics.Imaging.BitmapPixelFormat {
    public static var Unknown : Self {
        get {
            return _q_CWindows_CGraphics_CImaging_CBitmapPixelFormat_Unknown;
        }
    }
    public static var Rgba16 : Self {
        get {
            return _q_CWindows_CGraphics_CImaging_CBitmapPixelFormat_Rgba16;
        }
    }
    public static var Rgba8 : Self {
        get {
            return _q_CWindows_CGraphics_CImaging_CBitmapPixelFormat_Rgba8;
        }
    }
    public static var Gray16 : Self {
        get {
            return _q_CWindows_CGraphics_CImaging_CBitmapPixelFormat_Gray16;
        }
    }
    public static var Gray8 : Self {
        get {
            return _q_CWindows_CGraphics_CImaging_CBitmapPixelFormat_Gray8;
        }
    }
    public static var Bgra8 : Self {
        get {
            return _q_CWindows_CGraphics_CImaging_CBitmapPixelFormat_Bgra8;
        }
    }
    public static var Nv12 : Self {
        get {
            return _q_CWindows_CGraphics_CImaging_CBitmapPixelFormat_Nv12;
        }
    }
    public static var P010 : Self {
        get {
            return _q_CWindows_CGraphics_CImaging_CBitmapPixelFormat_P010;
        }
    }
    public static var Yuy2 : Self {
        get {
            return _q_CWindows_CGraphics_CImaging_CBitmapPixelFormat_Yuy2;
        }
    }
}
