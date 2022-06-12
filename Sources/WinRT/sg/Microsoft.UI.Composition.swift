// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;

extension Microsoft.UI.Composition {
// type: Microsoft.UI.Composition.AnimationPropertyInfo
// runtime class
public class AnimationPropertyInfo
    :
    Microsoft.UI.Composition.CompositionObject
{
    private var _self : WinRT.Microsoft.UI.Composition.IAnimationPropertyInfo;
    internal init(plok: WinRT.Microsoft.UI.Composition.IAnimationPropertyInfo?) throws {
        _self = plok!
        try super.init(plok: _self.QueryInterface())
    }
    internal func Interface() -> WinRT.Microsoft.UI.Composition.IAnimationPropertyInfo { return _self; }
    // method not needed: get_AccessMode
    // method not needed: put_AccessMode
    // instance interface not needed: Microsoft.UI.Composition.IAnimationPropertyInfo2
}

// type: Microsoft.UI.Composition.CompositionBrush
// runtime class
open class CompositionBrush
    :
    Microsoft.UI.Composition.CompositionObject
{
    private var _self : WinRT.Microsoft.UI.Composition.ICompositionBrush;
    internal init(plok: WinRT.Microsoft.UI.Composition.ICompositionBrush?) throws {
        _self = plok!
        try super.init(plok: _self.QueryInterface())
    }
    internal func Interface() -> WinRT.Microsoft.UI.Composition.ICompositionBrush { return _self; }
    // COMPOSABLE: Microsoft.UI.Composition.ICompositionBrushFactory
// composable interface not needed: Microsoft.UI.Composition.ICompositionBrushFactory
}

// type: Microsoft.UI.Composition.CompositionObject
// runtime class
open class CompositionObject
    :
    WinRT.Object
{
    private var _self : WinRT.Microsoft.UI.Composition.ICompositionObject;
    internal init(plok: WinRT.Microsoft.UI.Composition.ICompositionObject?) throws {
        _self = plok!
        try super.init(plok: _self.QueryInterface())
    }
    internal func Interface() -> WinRT.Microsoft.UI.Composition.ICompositionObject { return _self; }
    // COMPOSABLE: Microsoft.UI.Composition.ICompositionObjectFactory
// composable interface not needed: Microsoft.UI.Composition.ICompositionObjectFactory
    // static interface not needed: Microsoft.UI.Composition.ICompositionObjectStatics
    // method not needed: get_Compositor
    // method not needed: get_Properties
    // method not needed: StartAnimation
    // method not needed: StopAnimation
    // instance interface not needed: Microsoft.UI.Composition.ICompositionObject2
    // instance interface not needed: Microsoft.UI.Composition.ICompositionObject3
    // instance interface not needed: Microsoft.UI.Composition.ICompositionObject4
    // instance interface not needed: Microsoft.UI.Composition.ICompositionObject5
    // instance interface not needed: Windows.Foundation.IClosable
    public func PopulatePropertyInfo(propertyName : Swift.String, propertyInfo : Optional<WinRT.Microsoft.UI.Composition.AnimationPropertyInfo>) throws -> Void {
        let _ifc : WinRT.Microsoft.UI.Composition.IAnimationObject = try _self.QueryInterface();
        return try _ifc.PopulatePropertyInfo(propertyName: propertyName, propertyInfo: propertyInfo!.Interface());
    }
}

// type: Microsoft.UI.Composition.Compositor
// runtime class
public class Compositor
    :
    WinRT.Object
{
    private var _self : WinRT.Microsoft.UI.Composition.ICompositor;
    internal init(plok: WinRT.Microsoft.UI.Composition.ICompositor?) throws {
        _self = plok!
        try super.init(plok: _self.QueryInterface())
    }
    internal func Interface() -> WinRT.Microsoft.UI.Composition.ICompositor { return _self; }
    public init() throws {
        let _classId = try HString("Microsoft.UI.Composition.Compositor")
        _self = try RoActivateInstance(_classId)
        try super.init(plok: _self.QueryInterface())
    }
    // static interface not needed: Microsoft.UI.Composition.ICompositorStatics
    // method not needed: CreateColorKeyFrameAnimation
    // method not needed: CreateColorBrush
    // method not needed: CreateColorBrush
    // method not needed: CreateContainerVisual
    // method not needed: CreateCubicBezierEasingFunction
    // method not needed: CreateEffectFactory
    // method not needed: CreateEffectFactory
    // method not needed: CreateExpressionAnimation
    // method not needed: CreateExpressionAnimation
    // method not needed: CreateInsetClip
    // method not needed: CreateInsetClip
    // method not needed: CreateLinearEasingFunction
    // method not needed: CreatePropertySet
    // method not needed: CreateQuaternionKeyFrameAnimation
    // method not needed: CreateScalarKeyFrameAnimation
    // method not needed: CreateScopedBatch
    // method not needed: CreateSpriteVisual
    // method not needed: CreateSurfaceBrush
    // method not needed: CreateSurfaceBrush
    // method not needed: CreateVector2KeyFrameAnimation
    // method not needed: CreateVector3KeyFrameAnimation
    // method not needed: CreateVector4KeyFrameAnimation
    // method not needed: GetCommitBatch
    // instance interface not needed: Microsoft.UI.Composition.ICompositor2
    // instance interface not needed: Microsoft.UI.Composition.ICompositor4
    // instance interface not needed: Microsoft.UI.Composition.ICompositor5
    // instance interface not needed: Microsoft.UI.Composition.ICompositor6
    // instance interface not needed: Microsoft.UI.Composition.ICompositor7
    // instance interface not needed: Microsoft.UI.Composition.ICompositorWithProjectedShadow
    // instance interface not needed: Microsoft.UI.Composition.ICompositorWithRadialGradient
    // instance interface not needed: Microsoft.UI.Composition.ICompositorWithVisualSurface
    // instance interface not needed: Microsoft.UI.Composition.ICompositor8
    // instance interface not needed: Windows.Foundation.IClosable
}

// type: Microsoft.UI.Composition.IAnimationObject
// interface type
open class IAnimationObject
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x8f56119d, Data2: 0xb96d, Data3 : 0x58d0, Data4 : (0x99, 0x16, 0xd1, 0xc5, 0xe3, 0x90, 0xf8, 0x90)) }
    // void PopulatePropertyInfo(System.String, Microsoft.UI.Composition.AnimationPropertyInfo)
    public func _n_PopulatePropertyInfo(_ propertyName : Optional<HSTRING>, _ propertyInfo : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CComposition_CIAnimationPropertyInfo>>) throws {
        return try perform(as: _q_CMicrosoft_CUI_CComposition_CIAnimationObject.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.PopulatePropertyInfo(pThis, propertyName, propertyInfo))
        }
    }
    public func PopulatePropertyInfo(propertyName : Swift.String, propertyInfo : Optional<WinRT.Microsoft.UI.Composition.IAnimationPropertyInfo>) throws -> Void {
        let __hstr_propertyName = try HString(propertyName);
        return try withExtendedLifetime(__hstr_propertyName) {
        try self._n_PopulatePropertyInfo(__hstr_propertyName.hRef.hString, RawPointer(propertyInfo));
        }
    }
} // IAnimationObject


