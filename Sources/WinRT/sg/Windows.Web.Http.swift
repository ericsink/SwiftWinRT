// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;

extension Windows.Web.Http {
// type: Windows.Web.Http.HttpClient
// runtime class
public class HttpClient
    :
    WinRT.Object
{
    private var _self : WinRT.Windows.Web.Http.IHttpClient;
    internal init(plok: WinRT.Windows.Web.Http.IHttpClient?) throws {
        _self = plok!
        try super.init(plok: _self.QueryInterface())
    }
    internal func Interface() -> WinRT.Windows.Web.Http.IHttpClient { return _self; }
    public init() throws {
        let _classId = try HString("Windows.Web.Http.HttpClient")
        _self = try RoActivateInstance(_classId)
        try super.init(plok: _self.QueryInterface())
    }
    public init(filter : Optional<WinRT.Windows.Web.Http.Filters.IHttpFilter>) throws {
        let _af : IHttpClientFactory = try RoGetActivationFactory(HString("Windows.Web.Http.HttpClient"));
        _self = try _af.Create(filter: filter)!;
        try super.init(plok: _self.QueryInterface())
    }
    // method not needed: DeleteAsync
    public func GetAsync(uri : Optional<WinRT.Windows.Foundation.Uri>) throws -> Optional<WinRT.Windows.Foundation.IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress> {
        let _ifc : WinRT.Windows.Web.Http.IHttpClient = try _self.QueryInterface();
        return try _ifc.GetAsync(uri: uri!.Interface());
    }
    public func Get(uri : Optional<WinRT.Windows.Foundation.Uri>) async throws -> Optional<WinRT.Windows.Web.Http.IHttpResponseMessage> {
        return try await withUnsafeThrowingContinuation { continuation in
            do {
                return try continuation.resume(returning: self.GetAsync(uri: uri)!.get())
            } catch let error {
                return continuation.resume(throwing: error)
            }
        }
    }
    // method not needed: GetAsync
    // method not needed: GetBufferAsync
    // method not needed: GetInputStreamAsync
    // method not needed: GetStringAsync
    // method not needed: PostAsync
    // method not needed: PutAsync
    // method not needed: SendRequestAsync
    // method not needed: SendRequestAsync
    // method not needed: get_DefaultRequestHeaders
    // instance interface not needed: Windows.Web.Http.IHttpClient2
    // instance interface not needed: Windows.Foundation.IClosable
    // instance interface not needed: Windows.Foundation.IStringable
}

// type: Windows.Web.Http.HttpProgress
// struct type
public typealias HttpProgress = _q_CWindows_CWeb_CHttp_CHttpProgress;

// type: Windows.Web.Http.HttpProgressStage
// enum type
public typealias HttpProgressStage = _q_CWindows_CWeb_CHttp_CHttpProgressStage;

// type: Windows.Web.Http.HttpResponseMessage
// runtime class
public class HttpResponseMessage
    :
    WinRT.Object
{
    private var _self : WinRT.Windows.Web.Http.IHttpResponseMessage;
    internal init(plok: WinRT.Windows.Web.Http.IHttpResponseMessage?) throws {
        _self = plok!
        try super.init(plok: _self.QueryInterface())
    }
    internal func Interface() -> WinRT.Windows.Web.Http.IHttpResponseMessage { return _self; }
    public init() throws {
        let _classId = try HString("Windows.Web.Http.HttpResponseMessage")
        _self = try RoActivateInstance(_classId)
        try super.init(plok: _self.QueryInterface())
    }
    public init(statusCode : WinRT.Windows.Web.Http.HttpStatusCode) throws {
        let _af : IHttpResponseMessageFactory = try RoGetActivationFactory(HString("Windows.Web.Http.HttpResponseMessage"));
        _self = try _af.Create(statusCode: statusCode)!;
        try super.init(plok: _self.QueryInterface())
    }
    public func get_Content() throws -> Optional<WinRT.Windows.Web.Http.IHttpContent> {
        let _ifc : WinRT.Windows.Web.Http.IHttpResponseMessage = try _self.QueryInterface();
        return try _ifc.get_Content();
    }
    // method not needed: put_Content
    // method not needed: get_Headers
    // method not needed: get_IsSuccessStatusCode
    // method not needed: get_ReasonPhrase
    // method not needed: put_ReasonPhrase
    // method not needed: get_RequestMessage
    // method not needed: put_RequestMessage
    // method not needed: get_Source
    // method not needed: put_Source
    // method not needed: get_StatusCode
    // method not needed: put_StatusCode
    // method not needed: get_Version
    // method not needed: put_Version
    public func EnsureSuccessStatusCode() throws -> Optional<WinRT.Windows.Web.Http.HttpResponseMessage> {
        let _ifc : WinRT.Windows.Web.Http.IHttpResponseMessage = try _self.QueryInterface();
        return try WinRT.Windows.Web.Http.HttpResponseMessage(plok: _ifc.EnsureSuccessStatusCode());
    }
    public var Content : Optional<WinRT.Windows.Web.Http.IHttpContent> {
        get throws {
        let _ifc : WinRT.Windows.Web.Http.IHttpResponseMessage = try _self.QueryInterface();
            return try _ifc.Content;
        }
    }
    // instance interface not needed: Windows.Foundation.IClosable
    // instance interface not needed: Windows.Foundation.IStringable
}

// type: Windows.Web.Http.HttpStatusCode
// enum type
public typealias HttpStatusCode = _q_CWindows_CWeb_CHttp_CHttpStatusCode;

// type: Windows.Web.Http.IHttpClient
// interface type
open class IHttpClient
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x7fda1151, Data2: 0x3574, Data3 : 0x4880, Data4 : (0xa8, 0xba, 0xe6, 0xb1, 0xe0, 0x06, 0x1f, 0x3d)) }
// method not needed: DeleteAsync
    // Windows.Foundation.IAsyncOperationWithProgress<Windows.Web.Http.HttpResponseMessage,Windows.Web.Http.HttpProgress> GetAsync(Windows.Foundation.Uri)
    public func _n_GetAsync(_ uri : Optional<UnsafeMutablePointer<_q_CWindows_CFoundation_CIUriRuntimeClass>>, _ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress>>>?) throws {
        return try perform(as: _q_CWindows_CWeb_CHttp_CIHttpClient.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.GetAsync(pThis, uri, __presult))
        }
    }
    public func GetAsync(uri : Optional<WinRT.Windows.Foundation.IUriRuntimeClass>) throws -> Optional<WinRT.Windows.Foundation.IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress> {
        var __result : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress>> = nil;
        try self._n_GetAsync(RawPointer(uri), &__result);
        return WinRT.Windows.Foundation.IAsyncOperationWithProgress_2__q_CWindows_CWeb_CHttp_CHttpResponseMessage__q_CWindows_CWeb_CHttp_CHttpProgress(consuming: __result);
    }
    public func Get(uri : Optional<WinRT.Windows.Foundation.IUriRuntimeClass>) async throws -> Optional<WinRT.Windows.Web.Http.IHttpResponseMessage> {
        return try await withUnsafeThrowingContinuation { continuation in
            do {
                return try continuation.resume(returning: self.GetAsync(uri: uri)!.get())
            } catch let error {
                return continuation.resume(throwing: error)
            }
        }
    }
