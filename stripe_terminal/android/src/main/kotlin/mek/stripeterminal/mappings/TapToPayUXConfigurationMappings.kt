package mek.stripeterminal.mappings

import mek.stripeterminal.api.TapToPayUxConfigurationApi
import com.stripe.stripeterminal.external.models.TapToPayUxConfiguration
import mek.stripeterminal.api.TapToPayUxConfigurationColorSchemeApi
import mek.stripeterminal.api.TapToPayUxConfigurationTapZoneApi
import mek.stripeterminal.api.TapToPayUxConfigurationTapZoneIndicatorApi
import mek.stripeterminal.api.TapToPayUxConfigurationDarkModeApi

fun TapToPayUxConfigurationApi.toHost(): TapToPayUxConfiguration {
    val builder = TapToPayUxConfiguration.Builder()
    if (tapZone != null) builder.tapZone(tapZone.toHost())
    if (colors != null) builder.colors(colors.toHost())
    if (darkMode != null) builder.darkMode(darkMode.toHost())
    return builder.build()
}

fun TapToPayUxConfigurationTapZoneApi.toHost(): TapToPayUxConfiguration.TapZone {
    val x = position?.xBias?.toFloat() ?: 0.5f
    val y = position?.yBias?.toFloat() ?: 0.5f
    return when (indicator) {
        TapToPayUxConfigurationTapZoneIndicatorApi.ABOVE -> TapToPayUxConfiguration.TapZone.Above(bias = x)
        TapToPayUxConfigurationTapZoneIndicatorApi.BELOW -> TapToPayUxConfiguration.TapZone.Below(bias = x)
        TapToPayUxConfigurationTapZoneIndicatorApi.FRONT -> TapToPayUxConfiguration.TapZone.Front(xBias = x, yBias = y)
        TapToPayUxConfigurationTapZoneIndicatorApi.BEHIND -> TapToPayUxConfiguration.TapZone.Behind(xBias = x, yBias = y)
        TapToPayUxConfigurationTapZoneIndicatorApi.LEFT -> TapToPayUxConfiguration.TapZone.Left(x)
        TapToPayUxConfigurationTapZoneIndicatorApi.RIGHT -> TapToPayUxConfiguration.TapZone.Right(x)

        null -> TapToPayUxConfiguration.TapZone.Default
    }
}

fun TapToPayUxConfigurationColorSchemeApi.toHost(): TapToPayUxConfiguration.ColorScheme {
    val builder = TapToPayUxConfiguration.ColorScheme.Builder()
    if (primary != null) builder.primary(TapToPayUxConfiguration.Color.Value(primary.toInt()))
    if (success != null) builder.success(TapToPayUxConfiguration.Color.Value(success.toInt()))
    if (error != null) builder.error(TapToPayUxConfiguration.Color.Value(error.toInt()))
    return builder.build()
}

fun TapToPayUxConfigurationDarkModeApi.toHost(): TapToPayUxConfiguration.DarkMode {
    return when (this) {
        TapToPayUxConfigurationDarkModeApi.SYSTEM -> TapToPayUxConfiguration.DarkMode.SYSTEM
        TapToPayUxConfigurationDarkModeApi.LIGHT -> TapToPayUxConfiguration.DarkMode.LIGHT
        TapToPayUxConfigurationDarkModeApi.DARK -> TapToPayUxConfiguration.DarkMode.DARK
    }
}
