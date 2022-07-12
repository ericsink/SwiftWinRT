// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;
@_spi(IUnknown) import WinRT;
import C;

extension Microsoft.Graphics.Canvas.UI.Composition {
// type: Microsoft.Graphics.Canvas.UI.Composition.CanvasComposition
// static class
public class CanvasComposition
{
    private struct _ICanvasCompositionStatics {
        static var x : ICanvasCompositionStatics =
            try! RoGetActivationFactory("Microsoft.Graphics.Canvas.UI.Composition.CanvasComposition")
    }
    public static var CanvasCompositionStatics : ICanvasCompositionStatics {
        _ICanvasCompositionStatics.x
    }
    public static func CreateCompositionGraphicsDevice(compositor : Optional<Microsoft.UI.Composition.Compositor>, canvasDevice : Optional<Microsoft.Graphics.Canvas.CanvasDevice>) throws -> Optional<Microsoft.UI.Composition.CompositionGraphicsDevice> {
        return try Microsoft.UI.Composition.CompositionGraphicsDevice(plok: CanvasCompositionStatics.CreateCompositionGraphicsDevice(compositor: compositor!.Interface(), canvasDevice: canvasDevice!.Interface()));
    }
    public static func GetCanvasDevice(graphicsDevice : Optional<Microsoft.UI.Composition.CompositionGraphicsDevice>) throws -> Optional<Microsoft.Graphics.Canvas.CanvasDevice> {
        return try Microsoft.Graphics.Canvas.CanvasDevice(plok: CanvasCompositionStatics.GetCanvasDevice(graphicsDevice: graphicsDevice!.Interface()));
    }
    public static func SetCanvasDevice(graphicsDevice : Optional<Microsoft.UI.Composition.CompositionGraphicsDevice>, canvasDevice : Optional<Microsoft.Graphics.Canvas.CanvasDevice>) throws -> Void {
        return try CanvasCompositionStatics.SetCanvasDevice(graphicsDevice: graphicsDevice!.Interface(), canvasDevice: canvasDevice!.Interface());
    }
    public static func CreateDrawingSession(drawingSurface : Optional<Microsoft.UI.Composition.CompositionDrawingSurface>) throws -> Optional<Microsoft.Graphics.Canvas.CanvasDrawingSession> {
        return try Microsoft.Graphics.Canvas.CanvasDrawingSession(plok: CanvasCompositionStatics.CreateDrawingSession(drawingSurface: drawingSurface!.Interface()));
    }
    public static func CreateDrawingSession(drawingSurface : Optional<Microsoft.UI.Composition.CompositionDrawingSurface>, updateRect : Windows.Foundation.Rect) throws -> Optional<Microsoft.Graphics.Canvas.CanvasDrawingSession> {
        return try Microsoft.Graphics.Canvas.CanvasDrawingSession(plok: CanvasCompositionStatics.CreateDrawingSessionWithUpdateRect(drawingSurface: drawingSurface!.Interface(), updateRect: updateRect));
    }
    public static func CreateDrawingSession(drawingSurface : Optional<Microsoft.UI.Composition.CompositionDrawingSurface>, updateRectInPixels : Windows.Foundation.Rect, dpi : Swift.Float) throws -> Optional<Microsoft.Graphics.Canvas.CanvasDrawingSession> {
        return try Microsoft.Graphics.Canvas.CanvasDrawingSession(plok: CanvasCompositionStatics.CreateDrawingSessionWithUpdateRectAndDpi(drawingSurface: drawingSurface!.Interface(), updateRectInPixels: updateRectInPixels, dpi: dpi));
    }
    public static func Resize(drawingSurface : Optional<Microsoft.UI.Composition.CompositionDrawingSurface>, sizeInPixels : Windows.Foundation.Size) throws -> Void {
        return try CanvasCompositionStatics.Resize(drawingSurface: drawingSurface!.Interface(), sizeInPixels: sizeInPixels);
    }
}

// type: Microsoft.Graphics.Canvas.UI.Composition.ICanvasCompositionStatics
// interface type
open class ICanvasCompositionStatics
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x162deb43, Data2: 0x1cf5, Data3 : 0x46f8, Data4 : (0xa0, 0xaf, 0x35, 0x6b, 0x23, 0x15, 0x8f, 0x92)) }
    // Microsoft.UI.Composition.CompositionGraphicsDevice CreateCompositionGraphicsDevice(Microsoft.UI.Composition.Compositor, Microsoft.Graphics.Canvas.CanvasDevice)
    private func _n_CreateCompositionGraphicsDevice(_ compositor : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CComposition_CICompositor>>, _ canvasDevice : Optional<UnsafeMutablePointer<_q_CMicrosoft_CGraphics_CCanvas_CICanvasDevice>>, _ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CComposition_CICompositionGraphicsDevice>>>?) throws {
        return try perform(as: _q_CMicrosoft_CGraphics_CCanvas_CUI_CComposition_CICanvasCompositionStatics.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.CreateCompositionGraphicsDevice(pThis, compositor, canvasDevice, __presult))
        }
    }
    public func CreateCompositionGraphicsDevice(compositor : Optional<Microsoft.UI.Composition.ICompositor>, canvasDevice : Optional<Microsoft.Graphics.Canvas.ICanvasDevice>) throws -> Optional<Microsoft.UI.Composition.ICompositionGraphicsDevice> {
        var __result : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CComposition_CICompositionGraphicsDevice>> = nil;
        try self._n_CreateCompositionGraphicsDevice(RawPointer(compositor), RawPointer(canvasDevice), &__result);
        return Microsoft.UI.Composition.ICompositionGraphicsDevice(consuming: __result);
    }
    // Microsoft.Graphics.Canvas.CanvasDevice GetCanvasDevice(Microsoft.UI.Composition.CompositionGraphicsDevice)
    private func _n_GetCanvasDevice(_ graphicsDevice : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CComposition_CICompositionGraphicsDevice>>, _ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CMicrosoft_CGraphics_CCanvas_CICanvasDevice>>>?) throws {
        return try perform(as: _q_CMicrosoft_CGraphics_CCanvas_CUI_CComposition_CICanvasCompositionStatics.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.GetCanvasDevice(pThis, graphicsDevice, __presult))
        }
    }
    public func GetCanvasDevice(graphicsDevice : Optional<Microsoft.UI.Composition.ICompositionGraphicsDevice>) throws -> Optional<Microsoft.Graphics.Canvas.ICanvasDevice> {
        var __result : Optional<UnsafeMutablePointer<_q_CMicrosoft_CGraphics_CCanvas_CICanvasDevice>> = nil;
        try self._n_GetCanvasDevice(RawPointer(graphicsDevice), &__result);
        return Microsoft.Graphics.Canvas.ICanvasDevice(consuming: __result);
    }
    // void SetCanvasDevice(Microsoft.UI.Composition.CompositionGraphicsDevice, Microsoft.Graphics.Canvas.CanvasDevice)
    private func _n_SetCanvasDevice(_ graphicsDevice : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CComposition_CICompositionGraphicsDevice>>, _ canvasDevice : Optional<UnsafeMutablePointer<_q_CMicrosoft_CGraphics_CCanvas_CICanvasDevice>>) throws {
        return try perform(as: _q_CMicrosoft_CGraphics_CCanvas_CUI_CComposition_CICanvasCompositionStatics.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.SetCanvasDevice(pThis, graphicsDevice, canvasDevice))
        }
    }
    public func SetCanvasDevice(graphicsDevice : Optional<Microsoft.UI.Composition.ICompositionGraphicsDevice>, canvasDevice : Optional<Microsoft.Graphics.Canvas.ICanvasDevice>) throws -> Void {
        try self._n_SetCanvasDevice(RawPointer(graphicsDevice), RawPointer(canvasDevice));
    }
    // Microsoft.Graphics.Canvas.CanvasDrawingSession CreateDrawingSession(Microsoft.UI.Composition.CompositionDrawingSurface)
    private func _n_CreateDrawingSession(_ drawingSurface : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CComposition_CICompositionDrawingSurface>>, _ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CMicrosoft_CGraphics_CCanvas_CICanvasDrawingSession>>>?) throws {
        return try perform(as: _q_CMicrosoft_CGraphics_CCanvas_CUI_CComposition_CICanvasCompositionStatics.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.CreateDrawingSession(pThis, drawingSurface, __presult))
        }
    }
    public func CreateDrawingSession(drawingSurface : Optional<Microsoft.UI.Composition.ICompositionDrawingSurface>) throws -> Optional<Microsoft.Graphics.Canvas.ICanvasDrawingSession> {
        var __result : Optional<UnsafeMutablePointer<_q_CMicrosoft_CGraphics_CCanvas_CICanvasDrawingSession>> = nil;
        try self._n_CreateDrawingSession(RawPointer(drawingSurface), &__result);
        return Microsoft.Graphics.Canvas.ICanvasDrawingSession(consuming: __result);
    }
    // Microsoft.Graphics.Canvas.CanvasDrawingSession CreateDrawingSession(Microsoft.UI.Composition.CompositionDrawingSurface, Windows.Foundation.Rect)
    private func _n_CreateDrawingSessionWithUpdateRect(_ drawingSurface : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CComposition_CICompositionDrawingSurface>>, _ updateRect : _q_CWindows_CFoundation_CRect, _ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CMicrosoft_CGraphics_CCanvas_CICanvasDrawingSession>>>?) throws {
        return try perform(as: _q_CMicrosoft_CGraphics_CCanvas_CUI_CComposition_CICanvasCompositionStatics.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.CreateDrawingSessionWithUpdateRect(pThis, drawingSurface, updateRect, __presult))
        }
    }
    public func CreateDrawingSessionWithUpdateRect(drawingSurface : Optional<Microsoft.UI.Composition.ICompositionDrawingSurface>, updateRect : Windows.Foundation.Rect) throws -> Optional<Microsoft.Graphics.Canvas.ICanvasDrawingSession> {
        var __result : Optional<UnsafeMutablePointer<_q_CMicrosoft_CGraphics_CCanvas_CICanvasDrawingSession>> = nil;
        try self._n_CreateDrawingSessionWithUpdateRect(RawPointer(drawingSurface), updateRect, &__result);
        return Microsoft.Graphics.Canvas.ICanvasDrawingSession(consuming: __result);
    }
    // Microsoft.Graphics.Canvas.CanvasDrawingSession CreateDrawingSession(Microsoft.UI.Composition.CompositionDrawingSurface, Windows.Foundation.Rect, System.Single)
    private func _n_CreateDrawingSessionWithUpdateRectAndDpi(_ drawingSurface : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CComposition_CICompositionDrawingSurface>>, _ updateRectInPixels : _q_CWindows_CFoundation_CRect, _ dpi : FLOAT, _ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CMicrosoft_CGraphics_CCanvas_CICanvasDrawingSession>>>?) throws {
        return try perform(as: _q_CMicrosoft_CGraphics_CCanvas_CUI_CComposition_CICanvasCompositionStatics.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.CreateDrawingSessionWithUpdateRectAndDpi(pThis, drawingSurface, updateRectInPixels, dpi, __presult))
        }
    }
    public func CreateDrawingSessionWithUpdateRectAndDpi(drawingSurface : Optional<Microsoft.UI.Composition.ICompositionDrawingSurface>, updateRectInPixels : Windows.Foundation.Rect, dpi : Swift.Float) throws -> Optional<Microsoft.Graphics.Canvas.ICanvasDrawingSession> {
        var __result : Optional<UnsafeMutablePointer<_q_CMicrosoft_CGraphics_CCanvas_CICanvasDrawingSession>> = nil;
        try self._n_CreateDrawingSessionWithUpdateRectAndDpi(RawPointer(drawingSurface), updateRectInPixels, dpi, &__result);
        return Microsoft.Graphics.Canvas.ICanvasDrawingSession(consuming: __result);
    }
    // void Resize(Microsoft.UI.Composition.CompositionDrawingSurface, Windows.Foundation.Size)
    private func _n_Resize(_ drawingSurface : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CComposition_CICompositionDrawingSurface>>, _ sizeInPixels : _q_CWindows_CFoundation_CSize) throws {
        return try perform(as: _q_CMicrosoft_CGraphics_CCanvas_CUI_CComposition_CICanvasCompositionStatics.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Resize(pThis, drawingSurface, sizeInPixels))
        }
    }
    public func Resize(drawingSurface : Optional<Microsoft.UI.Composition.ICompositionDrawingSurface>, sizeInPixels : Windows.Foundation.Size) throws -> Void {
        try self._n_Resize(RawPointer(drawingSurface), sizeInPixels);
    }
} // ICanvasCompositionStatics


}
