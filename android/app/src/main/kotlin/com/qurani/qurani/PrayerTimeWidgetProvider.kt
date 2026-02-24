package com.qurani.qurani

import android.appwidget.AppWidgetManager
import android.appwidget.AppWidgetProvider
import android.content.Context
import android.widget.RemoteViews

class PrayerTimeWidgetProvider : AppWidgetProvider() {
    override fun onUpdate(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetIds: IntArray
    ) {
        val prefs = context.getSharedPreferences("HomeWidgetPreferences", Context.MODE_PRIVATE)

        appWidgetIds.forEach { widgetId ->
            try {
                val views = RemoteViews(context.packageName, R.layout.prayer_time_widget).apply {
                    setTextViewText(R.id.prayer_name,
                        prefs.getString("prayer_name", "Prayer Time"))
                    setTextViewText(R.id.prayer_time,
                        prefs.getString("prayer_time", "Tap to set up"))
                    setTextViewText(R.id.prayer_countdown,
                        prefs.getString("prayer_countdown", "Open Prayer Times in app"))
                }
                appWidgetManager.updateAppWidget(widgetId, views)
            } catch (e: Exception) {
                val views = RemoteViews(context.packageName, R.layout.prayer_time_widget)
                appWidgetManager.updateAppWidget(widgetId, views)
            }
        }
    }
}