// method not needed: GetWithOptionAsync
// method not needed: GetBufferAsync
// method not needed: GetInputStreamAsync
// method not needed: GetStringAsync
// method not needed: PostAsync
// method not needed: PutAsync
// method not needed: SendRequestAsync
// method not needed: SendRequestWithOptionAsync
// method not needed: get_DefaultRequestHeaders
} // IHttpClient


// type: Windows.Web.Http.IHttpClientFactory
// interface type
// ACTIVATION INTERFACE
open class IHttpClientFactory
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xc30c4eca, Data2: 0xe3fa, Data3 : 0x4f99, Data4 : (0xaf, 0xb4, 0x63, 0xcc, 0x65, 0x00, 0x94, 0x62)) }
    // Windows.Web.Http.HttpClient Create(Windows.Web.Http.Filters.IHttpFilter)
    public func _n_Create(_ filter : Optional<UnsafeMutablePointer<_q_CWindows_CWeb_CHttp_CFilters_CIHttpFilter>>, _ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CWindows_CWeb_CHttp_CIHttpClient>>>?) throws {
        return try perform(as: _q_CWindows_CWeb_CHttp_CIHttpClientFactory.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Create(pThis, filter, __presult))
        }
    }
    public func Create(filter : Optional<WinRT.Windows.Web.Http.Filters.IHttpFilter>) throws -> Optional<WinRT.Windows.Web.Http.IHttpClient> {
        var __result : Optional<UnsafeMutablePointer<_q_CWindows_CWeb_CHttp_CIHttpClient>> = nil;
        try self._n_Create(RawPointer(filter), &__result);
        return WinRT.Windows.Web.Http.IHttpClient(consuming: __result);
    }
} // IHttpClientFactory


