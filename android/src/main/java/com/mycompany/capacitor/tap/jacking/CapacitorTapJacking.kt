package com.mycompany.capacitor.tap.jacking

import android.app.Activity

public class CapacitorTapJacking internal constructor(private val activity: Activity) {
    public fun preventOverlays() {
        activity.window.setHideOverlayWindows(true)
    }

    public fun enableOverlays() {
        activity.window.setHideOverlayWindows(false)
    }
}
