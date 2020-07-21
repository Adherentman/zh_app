// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counterController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Counter on CounterController, Store {
  final _$valueAtom = Atom(name: 'CounterController.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$CounterControllerActionController =
      ActionController(name: 'CounterController');

  @override
  void increment() {
    final _$actionInfo = _$CounterControllerActionController.startAction(
        name: 'CounterController.increment');
    try {
      return super.increment();
    } finally {
      _$CounterControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
