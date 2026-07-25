// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simulated_offline_mode.dart';

// **************************************************************************
// DataClassGenerator
// **************************************************************************

mixin _$SimulatedOfflineModeConfiguration {
  SimulatedOfflineModeConfiguration get _self =>
      this as SimulatedOfflineModeConfiguration;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SimulatedOfflineModeConfiguration &&
          runtimeType == other.runtimeType &&
          _self.sdkOfflineMode == other.sdkOfflineMode &&
          _self.readerOfflineMode == other.readerOfflineMode;

  @override
  int get hashCode {
    var hashCode = 0;
    hashCode = $hashCombine(hashCode, _self.sdkOfflineMode.hashCode);
    hashCode = $hashCombine(hashCode, _self.readerOfflineMode.hashCode);
    return $hashFinish(hashCode);
  }

  @override
  String toString() => (ClassToString('SimulatedOfflineModeConfiguration')
        ..add('sdkOfflineMode', _self.sdkOfflineMode)
        ..add('readerOfflineMode', _self.readerOfflineMode))
      .toString();
}
