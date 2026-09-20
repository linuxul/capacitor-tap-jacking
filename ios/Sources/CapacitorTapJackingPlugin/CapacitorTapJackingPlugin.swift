import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(CapacitorTapJackingPlugin)
public class CapacitorTapJackingPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "CapacitorTapJackingPlugin"
    public let jsName = "TapJacking"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "preventOverlays", returnType: .promise),
        CAPPluginMethod(name: "enableOverlays", returnType: .promise)
    ]

    @objc func preventOverlays(_ call: CAPPluginCall) {
        call.resolve()
    }

    @objc func enableOverlays(_ call: CAPPluginCall) {
        call.resolve()
    }
}