// type: Microsoft.UI.Composition.IAnimationPropertyInfo
// interface type
open class IAnimationPropertyInfo
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x3d721a2b, Data2: 0x9ccd, Data3 : 0x57bd, Data4 : (0xb6, 0xc2, 0xce, 0x9e, 0x04, 0xae, 0x36, 0x06)) }
// method not needed: get_AccessMode
// method not needed: put_AccessMode
} // IAnimationPropertyInfo


// type: Microsoft.UI.Composition.ICompositionAnimationBase
// interface type
open class ICompositionAnimationBase
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xa77c0e5a, Data2: 0xf059, Data3 : 0x4e85, Data4 : (0xbc, 0xef, 0xc0, 0x68, 0x69, 0x4c, 0xec, 0x78)) }
} // ICompositionAnimationBase


// type: Microsoft.UI.Composition.ICompositionBrush
// interface type
open class ICompositionBrush
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x483924e7, Data2: 0x99a5, Data3 : 0x5377, Data4 : (0x96, 0x8b, 0xde, 0xc6, 0xd4, 0x0b, 0xbc, 0xcd)) }
} // ICompositionBrush


// type: Microsoft.UI.Composition.ICompositionObject
// interface type
open class ICompositionObject
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x0e583d49, Data2: 0xfb5e, Data3 : 0x5481, Data4 : (0xa4, 0x26, 0xd3, 0xc4, 0x1e, 0x05, 0x9a, 0x5a)) }
// method not needed: get_Compositor
// method not needed: get_Properties
// method not needed: StartAnimation
// method not needed: StopAnimation
} // ICompositionObject


// type: Microsoft.UI.Composition.ICompositor
// interface type
open class ICompositor
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x95213c13, Data2: 0xc4cb, Data3 : 0x57de, Data4 : (0xb2, 0x67, 0xd2, 0x1a, 0xb9, 0x01, 0xae, 0x38)) }
// method not needed: CreateColorKeyFrameAnimation
// method not needed: CreateColorBrush
// method not needed: CreateColorBrushWithColor
// method not needed: CreateContainerVisual
// method not needed: CreateCubicBezierEasingFunction
// method not needed: CreateEffectFactory
// method not needed: CreateEffectFactoryWithProperties
// method not needed: CreateExpressionAnimation
// method not needed: CreateExpressionAnimationWithExpression
// method not needed: CreateInsetClip
// method not needed: CreateInsetClipWithInsets
// method not needed: CreateLinearEasingFunction
// method not needed: CreatePropertySet
// method not needed: CreateQuaternionKeyFrameAnimation
// method not needed: CreateScalarKeyFrameAnimation
// method not needed: CreateScopedBatch
// method not needed: CreateSpriteVisual
// method not needed: CreateSurfaceBrush
// method not needed: CreateSurfaceBrushWithSurface
// method not needed: CreateVector2KeyFrameAnimation
// method not needed: CreateVector3KeyFrameAnimation
// method not needed: CreateVector4KeyFrameAnimation
// method not needed: GetCommitBatch
} // ICompositor


