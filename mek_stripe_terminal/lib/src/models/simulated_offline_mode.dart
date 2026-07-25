import 'package:mek_data_class/mek_data_class.dart';

part 'simulated_offline_mode.g.dart';

/// The simulated offline behavior to apply, for testing offline payment flows without a
/// physical network disruption.
///
/// This is a preview feature. To request access, contact Stripe Support.
enum SimulatedOfflineMode {
  /// Don’t simulate offline mode.
  disabled,

  /// Simulate going offline immediately.
  offlineImmediate,

  /// Simulate going offline after a timeout.
  offlineTimeout,

  /// Simulate intermittently going offline.
  offlineIntermittent,
}

/// Configures the SDK and reader offline behavior independently, for testing offline payment
/// flows without a physical network disruption.
///
/// Set via [Terminal.setSimulatedOfflineModeConfiguration]. Returns an error if you don’t have
/// access to this feature, or if connected to a livemode reader.
///
/// This is a preview feature. To request access, contact Stripe Support.
@DataClass()
class SimulatedOfflineModeConfiguration with _$SimulatedOfflineModeConfiguration {
  /// The simulated offline behavior for the SDK.
  final SimulatedOfflineMode sdkOfflineMode;

  /// The simulated offline behavior for the reader.
  final SimulatedOfflineMode readerOfflineMode;

  const SimulatedOfflineModeConfiguration({
    required this.sdkOfflineMode,
    required this.readerOfflineMode,
  });
}
