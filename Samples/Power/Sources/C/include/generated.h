// this file is automatically generated.
// if you modify it by hand, your changes will probably be lost.

// forward decls for delegates
typedef struct _q_CWindows_CFoundation_CIAsyncActionCompletedHandler _q_CWindows_CFoundation_CIAsyncActionCompletedHandler;
// enums
typedef enum _q_CMicrosoft_CWindows_CSystem_CPower_CBatteryStatus
{
    _q_CMicrosoft_CWindows_CSystem_CPower_CBatteryStatus_NotPresent = 0,
    _q_CMicrosoft_CWindows_CSystem_CPower_CBatteryStatus_Discharging = 1,
    _q_CMicrosoft_CWindows_CSystem_CPower_CBatteryStatus_Idle = 2,
    _q_CMicrosoft_CWindows_CSystem_CPower_CBatteryStatus_Charging = 3,
} _q_CMicrosoft_CWindows_CSystem_CPower_CBatteryStatus;
typedef enum _q_CMicrosoft_CWindows_CSystem_CPower_CDisplayStatus
{
    _q_CMicrosoft_CWindows_CSystem_CPower_CDisplayStatus_Off = 0,
    _q_CMicrosoft_CWindows_CSystem_CPower_CDisplayStatus_On = 1,
    _q_CMicrosoft_CWindows_CSystem_CPower_CDisplayStatus_Dimmed = 2,
} _q_CMicrosoft_CWindows_CSystem_CPower_CDisplayStatus;
typedef enum _q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode
{
    _q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode_BatterySaver = 0,
    _q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode_BetterBattery = 1,
    _q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode_Balanced = 2,
    _q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode_HighPerformance = 3,
    _q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode_MaxPerformance = 4,
    _q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode_GameMode = 5,
    _q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode_MixedReality = 6,
} _q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode;
typedef enum _q_CMicrosoft_CWindows_CSystem_CPower_CEnergySaverStatus
{
    _q_CMicrosoft_CWindows_CSystem_CPower_CEnergySaverStatus_Uninitialized = 0,
    _q_CMicrosoft_CWindows_CSystem_CPower_CEnergySaverStatus_Disabled = 1,
    _q_CMicrosoft_CWindows_CSystem_CPower_CEnergySaverStatus_Off = 2,
    _q_CMicrosoft_CWindows_CSystem_CPower_CEnergySaverStatus_On = 3,
} _q_CMicrosoft_CWindows_CSystem_CPower_CEnergySaverStatus;
typedef enum _q_CMicrosoft_CWindows_CSystem_CPower_CPowerSourceKind
{
    _q_CMicrosoft_CWindows_CSystem_CPower_CPowerSourceKind_AC = 0,
    _q_CMicrosoft_CWindows_CSystem_CPower_CPowerSourceKind_DC = 1,
} _q_CMicrosoft_CWindows_CSystem_CPower_CPowerSourceKind;
typedef enum _q_CMicrosoft_CWindows_CSystem_CPower_CPowerSupplyStatus
{
    _q_CMicrosoft_CWindows_CSystem_CPower_CPowerSupplyStatus_NotPresent = 0,
    _q_CMicrosoft_CWindows_CSystem_CPower_CPowerSupplyStatus_Inadequate = 1,
    _q_CMicrosoft_CWindows_CSystem_CPower_CPowerSupplyStatus_Adequate = 2,
} _q_CMicrosoft_CWindows_CSystem_CPower_CPowerSupplyStatus;
typedef enum _q_CMicrosoft_CWindows_CSystem_CPower_CSystemSuspendStatus
{
    _q_CMicrosoft_CWindows_CSystem_CPower_CSystemSuspendStatus_Uninitialized = 0,
    _q_CMicrosoft_CWindows_CSystem_CPower_CSystemSuspendStatus_Entering = 1,
    _q_CMicrosoft_CWindows_CSystem_CPower_CSystemSuspendStatus_AutoResume = 2,
    _q_CMicrosoft_CWindows_CSystem_CPower_CSystemSuspendStatus_ManualResume = 3,
} _q_CMicrosoft_CWindows_CSystem_CPower_CSystemSuspendStatus;
typedef enum _q_CMicrosoft_CWindows_CSystem_CPower_CUserPresenceStatus
{
    _q_CMicrosoft_CWindows_CSystem_CPower_CUserPresenceStatus_Present = 0,
    _q_CMicrosoft_CWindows_CSystem_CPower_CUserPresenceStatus_Absent = 1,
} _q_CMicrosoft_CWindows_CSystem_CPower_CUserPresenceStatus;
typedef enum _q_CWindows_CFoundation_CAsyncStatus
{
    _q_CWindows_CFoundation_CAsyncStatus_Canceled = 2,
    _q_CWindows_CFoundation_CAsyncStatus_Completed = 1,
    _q_CWindows_CFoundation_CAsyncStatus_Error = 3,
    _q_CWindows_CFoundation_CAsyncStatus_Started = 0,
} _q_CWindows_CFoundation_CAsyncStatus;
// forward decls for value types
typedef struct _q_CWindows_CFoundation_CEventRegistrationToken _q_CWindows_CFoundation_CEventRegistrationToken;
typedef struct _q_CWindows_CFoundation_CHResult _q_CWindows_CFoundation_CHResult;
typedef struct _q_CWindows_CFoundation_CTimeSpan _q_CWindows_CFoundation_CTimeSpan;
// forward decls for interfaces
typedef struct _q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics _q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics;
typedef struct _q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics2 _q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics2;
typedef struct _q_CWindows_CFoundation_CIAsyncAction _q_CWindows_CFoundation_CIAsyncAction;
typedef struct _q_CWindows_CFoundation_CIAsyncInfo _q_CWindows_CFoundation_CIAsyncInfo;
// forward decls for parameterized interfaces
typedef struct _cg_CWindows_CFoundation_IEventHandler_1_IInspectable _cg_CWindows_CFoundation_IEventHandler_1_IInspectable;
typedef struct _cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode _cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode;
typedef struct _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode;
// definition of structs for value types
struct _q_CWindows_CFoundation_CEventRegistrationToken
{
    INT64 Value;
};
struct _q_CWindows_CFoundation_CHResult
{
    INT32 Value;
};
struct _q_CWindows_CFoundation_CTimeSpan
{
    INT64 Duration;
};
// definitions for delegates
typedef struct _q_CWindows_CFoundation_CIAsyncActionCompletedHandlerVtbl
{
    HRESULT (STDMETHODCALLTYPE* QueryInterface)(_q_CWindows_CFoundation_CIAsyncActionCompletedHandler* This, REFIID riid, void** ppvObject);
    ULONG (STDMETHODCALLTYPE* AddRef)(_q_CWindows_CFoundation_CIAsyncActionCompletedHandler* This);
    ULONG (STDMETHODCALLTYPE* Release)(_q_CWindows_CFoundation_CIAsyncActionCompletedHandler* This);
    HRESULT (STDMETHODCALLTYPE* Invoke)(_q_CWindows_CFoundation_CIAsyncActionCompletedHandler* pThis, _q_CWindows_CFoundation_CIAsyncAction* asyncInfo, _q_CWindows_CFoundation_CAsyncStatus asyncStatus);
} _q_CWindows_CFoundation_CIAsyncActionCompletedHandlerVtbl;
struct _q_CWindows_CFoundation_CIAsyncActionCompletedHandler
{
    _q_CWindows_CFoundation_CIAsyncActionCompletedHandlerVtbl* lpVtbl;
};
// definitions for interface types
typedef struct _q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStaticsVtbl
{
    HRESULT (STDMETHODCALLTYPE* QueryInterface)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* This, REFIID riid, void** ppvObject);
    ULONG (STDMETHODCALLTYPE* AddRef)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* This);
    ULONG (STDMETHODCALLTYPE* Release)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* This);
    HRESULT (STDMETHODCALLTYPE* GetIids)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* This, ULONG* iidCount, IID** iids);
    HRESULT (STDMETHODCALLTYPE* GetRuntimeClassName)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* This, HSTRING* className);
    HRESULT (STDMETHODCALLTYPE* GetTrustLevel)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* This, TrustLevel* trustLevel);
    HRESULT (STDMETHODCALLTYPE* get_EnergySaverStatus)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _q_CMicrosoft_CWindows_CSystem_CPower_CEnergySaverStatus* __pret);
    HRESULT (STDMETHODCALLTYPE* add_EnergySaverStatusChanged)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _cg_CWindows_CFoundation_IEventHandler_1_IInspectable* handler, _q_CWindows_CFoundation_CEventRegistrationToken* __pret);
    HRESULT (STDMETHODCALLTYPE* remove_EnergySaverStatusChanged)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _q_CWindows_CFoundation_CEventRegistrationToken token);
    HRESULT (STDMETHODCALLTYPE* get_BatteryStatus)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _q_CMicrosoft_CWindows_CSystem_CPower_CBatteryStatus* __pret);
    HRESULT (STDMETHODCALLTYPE* add_BatteryStatusChanged)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _cg_CWindows_CFoundation_IEventHandler_1_IInspectable* handler, _q_CWindows_CFoundation_CEventRegistrationToken* __pret);
    HRESULT (STDMETHODCALLTYPE* remove_BatteryStatusChanged)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _q_CWindows_CFoundation_CEventRegistrationToken token);
    HRESULT (STDMETHODCALLTYPE* get_PowerSupplyStatus)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _q_CMicrosoft_CWindows_CSystem_CPower_CPowerSupplyStatus* __pret);
    HRESULT (STDMETHODCALLTYPE* add_PowerSupplyStatusChanged)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _cg_CWindows_CFoundation_IEventHandler_1_IInspectable* handler, _q_CWindows_CFoundation_CEventRegistrationToken* __pret);
    HRESULT (STDMETHODCALLTYPE* remove_PowerSupplyStatusChanged)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _q_CWindows_CFoundation_CEventRegistrationToken token);
    HRESULT (STDMETHODCALLTYPE* get_RemainingChargePercent)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, INT32* __pret);
    HRESULT (STDMETHODCALLTYPE* add_RemainingChargePercentChanged)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _cg_CWindows_CFoundation_IEventHandler_1_IInspectable* handler, _q_CWindows_CFoundation_CEventRegistrationToken* __pret);
    HRESULT (STDMETHODCALLTYPE* remove_RemainingChargePercentChanged)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _q_CWindows_CFoundation_CEventRegistrationToken token);
    HRESULT (STDMETHODCALLTYPE* get_RemainingDischargeTime)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _q_CWindows_CFoundation_CTimeSpan* __pret);
    HRESULT (STDMETHODCALLTYPE* add_RemainingDischargeTimeChanged)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _cg_CWindows_CFoundation_IEventHandler_1_IInspectable* handler, _q_CWindows_CFoundation_CEventRegistrationToken* __pret);
    HRESULT (STDMETHODCALLTYPE* remove_RemainingDischargeTimeChanged)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _q_CWindows_CFoundation_CEventRegistrationToken token);
    HRESULT (STDMETHODCALLTYPE* get_PowerSourceKind)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _q_CMicrosoft_CWindows_CSystem_CPower_CPowerSourceKind* __pret);
    HRESULT (STDMETHODCALLTYPE* add_PowerSourceKindChanged)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _cg_CWindows_CFoundation_IEventHandler_1_IInspectable* handler, _q_CWindows_CFoundation_CEventRegistrationToken* __pret);
    HRESULT (STDMETHODCALLTYPE* remove_PowerSourceKindChanged)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _q_CWindows_CFoundation_CEventRegistrationToken token);
    HRESULT (STDMETHODCALLTYPE* get_DisplayStatus)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _q_CMicrosoft_CWindows_CSystem_CPower_CDisplayStatus* __pret);
    HRESULT (STDMETHODCALLTYPE* add_DisplayStatusChanged)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _cg_CWindows_CFoundation_IEventHandler_1_IInspectable* handler, _q_CWindows_CFoundation_CEventRegistrationToken* __pret);
    HRESULT (STDMETHODCALLTYPE* remove_DisplayStatusChanged)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _q_CWindows_CFoundation_CEventRegistrationToken token);
    HRESULT (STDMETHODCALLTYPE* add_SystemIdleStatusChanged)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _cg_CWindows_CFoundation_IEventHandler_1_IInspectable* handler, _q_CWindows_CFoundation_CEventRegistrationToken* __pret);
    HRESULT (STDMETHODCALLTYPE* remove_SystemIdleStatusChanged)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _q_CWindows_CFoundation_CEventRegistrationToken token);
    HRESULT (STDMETHODCALLTYPE* get_EffectivePowerMode)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode** __pret);
    HRESULT (STDMETHODCALLTYPE* add_EffectivePowerModeChanged)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _cg_CWindows_CFoundation_IEventHandler_1_IInspectable* handler, _q_CWindows_CFoundation_CEventRegistrationToken* __pret);
    HRESULT (STDMETHODCALLTYPE* remove_EffectivePowerModeChanged)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _q_CWindows_CFoundation_CEventRegistrationToken token);
    HRESULT (STDMETHODCALLTYPE* get_UserPresenceStatus)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _q_CMicrosoft_CWindows_CSystem_CPower_CUserPresenceStatus* __pret);
    HRESULT (STDMETHODCALLTYPE* add_UserPresenceStatusChanged)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _cg_CWindows_CFoundation_IEventHandler_1_IInspectable* handler, _q_CWindows_CFoundation_CEventRegistrationToken* __pret);
    HRESULT (STDMETHODCALLTYPE* remove_UserPresenceStatusChanged)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _q_CWindows_CFoundation_CEventRegistrationToken token);
    HRESULT (STDMETHODCALLTYPE* get_SystemSuspendStatus)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _q_CMicrosoft_CWindows_CSystem_CPower_CSystemSuspendStatus* __pret);
    HRESULT (STDMETHODCALLTYPE* add_SystemSuspendStatusChanged)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _cg_CWindows_CFoundation_IEventHandler_1_IInspectable* handler, _q_CWindows_CFoundation_CEventRegistrationToken* __pret);
    HRESULT (STDMETHODCALLTYPE* remove_SystemSuspendStatusChanged)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics* pThis, _q_CWindows_CFoundation_CEventRegistrationToken token);
} _q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStaticsVtbl;
struct _q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics
{
    _q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStaticsVtbl* lpVtbl;
};
typedef struct _q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics2Vtbl
{
    HRESULT (STDMETHODCALLTYPE* QueryInterface)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics2* This, REFIID riid, void** ppvObject);
    ULONG (STDMETHODCALLTYPE* AddRef)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics2* This);
    ULONG (STDMETHODCALLTYPE* Release)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics2* This);
    HRESULT (STDMETHODCALLTYPE* GetIids)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics2* This, ULONG* iidCount, IID** iids);
    HRESULT (STDMETHODCALLTYPE* GetRuntimeClassName)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics2* This, HSTRING* className);
    HRESULT (STDMETHODCALLTYPE* GetTrustLevel)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics2* This, TrustLevel* trustLevel);
    HRESULT (STDMETHODCALLTYPE* get_EffectivePowerMode2)(_q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics2* pThis, _q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode* __pret);
} _q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics2Vtbl;
struct _q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics2
{
    _q_CMicrosoft_CWindows_CSystem_CPower_CIPowerManagerStatics2Vtbl* lpVtbl;
};
typedef struct _q_CWindows_CFoundation_CIAsyncActionVtbl
{
    HRESULT (STDMETHODCALLTYPE* QueryInterface)(_q_CWindows_CFoundation_CIAsyncAction* This, REFIID riid, void** ppvObject);
    ULONG (STDMETHODCALLTYPE* AddRef)(_q_CWindows_CFoundation_CIAsyncAction* This);
    ULONG (STDMETHODCALLTYPE* Release)(_q_CWindows_CFoundation_CIAsyncAction* This);
    HRESULT (STDMETHODCALLTYPE* GetIids)(_q_CWindows_CFoundation_CIAsyncAction* This, ULONG* iidCount, IID** iids);
    HRESULT (STDMETHODCALLTYPE* GetRuntimeClassName)(_q_CWindows_CFoundation_CIAsyncAction* This, HSTRING* className);
    HRESULT (STDMETHODCALLTYPE* GetTrustLevel)(_q_CWindows_CFoundation_CIAsyncAction* This, TrustLevel* trustLevel);
    HRESULT (STDMETHODCALLTYPE* put_Completed)(_q_CWindows_CFoundation_CIAsyncAction* pThis, _q_CWindows_CFoundation_CIAsyncActionCompletedHandler* handler);
    HRESULT (STDMETHODCALLTYPE* get_Completed)(_q_CWindows_CFoundation_CIAsyncAction* pThis, _q_CWindows_CFoundation_CIAsyncActionCompletedHandler** __pret);
    HRESULT (STDMETHODCALLTYPE* GetResults)(_q_CWindows_CFoundation_CIAsyncAction* pThis);
} _q_CWindows_CFoundation_CIAsyncActionVtbl;
struct _q_CWindows_CFoundation_CIAsyncAction
{
    _q_CWindows_CFoundation_CIAsyncActionVtbl* lpVtbl;
};
typedef struct _q_CWindows_CFoundation_CIAsyncInfoVtbl
{
    HRESULT (STDMETHODCALLTYPE* QueryInterface)(_q_CWindows_CFoundation_CIAsyncInfo* This, REFIID riid, void** ppvObject);
    ULONG (STDMETHODCALLTYPE* AddRef)(_q_CWindows_CFoundation_CIAsyncInfo* This);
    ULONG (STDMETHODCALLTYPE* Release)(_q_CWindows_CFoundation_CIAsyncInfo* This);
    HRESULT (STDMETHODCALLTYPE* GetIids)(_q_CWindows_CFoundation_CIAsyncInfo* This, ULONG* iidCount, IID** iids);
    HRESULT (STDMETHODCALLTYPE* GetRuntimeClassName)(_q_CWindows_CFoundation_CIAsyncInfo* This, HSTRING* className);
    HRESULT (STDMETHODCALLTYPE* GetTrustLevel)(_q_CWindows_CFoundation_CIAsyncInfo* This, TrustLevel* trustLevel);
    HRESULT (STDMETHODCALLTYPE* get_Id)(_q_CWindows_CFoundation_CIAsyncInfo* pThis, UINT32* __pret);
    HRESULT (STDMETHODCALLTYPE* get_Status)(_q_CWindows_CFoundation_CIAsyncInfo* pThis, _q_CWindows_CFoundation_CAsyncStatus* __pret);
    HRESULT (STDMETHODCALLTYPE* get_ErrorCode)(_q_CWindows_CFoundation_CIAsyncInfo* pThis, _q_CWindows_CFoundation_CHResult* __pret);
    HRESULT (STDMETHODCALLTYPE* Cancel)(_q_CWindows_CFoundation_CIAsyncInfo* pThis);
    HRESULT (STDMETHODCALLTYPE* Close)(_q_CWindows_CFoundation_CIAsyncInfo* pThis);
} _q_CWindows_CFoundation_CIAsyncInfoVtbl;
struct _q_CWindows_CFoundation_CIAsyncInfo
{
    _q_CWindows_CFoundation_CIAsyncInfoVtbl* lpVtbl;
};
// definitions for parameterized interfaces
typedef struct _cg_CWindows_CFoundation_IEventHandler_1_IInspectableVtbl
{
    HRESULT (STDMETHODCALLTYPE* QueryInterface)(_cg_CWindows_CFoundation_IEventHandler_1_IInspectable* This, REFIID riid, void** ppvObject);
    ULONG (STDMETHODCALLTYPE* AddRef)(_cg_CWindows_CFoundation_IEventHandler_1_IInspectable* This);
    ULONG (STDMETHODCALLTYPE* Release)(_cg_CWindows_CFoundation_IEventHandler_1_IInspectable* This);
    HRESULT (STDMETHODCALLTYPE* Invoke)(_cg_CWindows_CFoundation_IEventHandler_1_IInspectable* pThis, IInspectable* sender, IInspectable* args);
} _cg_CWindows_CFoundation_IEventHandler_1_IInspectableVtbl;
struct _cg_CWindows_CFoundation_IEventHandler_1_IInspectable
{
    _cg_CWindows_CFoundation_IEventHandler_1_IInspectableVtbl* lpVtbl;
};
typedef struct _cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerModeVtbl
{
    HRESULT (STDMETHODCALLTYPE* QueryInterface)(_cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode* This, REFIID riid, void** ppvObject);
    ULONG (STDMETHODCALLTYPE* AddRef)(_cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode* This);
    ULONG (STDMETHODCALLTYPE* Release)(_cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode* This);
    HRESULT (STDMETHODCALLTYPE* GetIids)(_cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode* This, ULONG* iidCount, IID** iids);
    HRESULT (STDMETHODCALLTYPE* GetRuntimeClassName)(_cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode* This, HSTRING* className);
    HRESULT (STDMETHODCALLTYPE* GetTrustLevel)(_cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode* This, TrustLevel* trustLevel);
    HRESULT (STDMETHODCALLTYPE* put_Completed)(_cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode* pThis, _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode* handler);
    HRESULT (STDMETHODCALLTYPE* get_Completed)(_cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode* pThis, _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode** __pret);
    HRESULT (STDMETHODCALLTYPE* GetResults)(_cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode* pThis, _q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode* __pret);
} _cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerModeVtbl;
struct _cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode
{
    _cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerModeVtbl* lpVtbl;
};
typedef struct _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerModeVtbl
{
    HRESULT (STDMETHODCALLTYPE* QueryInterface)(_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode* This, REFIID riid, void** ppvObject);
    ULONG (STDMETHODCALLTYPE* AddRef)(_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode* This);
    ULONG (STDMETHODCALLTYPE* Release)(_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode* This);
    HRESULT (STDMETHODCALLTYPE* Invoke)(_cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode* pThis, _cg_CWindows_CFoundation_IAsyncOperation_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode* asyncInfo, _q_CWindows_CFoundation_CAsyncStatus asyncStatus);
} _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerModeVtbl;
struct _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerMode
{
    _cg_CWindows_CFoundation_IAsyncOperationCompletedHandler_1__q_CMicrosoft_CWindows_CSystem_CPower_CEffectivePowerModeVtbl* lpVtbl;
};