// type: Windows.Web.Http.IHttpContent
// interface type
open class IHttpContent
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x6b14a441, Data2: 0xfba7, Data3 : 0x4bd2, Data4 : (0xaf, 0x0a, 0x83, 0x9d, 0xe7, 0xc2, 0x95, 0xda)) }
// method not needed: get_Headers
// method not needed: BufferAllAsync
// method not needed: ReadAsBufferAsync
// method not needed: ReadAsInputStreamAsync
    // Windows.Foundation.IAsyncOperationWithProgress<System.String,System.UInt64> ReadAsStringAsync()
    public func _n_ReadAsStringAsync(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationWithProgress_2_HSTRING_UINT64>>>?) throws {
        return try perform(as: _q_CWindows_CWeb_CHttp_CIHttpContent.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.ReadAsStringAsync(pThis, __presult))
        }
    }
    public func ReadAsStringAsync() throws -> Optional<WinRT.Windows.Foundation.IAsyncOperationWithProgress_2_HSTRING_UINT64> {
        var __result : Optional<UnsafeMutablePointer<_cg_CWindows_CFoundation_IAsyncOperationWithProgress_2_HSTRING_UINT64>> = nil;
        try self._n_ReadAsStringAsync(&__result);
        return WinRT.Windows.Foundation.IAsyncOperationWithProgress_2_HSTRING_UINT64(consuming: __result);
    }
    public func ReadAsString() async throws -> Swift.String {
        return try await withUnsafeThrowingContinuation { continuation in
            do {
                return try continuation.resume(returning: self.ReadAsStringAsync()!.get())
            } catch let error {
                return continuation.resume(throwing: error)
            }
        }
    }
// method not needed: TryComputeLength
// method not needed: WriteToStreamAsync
} // IHttpContent


// type: Windows.Web.Http.IHttpResponseMessage
// interface type
open class IHttpResponseMessage
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xfee200fb, Data2: 0x8664, Data3 : 0x44e0, Data4 : (0x95, 0xd9, 0x42, 0x69, 0x61, 0x99, 0xbf, 0xfc)) }
    // [IsSpecialName] Windows.Web.Http.IHttpContent get_Content()
    public func _n_get_Content(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CWindows_CWeb_CHttp_CIHttpContent>>>?) throws {
        return try perform(as: _q_CWindows_CWeb_CHttp_CIHttpResponseMessage.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.get_Content(pThis, __presult))
        }
    }
    public func get_Content() throws -> Optional<WinRT.Windows.Web.Http.IHttpContent> {
        var __result : Optional<UnsafeMutablePointer<_q_CWindows_CWeb_CHttp_CIHttpContent>> = nil;
        try self._n_get_Content(&__result);
        return WinRT.Windows.Web.Http.IHttpContent(consuming: __result);
    }
