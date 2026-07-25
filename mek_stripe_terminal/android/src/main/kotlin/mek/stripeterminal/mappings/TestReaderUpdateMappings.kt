package mek.stripeterminal.mappings

import com.stripe.stripeterminal.external.models.ReaderSoftwareUpdate
import com.stripe.stripeterminal.external.models.TestReaderUpdate
import mek.stripeterminal.api.TestReaderUpdateApi
import mek.stripeterminal.api.TestReaderUpdateTypeApi
import mek.stripeterminal.api.UpdateComponentApi

fun TestReaderUpdateApi.toHost(): TestReaderUpdate {
    val components = (components ?: emptyList()).map { it.toHost() }.toSet()
    return when (updateType) {
        TestReaderUpdateTypeApi.AVAILABLE -> TestReaderUpdate.available(components)
        TestReaderUpdateTypeApi.REQUIRED -> TestReaderUpdate.required(components)
        TestReaderUpdateTypeApi.REQUIRED_OFFLINE -> TestReaderUpdate.requiredOffline(components)
        TestReaderUpdateTypeApi.LOW_BATTERY -> TestReaderUpdate.lowBattery()
        TestReaderUpdateTypeApi.LOW_BATTERY_SUCCEED_CONNECT -> TestReaderUpdate.lowBatterySucceedConnect()
    }
}

fun UpdateComponentApi.toHost(): ReaderSoftwareUpdate.UpdateComponent {
    return when (this) {
        UpdateComponentApi.INCREMENTAL -> ReaderSoftwareUpdate.UpdateComponent.INCREMENTAL
        UpdateComponentApi.FIRMWARE -> ReaderSoftwareUpdate.UpdateComponent.FIRMWARE
        UpdateComponentApi.CONFIG -> ReaderSoftwareUpdate.UpdateComponent.CONFIG
        UpdateComponentApi.KEYS -> ReaderSoftwareUpdate.UpdateComponent.KEYS
    }
}
