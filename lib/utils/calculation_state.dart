import 'package:math_expressions/math_expressions.dart';
import 'package:mobx/mobx.dart';

part 'calculation_state.g.dart';

class CalculationState extends _CalculationState with _$CalculationState {
  CalculationState();
}

abstract class _CalculationState with Store {
  // Used math expressions to calculate the answer
  Parser parser = Parser();
  ContextModel contextModel = ContextModel();

  @observable
  String userInput = '';

  @observable
  String answer = '0';

  @action
  void clean() {
    userInput = '';
    answer = '0';
  }

  @action
  void delete() {
    if (userInput.isNotEmpty) {
      userInput = userInput.substring(0, userInput.length - 1);
    }
  }

  @action
  void minus() {
    if (userInput.isNotEmpty) {
      String newString = userInput.substring(userInput.length - 1);
      delete();
      userInput += '(-$newString)';
    }
  }

  @action
  void percentage() {
    if (userInput.isNotEmpty) {
      String newString = userInput.substring(userInput.length - 1);
      delete();
      userInput += '($newString/100)';
    }
  }

  @action
  void addUserInput(String input) {
    if ((input == '+' || input == '-' || input == '*' || input == '/') &&
        userInput.isEmpty) {
      userInput += '';
    } else {
      userInput += input;
    }
  }

  @action
  void result() {
    if (userInput.isNotEmpty) {
      String newString = userInput.substring(userInput.length - 1);
      if (newString != '+' &&
          newString != '-' &&
          newString != '*' &&
          newString != '/') {
        Expression expression = parser.parse(userInput);
        answer =
            expression.evaluate(EvaluationType.REAL, contextModel).toString();
        userInput = answer;
      } else {
        answer = 'Error';
      }
    }
  }
}