// method not needed: put_Content
// method not needed: get_Headers
// method not needed: get_IsSuccessStatusCode
// method not needed: get_ReasonPhrase
// method not needed: put_ReasonPhrase
// method not needed: get_RequestMessage
// method not needed: put_RequestMessage
// method not needed: get_Source
// method not needed: put_Source
// method not needed: get_StatusCode
// method not needed: put_StatusCode
// method not needed: get_Version
// method not needed: put_Version
    // Windows.Web.Http.HttpResponseMessage EnsureSuccessStatusCode()
    public func _n_EnsureSuccessStatusCode(_ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CWindows_CWeb_CHttp_CIHttpResponseMessage>>>?) throws {
        return try perform(as: _q_CWindows_CWeb_CHttp_CIHttpResponseMessage.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.EnsureSuccessStatusCode(pThis, __presult))
        }
    }
    public func EnsureSuccessStatusCode() throws -> Optional<WinRT.Windows.Web.Http.IHttpResponseMessage> {
        var __result : Optional<UnsafeMutablePointer<_q_CWindows_CWeb_CHttp_CIHttpResponseMessage>> = nil;
        try self._n_EnsureSuccessStatusCode(&__result);
        return WinRT.Windows.Web.Http.IHttpResponseMessage(consuming: __result);
    }
    public var Content : Optional<WinRT.Windows.Web.Http.IHttpContent> {
        get throws {
            return try get_Content();
        }
    }
} // IHttpResponseMessage


