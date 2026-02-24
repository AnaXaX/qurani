package com.qurani.qurani

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent

/**
 * Receives BOOT_COMPLETED broadcast to reschedule prayer notifications.
 * flutter_local_notifications handles the actual rescheduling via its own
 * boot receiver, but we keep this as a safety net.
 */
class BootReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        if (intent.action == Intent.ACTION_BOOT_COMPLETED) {
            // The flutter_local_notifications plugin automatically reschedules
            // pending notifications on boot. This receiver ensures the app
            // process is started so the plugin can do its work.
        }
    }
}
