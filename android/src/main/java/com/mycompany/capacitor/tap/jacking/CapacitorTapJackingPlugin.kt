package com.mycompany.capacitor.tap.jacking

import com.getcapacitor.Plugin
import com.getcapacitor.PluginCall
import com.getcapacitor.PluginMethod
import com.getcapacitor.annotation.CapacitorPlugin

@CapacitorPlugin(name = "TapJacking")
public class CapacitorTapJackingPlugin : Plugin() {
    private lateinit var implementation: CapacitorTapJacking

    override fun load() {
        implementation = CapacitorTapJacking(bridge.activity)
    }

    @PluginMethod
    public fun preventOverlays(call: PluginCall) {
        bridge.activity.runOnUiThread {
            implementation.preventOverlays()
            call.resolve()
        }
    }

    @PluginMethod
    public fun enableOverlays(call: PluginCall) {
        bridge.activity.runOnUiThread {
            implementation.enableOverlays()
            call.resolve()
        }
    }
}
