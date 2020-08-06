// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fitnessController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Fitness on FitnessController, Store {
  final _$healthDataListAtom = Atom(name: 'FitnessController.healthDataList');

  @override
  List<HealthDataPoint> get healthDataList {
    _$healthDataListAtom.reportRead();
    return super.healthDataList;
  }

  @override
  set healthDataList(List<HealthDataPoint> value) {
    _$healthDataListAtom.reportWrite(value, super.healthDataList, () {
      super.healthDataList = value;
    });
  }

  final _$stepsCountAtom = Atom(name: 'FitnessController.stepsCount');

  @override
  int get stepsCount {
    _$stepsCountAtom.reportRead();
    return super.stepsCount;
  }

  @override
  set stepsCount(int value) {
    _$stepsCountAtom.reportWrite(value, super.stepsCount, () {
      super.stepsCount = value;
    });
  }

  final _$fetchDataAsyncAction = AsyncAction('FitnessController.fetchData');

  @override
  Future fetchData() {
    return _$fetchDataAsyncAction.run(() => super.fetchData());
  }

  @override
  String toString() {
    return '''
healthDataList: ${healthDataList},
stepsCount: ${stepsCount}
    ''';
  }
}
