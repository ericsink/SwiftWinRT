// Copyright © 2021 Saleem Abdulrasool <compnerd@compnerd.org>
// SPDX-License-Identifier: BSD-3

import CWinRT

public func WindowsAppSdkBootstrapInitialize() throws {
    // TODO this currently hard-codes the arguments, 
    // specifying Windows App SDK 1.1, no version tag, no minVersion
    // which is kinda wrong.
    try CHECKED(MddBootstrapInitialize(0x00010001, nil, 0));
}

public func RoInitialize(_ type: RO_INIT_TYPE = RO_INIT_MULTITHREADED) throws {
  try CHECKED(RoInitialize(type))
}

public func RoGetActivationFactory<Factory: IInspectable>(_ activatableClassId: HString) throws -> Factory {
  var iid: IID = Factory.IID
  var factory: UnsafeMutableRawPointer?
  try CHECKED(RoGetActivationFactory(activatableClassId.hRef.hString, &iid, &factory))
  return Factory(consuming: factory?.bindMemory(to: WinSDK.IUnknown.self, capacity: 1))
}

public func RoActivateInstance<Instance: IInspectable>(_ activatableClassId: HString) throws -> Instance {
  var instance: UnsafeMutablePointer<CWinRT.IInspectable>?
  try CHECKED(RoActivateInstance(activatableClassId.hRef.hString, &instance))
  return Instance(consuming: UnsafeMutableRawPointer(instance)?.bindMemory(to: WinSDK.IUnknown.self, capacity: 1))
}

// ----------------------------------------------------------------
// TODO stuff below is a temporary experimental hack
// to get win2d working

public func LoadGetActivationFactory(dll: String) throws -> PFNGETACTIVATIONFACTORY {
    let hMod = dll.withCString(encodedAs: UTF16.self) {
        return LoadLibraryW($0)
    }
    if hMod == nil {
        let dw = GetLastError()
        let hr = HRESULT_FROM_WIN32(dw)
        throw Error(hr: hr)
    }
    let proc = "DllGetActivationFactory".withCString(encodedAs: UTF8.self) {
        return GetProcAddress(hMod, $0)
    }
    if proc == nil {
        let dw = GetLastError()
        let hr = HRESULT_FROM_WIN32(dw)
        throw Error(hr: hr)
    }
    return unsafeBitCast(proc, to: PFNGETACTIVATIONFACTORY.self);
}

public func RoGetActivationFactory<Factory: IInspectable>(_ activatableClassId: String) throws -> Factory {
    // TODO if this function is going to do extra things,
    // it should have a different name
    if activatableClassId.starts(with: "Microsoft.Graphics.Canvas.") {
        let hstr = try HString(activatableClassId).hRef.hString!
        var p_factory : Optional<UnsafeMutablePointer<IActivationFactory>> = nil
        try CHECKED(gaf_canvas!(hstr, &p_factory))
        // TODO p_factory is now an IActivationFactory.  we need to query for the interface we actually want
        let factory = UnsafeMutableRawPointer(p_factory)
        let q = WinRT.IUnknown(consuming: factory?.bindMemory(to: WinSDK.IUnknown.self, capacity: 1))
        let f: Factory = try q.QueryInterface()
        return f
    } else {
        return try RoGetActivationFactory(HString(activatableClassId))
    }
}

public func RoActivateInstance<Instance: IInspectable>(_ activatableClassId: String) throws -> Instance {
    // TODO if this function is going to do extra things,
    // it should have a different name
    if activatableClassId.starts(with: "Microsoft.Graphics.Canvas.") {
        let hstr = try HString(activatableClassId).hRef.hString!
        var p_factory : Optional<UnsafeMutablePointer<IActivationFactory>> = nil
        try CHECKED(gaf_canvas!(hstr, &p_factory))
        var instance: UnsafeMutablePointer<CWinRT.IInspectable>?
        try CHECKED(p_factory!.pointee.lpVtbl.pointee.ActivateInstance(p_factory, &instance))
        return Instance(consuming: UnsafeMutableRawPointer(instance)?.bindMemory(to: WinSDK.IUnknown.self, capacity: 1))
    } else {
        return try RoActivateInstance(HString(activatableClassId))
    }
}

// TODO what *should* happen is the app should call here
// to register a namespace prefix plus a dll

fileprivate var gaf_canvas : Optional<PFNGETACTIVATIONFACTORY> = nil

public func prepare_win2d() throws {
    gaf_canvas = try LoadGetActivationFactory(dll: "Microsoft.Graphics.Canvas.dll")
}

