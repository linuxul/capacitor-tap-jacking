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
    // Overlays are an Android concern: on iOS both methods only resolve, synchronously.
    public let pluginMethods: [CAPPluginMethod] = [
        .promise("preventOverlays", CapacitorTapJackingPlugin.preventOverlays),
        .promise("enableOverlays", CapacitorTapJackingPlugin.enableOverlays)
    ]

    func preventOverlays(_ call: CAPPluginCall) {
        call.resolve()
    }

    func enableOverlays(_ call: CAPPluginCall) {
        call.resolve()
    }
}
