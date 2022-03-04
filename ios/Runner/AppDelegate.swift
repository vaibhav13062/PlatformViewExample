import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
      weak var registrar = self.registrar(forPlugin: "Runner")

              let factory = FLNativeViewFactory(messenger: registrar!.messenger())
      
              self.registrar(forPlugin: "FLPlugin")!.register(
                  factory,
                  withId: "FLNativeView")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
