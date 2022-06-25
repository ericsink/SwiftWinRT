// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.


import CWinRT;
@_spi(IUnknown) import WinRT;
import CWindowsSdk;

extension Windows.Web {
// type: Windows.Web.IUriToStreamResolver
// interface type
open class IUriToStreamResolver
    :
    WinRT.IInspectable
{
    override public class var IID : CWinRT.IID { CWinRT.IID(Data1: 0xb0aba86a, Data2: 0x9aeb, Data3 : 0x4d3a, Data4 : (0x95, 0x90, 0x00, 0x3e, 0x3c, 0xa7, 0xe2, 0x90)) }
// method not needed: UriToStreamAsync
} // IUriToStreamResolver


// type: Windows.Web.WebErrorStatus
// enum type
public typealias WebErrorStatus = _q_CWindows_CWeb_CWebErrorStatus;

}
extension Windows.Web.WebErrorStatus {
    public static var Unknown : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_Unknown;
        }
    }
    public static var CertificateCommonNameIsIncorrect : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_CertificateCommonNameIsIncorrect;
        }
    }
    public static var CertificateExpired : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_CertificateExpired;
        }
    }
    public static var CertificateContainsErrors : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_CertificateContainsErrors;
        }
    }
    public static var CertificateRevoked : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_CertificateRevoked;
        }
    }
    public static var CertificateIsInvalid : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_CertificateIsInvalid;
        }
    }
    public static var ServerUnreachable : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_ServerUnreachable;
        }
    }
    public static var Timeout : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_Timeout;
        }
    }
    public static var ErrorHttpInvalidServerResponse : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_ErrorHttpInvalidServerResponse;
        }
    }
    public static var ConnectionAborted : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_ConnectionAborted;
        }
    }
    public static var ConnectionReset : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_ConnectionReset;
        }
    }
    public static var Disconnected : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_Disconnected;
        }
    }
    public static var HttpToHttpsOnRedirection : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_HttpToHttpsOnRedirection;
        }
    }
    public static var HttpsToHttpOnRedirection : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_HttpsToHttpOnRedirection;
        }
    }
    public static var CannotConnect : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_CannotConnect;
        }
    }
    public static var HostNameNotResolved : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_HostNameNotResolved;
        }
    }
    public static var OperationCanceled : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_OperationCanceled;
        }
    }
    public static var RedirectFailed : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_RedirectFailed;
        }
    }
    public static var UnexpectedStatusCode : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_UnexpectedStatusCode;
        }
    }
    public static var UnexpectedRedirection : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_UnexpectedRedirection;
        }
    }
    public static var UnexpectedClientError : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_UnexpectedClientError;
        }
    }
    public static var UnexpectedServerError : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_UnexpectedServerError;
        }
    }
    public static var InsufficientRangeSupport : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_InsufficientRangeSupport;
        }
    }
    public static var MissingContentLengthSupport : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_MissingContentLengthSupport;
        }
    }
    public static var MultipleChoices : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_MultipleChoices;
        }
    }
    public static var MovedPermanently : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_MovedPermanently;
        }
    }
    public static var Found : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_Found;
        }
    }
    public static var SeeOther : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_SeeOther;
        }
    }
    public static var NotModified : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_NotModified;
        }
    }
    public static var UseProxy : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_UseProxy;
        }
    }
    public static var TemporaryRedirect : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_TemporaryRedirect;
        }
    }
    public static var BadRequest : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_BadRequest;
        }
    }
    public static var Unauthorized : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_Unauthorized;
        }
    }
    public static var PaymentRequired : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_PaymentRequired;
        }
    }
    public static var Forbidden : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_Forbidden;
        }
    }
    public static var NotFound : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_NotFound;
        }
    }
    public static var MethodNotAllowed : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_MethodNotAllowed;
        }
    }
    public static var NotAcceptable : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_NotAcceptable;
        }
    }
    public static var ProxyAuthenticationRequired : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_ProxyAuthenticationRequired;
        }
    }
    public static var RequestTimeout : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_RequestTimeout;
        }
    }
    public static var Conflict : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_Conflict;
        }
    }
    public static var Gone : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_Gone;
        }
    }
    public static var LengthRequired : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_LengthRequired;
        }
    }
    public static var PreconditionFailed : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_PreconditionFailed;
        }
    }
    public static var RequestEntityTooLarge : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_RequestEntityTooLarge;
        }
    }
    public static var RequestUriTooLong : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_RequestUriTooLong;
        }
    }
    public static var UnsupportedMediaType : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_UnsupportedMediaType;
        }
    }
    public static var RequestedRangeNotSatisfiable : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_RequestedRangeNotSatisfiable;
        }
    }
    public static var ExpectationFailed : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_ExpectationFailed;
        }
    }
    public static var InternalServerError : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_InternalServerError;
        }
    }
    public static var NotImplemented : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_NotImplemented;
        }
    }
    public static var BadGateway : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_BadGateway;
        }
    }
    public static var ServiceUnavailable : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_ServiceUnavailable;
        }
    }
    public static var GatewayTimeout : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_GatewayTimeout;
        }
    }
    public static var HttpVersionNotSupported : Self {
        get {
            return _q_CWindows_CWeb_CWebErrorStatus_HttpVersionNotSupported;
        }
    }
}