// type: Windows.Web.Http.IHttpResponseMessageFactory
// interface type
// ACTIVATION INTERFACE
open class IHttpResponseMessageFactory
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0x52a8af99, Data2: 0xf095, Data3 : 0x43da, Data4 : (0xb6, 0x0f, 0x7c, 0xfc, 0x2b, 0xc7, 0xea, 0x2f)) }
    // Windows.Web.Http.HttpResponseMessage Create(Windows.Web.Http.HttpStatusCode)
    public func _n_Create(_ statusCode : _q_CWindows_CWeb_CHttp_CHttpStatusCode, _ __presult: UnsafeMutablePointer<Optional<UnsafeMutablePointer<_q_CWindows_CWeb_CHttp_CIHttpResponseMessage>>>?) throws {
        return try perform(as: _q_CWindows_CWeb_CHttp_CIHttpResponseMessageFactory.self) { pThis in
            try CHECKED(pThis.pointee.lpVtbl.pointee.Create(pThis, statusCode, __presult))
        }
    }
    public func Create(statusCode : WinRT.Windows.Web.Http.HttpStatusCode) throws -> Optional<WinRT.Windows.Web.Http.IHttpResponseMessage> {
        var __result : Optional<UnsafeMutablePointer<_q_CWindows_CWeb_CHttp_CIHttpResponseMessage>> = nil;
        try self._n_Create(statusCode, &__result);
        return WinRT.Windows.Web.Http.IHttpResponseMessage(consuming: __result);
    }
} // IHttpResponseMessageFactory


}
extension WinRT.Windows.Web.Http.HttpProgressStage {
    public static var None : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpProgressStage_None;
        }
    }
    public static var DetectingProxy : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpProgressStage_DetectingProxy;
        }
    }
    public static var ResolvingName : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpProgressStage_ResolvingName;
        }
    }
    public static var ConnectingToServer : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpProgressStage_ConnectingToServer;
        }
    }
    public static var NegotiatingSsl : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpProgressStage_NegotiatingSsl;
        }
    }
    public static var SendingHeaders : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpProgressStage_SendingHeaders;
        }
    }
    public static var SendingContent : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpProgressStage_SendingContent;
        }
    }
    public static var WaitingForResponse : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpProgressStage_WaitingForResponse;
        }
    }
    public static var ReceivingHeaders : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpProgressStage_ReceivingHeaders;
        }
    }
    public static var ReceivingContent : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpProgressStage_ReceivingContent;
        }
    }
}
extension WinRT.Windows.Web.Http.HttpStatusCode {
    public static var None : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_None;
        }
    }
    public static var Continue : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_Continue;
        }
    }
    public static var SwitchingProtocols : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_SwitchingProtocols;
        }
    }
    public static var Processing : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_Processing;
        }
    }
    public static var Ok : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_Ok;
        }
    }
    public static var Created : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_Created;
        }
    }
    public static var Accepted : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_Accepted;
        }
    }
    public static var NonAuthoritativeInformation : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_NonAuthoritativeInformation;
        }
    }
    public static var NoContent : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_NoContent;
        }
    }
    public static var ResetContent : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_ResetContent;
        }
    }
    public static var PartialContent : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_PartialContent;
        }
    }
    public static var MultiStatus : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_MultiStatus;
        }
    }
    public static var AlreadyReported : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_AlreadyReported;
        }
    }
    public static var IMUsed : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_IMUsed;
        }
    }
    public static var MultipleChoices : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_MultipleChoices;
        }
    }
    public static var MovedPermanently : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_MovedPermanently;
        }
    }
    public static var Found : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_Found;
        }
    }
    public static var SeeOther : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_SeeOther;
        }
    }
    public static var NotModified : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_NotModified;
        }
    }
    public static var UseProxy : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_UseProxy;
        }
    }
    public static var TemporaryRedirect : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_TemporaryRedirect;
        }
    }
    public static var PermanentRedirect : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_PermanentRedirect;
        }
    }
    public static var BadRequest : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_BadRequest;
        }
    }
    public static var Unauthorized : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_Unauthorized;
        }
    }
    public static var PaymentRequired : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_PaymentRequired;
        }
    }
    public static var Forbidden : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_Forbidden;
        }
    }
    public static var NotFound : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_NotFound;
        }
    }
    public static var MethodNotAllowed : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_MethodNotAllowed;
        }
    }
    public static var NotAcceptable : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_NotAcceptable;
        }
    }
    public static var ProxyAuthenticationRequired : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_ProxyAuthenticationRequired;
        }
    }
    public static var RequestTimeout : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_RequestTimeout;
        }
    }
    public static var Conflict : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_Conflict;
        }
    }
    public static var Gone : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_Gone;
        }
    }
    public static var LengthRequired : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_LengthRequired;
        }
    }
    public static var PreconditionFailed : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_PreconditionFailed;
        }
    }
    public static var RequestEntityTooLarge : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_RequestEntityTooLarge;
        }
    }
    public static var RequestUriTooLong : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_RequestUriTooLong;
        }
    }
    public static var UnsupportedMediaType : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_UnsupportedMediaType;
        }
    }
    public static var RequestedRangeNotSatisfiable : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_RequestedRangeNotSatisfiable;
        }
    }
    public static var ExpectationFailed : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_ExpectationFailed;
        }
    }
    public static var UnprocessableEntity : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_UnprocessableEntity;
        }
    }
    public static var Locked : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_Locked;
        }
    }
    public static var FailedDependency : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_FailedDependency;
        }
    }
    public static var UpgradeRequired : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_UpgradeRequired;
        }
    }
    public static var PreconditionRequired : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_PreconditionRequired;
        }
    }
    public static var TooManyRequests : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_TooManyRequests;
        }
    }
    public static var RequestHeaderFieldsTooLarge : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_RequestHeaderFieldsTooLarge;
        }
    }
    public static var InternalServerError : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_InternalServerError;
        }
    }
    public static var NotImplemented : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_NotImplemented;
        }
    }
    public static var BadGateway : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_BadGateway;
        }
    }
    public static var ServiceUnavailable : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_ServiceUnavailable;
        }
    }
    public static var GatewayTimeout : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_GatewayTimeout;
        }
    }
    public static var HttpVersionNotSupported : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_HttpVersionNotSupported;
        }
    }
    public static var VariantAlsoNegotiates : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_VariantAlsoNegotiates;
        }
    }
    public static var InsufficientStorage : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_InsufficientStorage;
        }
    }
    public static var LoopDetected : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_LoopDetected;
        }
    }
    public static var NotExtended : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_NotExtended;
        }
    }
    public static var NetworkAuthenticationRequired : Self {
        get {
            return _q_CWindows_CWeb_CHttp_CHttpStatusCode_NetworkAuthenticationRequired;
        }
    }
}
