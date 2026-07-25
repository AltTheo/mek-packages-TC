@file:OptIn(Surcharging::class)

package mek.stripeterminal.mappings

import com.stripe.stripeterminal.external.Surcharging
import com.stripe.stripeterminal.external.models.SurchargeConfiguration
import com.stripe.stripeterminal.external.models.SurchargeConsent
import com.stripe.stripeterminal.external.models.SurchargeConsentCollection
import com.stripe.stripeterminal.external.models.SurchargeDetails
import com.stripe.stripeterminal.external.models.SurchargeStatus
import mek.stripeterminal.api.SurchargeConfigurationApi
import mek.stripeterminal.api.SurchargeConsentApi
import mek.stripeterminal.api.SurchargeConsentCollectionApi
import mek.stripeterminal.api.SurchargeDetailsApi
import mek.stripeterminal.api.SurchargeStatusApi

fun SurchargeDetails.toApi(): SurchargeDetailsApi {
    return SurchargeDetailsApi(
        amount = amount,
        maximumAmount = maximumAmount,
        status = status?.toApi()
    )
}

fun SurchargeStatus.toApi(): SurchargeStatusApi? {
    return when (this) {
        SurchargeStatus.AVAILABLE -> SurchargeStatusApi.AVAILABLE
        SurchargeStatus.UNAVAILABLE -> SurchargeStatusApi.UNAVAILABLE
    }
}

// PARAMS

fun SurchargeConfigurationApi.toHost(): SurchargeConfiguration {
    val b = SurchargeConfiguration.Builder(amount)
    consent?.let { b.setConsent(it.toHost()) }
    return b.build()
}

fun SurchargeConsentApi.toHost(): SurchargeConsent {
    val b = SurchargeConsent.Builder(collection.toHost())
    notice?.let(b::setNotice)
    return b.build()
}

fun SurchargeConsentCollectionApi.toHost(): SurchargeConsentCollection {
    return when (this) {
        SurchargeConsentCollectionApi.ENABLED -> SurchargeConsentCollection.ENABLED
        SurchargeConsentCollectionApi.DISABLED -> SurchargeConsentCollection.DISABLED
    }
}
