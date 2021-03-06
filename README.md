# liferay-sdk-ios-swift
Liferay SDK iOS Swift example

This project show briefly how to use the liferay SDK with Swift and CocoaPods.
After cloning it locally, you should run "pod install" and open the workspace in xCode.
Finally, the environment information of your liferay installation must be adjusted.
If everything runs, the app prints all users to the console

## How to reproduce
1. Install Cocoapods for a proper dependency management
2. Create a xCode Project
3. Close xCode
4. Create a Podfile with a reference to the liferay sdk
5. Invoke "pod install" on the shell
6. Open the created xCode workspace
7. Create a ObjectiveC Bridging Header and import the required LR Classes
8. Reference your Bridging Header in your Project "Build Settings" (Make sure "All" is selected - search for "Bridgin"
9. Code and Run

If xCode wont find your bridging header files; make sure the "Header Search Paths" of your target include the following:
- "${PODS_ROOT}/Headers/Public"
- "${PODS_ROOT}/Headers/Public/Liferay-iOS-SDK"
- "${PODS_ROOT}/Headers/Public/AFNetworking"
