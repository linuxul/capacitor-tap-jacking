package com.mycompany.capacitor.tap.jacking

import com.getcapacitor.Plugin
import com.getcapacitor.PluginCall
import com.getcapacitor.PluginMethod
import com.getcapacitor.PluginThread
import com.getcapacitor.annotation.CapacitorPlugin

@CapacitorPlugin(name = "TapJacking")
public class CapacitorTapJackingPlugin : Plugin() {
    private lateinit var implementation: CapacitorTapJacking

    override fun load() {
        implementation = CapacitorTapJacking(bridge.activity)
    }

    // Both change the activity's window, which belongs to the main thread
    @PluginMethod(thread = PluginThread.MAIN)
    public fun preventOverlays(call: PluginCall) {
        implementation.preventOverlays()
        call.resolve()
    }

    @PluginMethod(thread = PluginThread.MAIN)
    public fun enableOverlays(call: PluginCall) {
        implementation.enableOverlays()
        call.resolve()
    }
}
