import Foundation
import StripeTerminal

extension SurchargeDetails {
    func toApi() -> SurchargeDetailsApi {
        return SurchargeDetailsApi(
            amount: amount?.intValue,
            maximumAmount: maximumAmount?.intValue,
            status: status.flatMap { SurchargeStatus(rawValue: UInt($0.intValue)) }?.toApi()
        )
    }
}

extension SurchargeStatus {
    func toApi() -> SurchargeStatusApi? {
        switch self {
        case .available:
            return .available
        case .unavailable:
            return .unavailable
        @unknown default:
            return nil
        }
    }
}

// PARAMS

extension SurchargeConfigurationApi {
    func toHost() throws -> SurchargeConfiguration {
        let b = SurchargeConfigurationBuilder().setAmount(UInt(amount))
        if let it = consent { b.setSurchargeConsent(try it.toHost()) }
        return try b.build()
    }
}

extension SurchargeConsentApi {
    func toHost() throws -> SurchargeConsent {
        let b = SurchargeConsentBuilder().setCollection(collection.toHost())
        if let it = notice { b.setNotice(it) }
        return try b.build()
    }
}

extension SurchargeConsentCollectionApi {
    func toHost() -> SurchargeConsentCollection {
        switch self {
        case .enabled:
            return .enabled
        case .disabled:
            return .disabled
        }
    }
}
