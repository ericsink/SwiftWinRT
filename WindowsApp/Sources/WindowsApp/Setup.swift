
import CWinRT;
@_spi(IUnknown) import WinRT;
import CWindowsApp;
import WindowsSdk;
import CWindowsSdk;

public func WindowsAppSdkBootstrapInitialize() throws {
    // TODO this currently hard-codes the arguments, 
    // specifying Windows App SDK 1.1, no version tag, no minVersion
    // which is kinda wrong.
    try CHECKED(MddBootstrapInitialize2(0x00010001, nil, 0, 0x10));
}