// type: Microsoft.UI.Composition.IVisual
// interface type
open class IVisual
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xc0eeab6c, Data2: 0xc897, Data3 : 0x5ac6, Data4 : (0xa1, 0xc9, 0x63, 0xab, 0xd5, 0x05, 0x5b, 0x9b)) }
// method not needed: get_AnchorPoint
// method not needed: put_AnchorPoint
// method not needed: get_BackfaceVisibility
// method not needed: put_BackfaceVisibility
// method not needed: get_BorderMode
// method not needed: put_BorderMode
// method not needed: get_CenterPoint
// method not needed: put_CenterPoint
// method not needed: get_Clip
// method not needed: put_Clip
// method not needed: get_CompositeMode
// method not needed: put_CompositeMode
// method not needed: get_IsVisible
// method not needed: put_IsVisible
// method not needed: get_Offset
// method not needed: put_Offset
// method not needed: get_Opacity
// method not needed: put_Opacity
// method not needed: get_Orientation
// method not needed: put_Orientation
// method not needed: get_Parent
// method not needed: get_RotationAngle
// method not needed: put_RotationAngle
// method not needed: get_RotationAngleInDegrees
// method not needed: put_RotationAngleInDegrees
// method not needed: get_RotationAxis
// method not needed: put_RotationAxis
// method not needed: get_Scale
// method not needed: put_Scale
// method not needed: get_Size
// method not needed: put_Size
// method not needed: get_TransformMatrix
// method not needed: put_TransformMatrix
} // IVisual


// type: Microsoft.UI.Composition.IVisualElement2
// interface type
open class IVisualElement2
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xbc950c8d, Data2: 0x1db0, Data3 : 0x53aa, Data4 : (0x9d, 0xee, 0x34, 0x27, 0x1c, 0xd1, 0x8c, 0xe6)) }
    // Microsoft.UI.Composition.Visual GetVisualInternal()
    public func _n_GetVisualInternal(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CComposition_CIVisual>>>?) throws {
        return try perform(as: _q_CMicrosoft_CUI_CComposition_CIVisualElement2.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.GetVisualInternal(pThis, __presult))
        }
    }
    public func GetVisualInternal() throws -> Optional<WinRT.Microsoft.UI.Composition.IVisual> {
        var __result : Optional<UnsafeMutablePointer<_q_CMicrosoft_CUI_CComposition_CIVisual>> = nil;
        try self._n_GetVisualInternal(&__result);
        return WinRT.Microsoft.UI.Composition.IVisual(consuming: __result);
    }
} // IVisualElement2


// type: Microsoft.UI.Composition.Visual
// runtime class
open class Visual
    :
    Microsoft.UI.Composition.CompositionObject
{
    private var _self : WinRT.Microsoft.UI.Composition.IVisual;
    internal init(plok: WinRT.Microsoft.UI.Composition.IVisual?) throws {
        _self = plok!
        try super.init(plok: _self.QueryInterface())
    }
    internal func Interface() -> WinRT.Microsoft.UI.Composition.IVisual { return _self; }
    // COMPOSABLE: Microsoft.UI.Composition.IVisualFactory
// composable interface not needed: Microsoft.UI.Composition.IVisualFactory
    // method not needed: get_AnchorPoint
    // method not needed: put_AnchorPoint
    // method not needed: get_BackfaceVisibility
    // method not needed: put_BackfaceVisibility
    // method not needed: get_BorderMode
    // method not needed: put_BorderMode
    // method not needed: get_CenterPoint
    // method not needed: put_CenterPoint
    // method not needed: get_Clip
    // method not needed: put_Clip
    // method not needed: get_CompositeMode
    // method not needed: put_CompositeMode
    // method not needed: get_IsVisible
    // method not needed: put_IsVisible
    // method not needed: get_Offset
    // method not needed: put_Offset
    // method not needed: get_Opacity
    // method not needed: put_Opacity
    // method not needed: get_Orientation
    // method not needed: put_Orientation
    // method not needed: get_Parent
    // method not needed: get_RotationAngle
    // method not needed: put_RotationAngle
    // method not needed: get_RotationAngleInDegrees
    // method not needed: put_RotationAngleInDegrees
    // method not needed: get_RotationAxis
    // method not needed: put_RotationAxis
    // method not needed: get_Scale
    // method not needed: put_Scale
    // method not needed: get_Size
    // method not needed: put_Size
    // method not needed: get_TransformMatrix
    // method not needed: put_TransformMatrix
    // instance interface not needed: Microsoft.UI.Composition.IVisual2
    // instance interface not needed: Microsoft.UI.Composition.IVisual3
    // instance interface not needed: Microsoft.UI.Composition.IVisual4
}

}
