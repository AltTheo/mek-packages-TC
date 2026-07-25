package mek.stripeterminal.mappings

import com.stripe.stripeterminal.external.models.SimulatedOfflineMode
import com.stripe.stripeterminal.external.models.SimulatedOfflineModeConfiguration
import mek.stripeterminal.api.SimulatedOfflineModeApi
import mek.stripeterminal.api.SimulatedOfflineModeConfigurationApi

fun SimulatedOfflineModeConfigurationApi.toHost(): SimulatedOfflineModeConfiguration {
    return SimulatedOfflineModeConfiguration(
        sdkOfflineMode = sdkOfflineMode.toHost(),
        readerOfflineMode = readerOfflineMode.toHost()
    )
}

fun SimulatedOfflineModeApi.toHost(): SimulatedOfflineMode {
    return when (this) {
        SimulatedOfflineModeApi.DISABLED -> SimulatedOfflineMode.DISABLED
        SimulatedOfflineModeApi.OFFLINE_IMMEDIATE -> SimulatedOfflineMode.OFFLINE_IMMEDIATE
        SimulatedOfflineModeApi.OFFLINE_TIMEOUT -> SimulatedOfflineMode.OFFLINE_TIMEOUT
        SimulatedOfflineModeApi.OFFLINE_INTERMITTENT -> SimulatedOfflineMode.OFFLINE_INTERMITTENT
    }
}
