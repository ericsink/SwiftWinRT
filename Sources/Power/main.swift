// Copyright © 2021 Saleem Abdulrasool <compnerd@compnerd.org>
// SPDX-License-Identifier: BSD-3

import WinRT

@main
class Power {
  public static func main() throws {
    try RoInitialize()

    // TODO these should be props

    print("PowerSupplyStatus: ", try Windows.System.Power.PowerManager.PowerSupplyStatus);
    print("BatteryStatus: ", try Windows.System.Power.PowerManager.get_BatteryStatus());
    print("EnergySaverStatus: ", try Windows.System.Power.PowerManager.get_EnergySaverStatus());
    print("RemainingChargePercent: ", try Windows.System.Power.PowerManager.get_RemainingChargePercent());
    print("RemainingDischargeTime: ", try Windows.System.Power.PowerManager.get_RemainingDischargeTime());
  }
}

