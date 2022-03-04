//
//  FLPlugin.swift
//  Runner
//
//  Created by Vaibhav Chandolia on 04/03/22.
//

import Foundation
import Flutter
import UIKit

class FLPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let factory = FLNativeViewFactory(messenger: registrar.messenger())
        registrar.register(factory, withId: "FLNativeView")
    }
}
