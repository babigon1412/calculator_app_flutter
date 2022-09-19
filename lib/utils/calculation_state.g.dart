// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculation_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CalculationState on _CalculationState, Store {
  late final _$userInputAtom =
      Atom(name: '_CalculationState.userInput', context: context);

  @override
  String get userInput {
    _$userInputAtom.reportRead();
    return super.userInput;
  }

  @override
  set userInput(String value) {
    _$userInputAtom.reportWrite(value, super.userInput, () {
      super.userInput = value;
    });
  }

  late final _$answerAtom =
      Atom(name: '_CalculationState.answer', context: context);

  @override
  String get answer {
    _$answerAtom.reportRead();
    return super.answer;
  }

  @override
  set answer(String value) {
    _$answerAtom.reportWrite(value, super.answer, () {
      super.answer = value;
    });
  }

  late final _$_CalculationStateActionController =
      ActionController(name: '_CalculationState', context: context);

  @override
  void clean() {
    final _$actionInfo = _$_CalculationStateActionController.startAction(
        name: '_CalculationState.clean');
    try {
      return super.clean();
    } finally {
      _$_CalculationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void delete() {
    final _$actionInfo = _$_CalculationStateActionController.startAction(
        name: '_CalculationState.delete');
    try {
      return super.delete();
    } finally {
      _$_CalculationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void minus() {
    final _$actionInfo = _$_CalculationStateActionController.startAction(
        name: '_CalculationState.minus');
    try {
      return super.minus();
    } finally {
      _$_CalculationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void percentage() {
    final _$actionInfo = _$_CalculationStateActionController.startAction(
        name: '_CalculationState.percentage');
    try {
      return super.percentage();
    } finally {
      _$_CalculationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addUserInput(String input) {
    final _$actionInfo = _$_CalculationStateActionController.startAction(
        name: '_CalculationState.addUserInput');
    try {
      return super.addUserInput(input);
    } finally {
      _$_CalculationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void result() {
    final _$actionInfo = _$_CalculationStateActionController.startAction(
        name: '_CalculationState.result');
    try {
      return super.result();
    } finally {
      _$_CalculationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userInput: ${userInput},
answer: ${answer}
    ''';
  }
}
