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
