// Copyright © 2021 Saleem Abdulrasool <compnerd@compnerd.org>
// SPDX-License-Identifier: BSD-3

import WinRT

typealias PowerManager = Microsoft.Windows.System.Power.PowerManager

@main
class Power {
    public static func main() throws {
        try RoInitialize()
        try WindowsAppSdkBootstrapInitialize()

        print("PowerSupplyStatus: ", try PowerManager.PowerSupplyStatus);
        print("BatteryStatus: ", try PowerManager.BatteryStatus);
        print("EnergySaverStatus: ", try PowerManager.EnergySaverStatus);
        print("RemainingChargePercent: ", try PowerManager.RemainingChargePercent);
        print("RemainingDischargeTime: ", try PowerManager.RemainingDischargeTime);
    }
}

