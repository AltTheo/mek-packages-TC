import 'package:mek_data_class/mek_data_class.dart';
import 'package:mek_stripe_terminal/src/models/reader_software_update.dart';

part 'test_reader_update.g.dart';

/// The kind of reader software update scenario to simulate.
enum TestReaderUpdateType {
  /// Simulate an available (optional) update.
  available,

  /// Simulate a required update.
  required,

  /// Simulate a required-for-offline-support update.
  requiredOffline,

  /// Simulate a required update that fails to install due to insufficient reader battery. The
  /// connection also fails.
  lowBattery,

  /// Simulate a required update that fails to install due to insufficient reader battery, but
  /// the connection still succeeds.
  lowBatterySucceedConnect,
}

/// Simulates a reader software update scenario on a physical reader in test mode.
///
/// Set on [BluetoothConnectionConfiguration] or [UsbConnectionConfiguration] before connecting.
@DataClass()
class TestReaderUpdate with _$TestReaderUpdate {
  /// The kind of update scenario to simulate.
  final TestReaderUpdateType updateType;

  /// The components the simulated update contains.
  ///
  /// Only applicable when [updateType] is [TestReaderUpdateType.available],
  /// [TestReaderUpdateType.required] or [TestReaderUpdateType.requiredOffline].
  final List<UpdateComponent>? components;

  const TestReaderUpdate({
    required this.updateType,
    this.components,
  });
}
