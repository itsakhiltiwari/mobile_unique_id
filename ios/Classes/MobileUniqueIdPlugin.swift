import Flutter
import UIKit

public class MobileUniqueIdPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "mobile_unique_id", binaryMessenger: registrar.messenger())
    let instance = MobileUniqueIdPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getUniqueId":
      let device = UIDevice.current;
      result(device.identifierForVendor?.uuidString);
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
