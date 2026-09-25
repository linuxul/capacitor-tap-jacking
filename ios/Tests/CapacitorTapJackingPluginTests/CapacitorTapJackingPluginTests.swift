import XCTest
import Capacitor
@testable import CapacitorTapJackingPlugin

class CapacitorTapJackingTests: XCTestCase {
    func testMethodsAreRegisteredAsPromises() {
        let plugin = CapacitorTapJackingPlugin()

        XCTAssertEqual(plugin.jsName, "TapJacking")
        XCTAssertEqual(plugin.pluginMethods.map(\.name), ["preventOverlays", "enableOverlays"])
        XCTAssertTrue(plugin.pluginMethods.allSatisfy { $0.returnType == .promise })
    }

    func testMethodsResolveOnIOS() {
        let plugin = CapacitorTapJackingPlugin()
        for (name, method) in [("preventOverlays", plugin.preventOverlays), ("enableOverlays", plugin.enableOverlays)] {
            var resolved = false
            method(CAPPluginCall(callbackId: "test", methodName: name, options: [:], success: { _, _ in
                resolved = true
            }, error: { _ in
                XCTFail("\(name) must not reject")
            }))
            XCTAssertTrue(resolved, name)
        }
    }
}
