// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_reader_update.dart';

// **************************************************************************
// DataClassGenerator
// **************************************************************************

mixin _$TestReaderUpdate {
  TestReaderUpdate get _self => this as TestReaderUpdate;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TestReaderUpdate &&
          runtimeType == other.runtimeType &&
          _self.updateType == other.updateType &&
          $listEquality.equals(_self.components, other.components);

  @override
  int get hashCode {
    var hashCode = 0;
    hashCode = $hashCombine(hashCode, _self.updateType.hashCode);
    hashCode = $hashCombine(hashCode, $listEquality.hash(_self.components));
    return $hashFinish(hashCode);
  }

  @override
  String toString() => (ClassToString('TestReaderUpdate')
        ..add('updateType', _self.updateType)
        ..add('components', _self.components))
      .toString();
}
