// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;

extension Windows.Data.Xml.Dom {
// type: Windows.Data.Xml.Dom.IXmlDocument
// interface type
open class IXmlDocument
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xf7f3a506, Data2: 0x1e87, Data3 : 0x42d6, Data4 : (0xbc, 0xfb, 0xb8, 0xc8, 0x09, 0xfa, 0x54, 0x94)) }
// method not needed: get_Doctype
// method not needed: get_Implementation
// method not needed: get_DocumentElement
// method not needed: CreateElement
// method not needed: CreateDocumentFragment
// method not needed: CreateTextNode
// method not needed: CreateComment
// method not needed: CreateProcessingInstruction
// method not needed: CreateAttribute
// method not needed: CreateEntityReference
// method not needed: GetElementsByTagName
// method not needed: CreateCDataSection
// method not needed: get_DocumentUri
// method not needed: CreateAttributeNS
// method not needed: CreateElementNS
// method not needed: GetElementById
// method not needed: ImportNode
} // IXmlDocument


// type: Windows.Data.Xml.Dom.IXmlDocumentIO
// interface type
open class IXmlDocumentIO
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x6cd0e74e, Data2: 0xee65, Data3 : 0x4489, Data4 : (0x9e, 0xbf, 0xca, 0x43, 0xe8, 0x7b, 0xa6, 0x37)) }
    // void LoadXml(System.String)
    public func _n_LoadXml(_ xml : Optional<HSTRING>) throws {
        return try perform(as: _q_CWindows_CData_CXml_CDom_CIXmlDocumentIO.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.LoadXml(pThis, xml))
        }
    }
    public func LoadXml(xml : Swift.String) throws -> Void {
        let __hstr_xml = try HString(xml);
        return try withExtendedLifetime(__hstr_xml) {
        try self._n_LoadXml(__hstr_xml.hRef.hString);
        }
    }
// method not needed: LoadXmlWithSettings
// method not needed: SaveToFileAsync
} // IXmlDocumentIO


// type: Windows.Data.Xml.Dom.XmlDocument
// runtime class
public class XmlDocument
{
    private var _self : WinRT.Windows.Data.Xml.Dom.IXmlDocument;
    public init(plok: WinRT.Windows.Data.Xml.Dom.IXmlDocument?) {
        _self = plok!
    }
    internal func QueryInterface<Interface: IUnknown>() throws -> Interface {
        return try _self.QueryInterface()
    }
    public init() throws {
        let _classId = try HString("Windows.Data.Xml.Dom.XmlDocument")
        _self = try RoActivateInstance(_classId)
    }
    // static interface not needed: Windows.Data.Xml.Dom.IXmlDocumentStatics
    // method not needed: get_Doctype
    // method not needed: get_Implementation
    // method not needed: get_DocumentElement
    // method not needed: CreateElement
    // method not needed: CreateDocumentFragment
    // method not needed: CreateTextNode
    // method not needed: CreateComment
    // method not needed: CreateProcessingInstruction
    // method not needed: CreateAttribute
    // method not needed: CreateEntityReference
    // method not needed: GetElementsByTagName
    // method not needed: CreateCDataSection
    // method not needed: get_DocumentUri
    // method not needed: CreateAttributeNS
    // method not needed: CreateElementNS
    // method not needed: GetElementById
    // method not needed: ImportNode
    // instance interface not needed: Windows.Data.Xml.Dom.IXmlNode
    // instance interface not needed: Windows.Data.Xml.Dom.IXmlNodeSerializer
    // instance interface not needed: Windows.Data.Xml.Dom.IXmlNodeSelector
    public func LoadXml(xml : Swift.String) throws -> Void {
        let _ifc : IXmlDocumentIO = try _self.QueryInterface();
        return try _ifc.LoadXml(xml: xml);
    }
    // method not needed: LoadXml
    // method not needed: SaveToFileAsync
    // instance interface not needed: Windows.Data.Xml.Dom.IXmlDocumentIO2
}

}
