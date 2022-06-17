// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;

extension Microsoft.Graphics.Canvas.Svg {
// type: Microsoft.Graphics.Canvas.Svg.CanvasSvgDocument
// runtime class
public class CanvasSvgDocument
    :
    WinRT.Object
{
    private var _self : WinRT.Microsoft.Graphics.Canvas.Svg.ICanvasSvgDocument;
    internal init(plok: WinRT.Microsoft.Graphics.Canvas.Svg.ICanvasSvgDocument?) throws {
        _self = plok!
        try super.init(plok: _self.QueryInterface())
    }
    internal func Interface() -> WinRT.Microsoft.Graphics.Canvas.Svg.ICanvasSvgDocument { return _self; }
    public init(resourceCreator : Optional<WinRT.Microsoft.Graphics.Canvas.ICanvasResourceCreator>) throws {
        let _af : ICanvasSvgDocumentFactory = try RoGetActivationFactory("Microsoft.Graphics.Canvas.Svg.CanvasSvgDocument");
        _self = try _af.CreateEmpty(resourceCreator: resourceCreator)!;
        try super.init(plok: _self.QueryInterface())
    }
    // static interface not needed: Microsoft.Graphics.Canvas.Svg.ICanvasSvgDocumentStatics
    // method not needed: get_Device
    // method not needed: GetXml
    // method not needed: SaveAsync
    // method not needed: put_Root
    // method not needed: get_Root
    // method not needed: FindElementById
    // method not needed: CreatePaintAttribute
    // method not needed: CreatePaintAttribute
    // method not needed: CreatePathAttribute
    // method not needed: CreatePathAttribute
    // method not needed: CreatePointsAttribute
    // method not needed: CreatePointsAttribute
    // method not needed: CreateStrokeDashArrayAttribute
    // method not needed: CreateStrokeDashArrayAttribute
    // method not needed: LoadElementFromXml
    // method not needed: LoadElementAsync
    public func Close() throws -> Void {
        let _ifc : WinRT.Windows.Foundation.IClosable = try _self.QueryInterface();
        return try _ifc.Close();
    }
}

// type: Microsoft.Graphics.Canvas.Svg.ICanvasSvgDocument
// interface type
open class ICanvasSvgDocument
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xa0e34929, Data2: 0x3551, Data3 : 0x44fe, Data4 : (0xa6, 0x70, 0xd9, 0xb3, 0xfd, 0x80, 0x05, 0x16)) }
// method not needed: get_Device
// method not needed: GetXml
// method not needed: SaveAsync
// method not needed: put_Root
// method not needed: get_Root
// method not needed: FindElementById
// method not needed: CreatePaintAttributeWithDefaults
// method not needed: CreatePaintAttribute
// method not needed: CreatePathAttributeWithDefaults
// method not needed: CreatePathAttribute
// method not needed: CreatePointsAttributeWithDefaults
// method not needed: CreatePointsAttribute
// method not needed: CreateStrokeDashArrayAttributeWithDefaults
// method not needed: CreateStrokeDashArrayAttribute
// method not needed: LoadElementFromXml
// method not needed: LoadElementAsync
} // ICanvasSvgDocument


// type: Microsoft.Graphics.Canvas.Svg.ICanvasSvgDocumentFactory
// interface type
// ACTIVATION INTERFACE
open class ICanvasSvgDocumentFactory
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xbab0f16d, Data2: 0x4050, Data3 : 0x4ef6, Data4 : (0x80, 0x22, 0x8a, 0x07, 0xe9, 0xe7, 0x4a, 0x9d)) }
    // Microsoft.Graphics.Canvas.Svg.CanvasSvgDocument CreateEmpty(Microsoft.Graphics.Canvas.ICanvasResourceCreator)
    private func _n_CreateEmpty(_ resourceCreator : Optional<UnsafeMutablePointer<_q_CMicrosoft_CGraphics_CCanvas_CICanvasResourceCreator>>, _ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CMicrosoft_CGraphics_CCanvas_CSvg_CICanvasSvgDocument>>>?) throws {
        return try perform(as: _q_CMicrosoft_CGraphics_CCanvas_CSvg_CICanvasSvgDocumentFactory.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.CreateEmpty(pThis, resourceCreator, __presult))
        }
    }
    public func CreateEmpty(resourceCreator : Optional<WinRT.Microsoft.Graphics.Canvas.ICanvasResourceCreator>) throws -> Optional<WinRT.Microsoft.Graphics.Canvas.Svg.ICanvasSvgDocument> {
        var __result : Optional<UnsafeMutablePointer<_q_CMicrosoft_CGraphics_CCanvas_CSvg_CICanvasSvgDocument>> = nil;
        try self._n_CreateEmpty(RawPointer(resourceCreator), &__result);
        return WinRT.Microsoft.Graphics.Canvas.Svg.ICanvasSvgDocument(consuming: __result);
    }
} // ICanvasSvgDocumentFactory


}
