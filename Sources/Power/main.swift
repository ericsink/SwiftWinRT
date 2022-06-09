// Copyright © 2021 Saleem Abdulrasool <compnerd@compnerd.org>
// SPDX-License-Identifier: BSD-3

import CWinRT
import WinRT

public func BootstrapInitialize() throws {
    // TODO this should move down into the library.
    // TODO also, it currently hard-codes the arguments, 
    // specifying Windows App SDK 1.1, no version tag, no minVersion
    // which is kinda wrong.
    try CHECKED(MddBootstrapInitialize(0x00010001, nil, 0));
}

@main
class Power {
  public static func main() throws {
    try RoInitialize()
    try BootstrapInitialize()

    print("PowerSupplyStatus: ", try Microsoft.Windows.System.Power.PowerManager.PowerSupplyStatus);
    print("BatteryStatus: ", try Microsoft.Windows.System.Power.PowerManager.get_BatteryStatus());
    print("EnergySaverStatus: ", try Microsoft.Windows.System.Power.PowerManager.get_EnergySaverStatus());
    print("RemainingChargePercent: ", try Microsoft.Windows.System.Power.PowerManager.get_RemainingChargePercent());
    print("RemainingDischargeTime: ", try Microsoft.Windows.System.Power.PowerManager.get_RemainingDischargeTime());
  }
}

