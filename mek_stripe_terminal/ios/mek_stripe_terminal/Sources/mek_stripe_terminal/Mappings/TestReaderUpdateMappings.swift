import Foundation
import StripeTerminal

extension TestReaderUpdateApi {
    func toHost() -> TestReaderUpdate {
        let components = (self.components ?? []).toHost()
        switch updateType {
        case .available:
            return TestReaderUpdate.available(components)
        case .required:
            return TestReaderUpdate.required(components)
        case .requiredOffline:
            return TestReaderUpdate.requiredOffline(components)
        case .lowBattery:
            return TestReaderUpdate.lowBattery()
        case .lowBatterySucceedConnect:
            return TestReaderUpdate.lowBatterySucceedConnect()
        }
    }
}

private extension Array where Element == UpdateComponentApi {
    func toHost() -> UpdateComponent {
        var result: UpdateComponent = []
        for component in self {
            switch component {
            case .incremental:
                result.insert(.incremental)
            case .firmware:
                result.insert(.firmware)
            case .config:
                result.insert(.config)
            case .keys:
                result.insert(.keys)
            }
        }
        return result
    }
}
