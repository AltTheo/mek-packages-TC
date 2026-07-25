import Foundation
import StripeTerminal

extension SimulatedOfflineModeConfigurationApi {
    func toHost() throws -> SimulatedOfflineModeConfiguration {
        return try SimulatedOfflineModeConfigurationBuilder()
            .setSdkOfflineMode(sdkOfflineMode.toHost())
            .setReaderOfflineMode(readerOfflineMode.toHost())
            .build()
    }
}

extension SimulatedOfflineModeApi {
    func toHost() -> SimulatedOfflineMode {
        switch self {
        case .disabled:
            return .disabled
        case .offlineImmediate:
            return .offlineImmediate
        case .offlineTimeout:
            return .offlineTimeout
        case .offlineIntermittent:
            return .offlineIntermittent
        }
    }
}
