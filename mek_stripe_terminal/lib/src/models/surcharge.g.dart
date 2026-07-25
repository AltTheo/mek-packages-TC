// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surcharge.dart';

// **************************************************************************
// DataClassGenerator
// **************************************************************************

mixin _$SurchargeDetails {
  SurchargeDetails get _self => this as SurchargeDetails;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SurchargeDetails &&
          runtimeType == other.runtimeType &&
          _self.amount == other.amount &&
          _self.maximumAmount == other.maximumAmount &&
          _self.status == other.status;

  @override
  int get hashCode {
    var hashCode = 0;
    hashCode = $hashCombine(hashCode, _self.amount.hashCode);
    hashCode = $hashCombine(hashCode, _self.maximumAmount.hashCode);
    hashCode = $hashCombine(hashCode, _self.status.hashCode);
    return $hashFinish(hashCode);
  }

  @override
  String toString() => (ClassToString('SurchargeDetails')
        ..add('amount', _self.amount)
        ..add('maximumAmount', _self.maximumAmount)
        ..add('status', _self.status))
      .toString();
}

mixin _$SurchargeConsent {
  SurchargeConsent get _self => this as SurchargeConsent;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SurchargeConsent &&
          runtimeType == other.runtimeType &&
          _self.collection == other.collection &&
          _self.notice == other.notice;

  @override
  int get hashCode {
    var hashCode = 0;
    hashCode = $hashCombine(hashCode, _self.collection.hashCode);
    hashCode = $hashCombine(hashCode, _self.notice.hashCode);
    return $hashFinish(hashCode);
  }

  @override
  String toString() => (ClassToString('SurchargeConsent')
        ..add('collection', _self.collection)
        ..add('notice', _self.notice))
      .toString();
}

mixin _$SurchargeConfiguration {
  SurchargeConfiguration get _self => this as SurchargeConfiguration;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SurchargeConfiguration &&
          runtimeType == other.runtimeType &&
          _self.amount == other.amount &&
          _self.consent == other.consent;

  @override
  int get hashCode {
    var hashCode = 0;
    hashCode = $hashCombine(hashCode, _self.amount.hashCode);
    hashCode = $hashCombine(hashCode, _self.consent.hashCode);
    return $hashFinish(hashCode);
  }

  @override
  String toString() => (ClassToString('SurchargeConfiguration')
        ..add('amount', _self.amount)
        ..add('consent', _self.consent))
      .toString();
}
