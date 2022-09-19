// import 'package:calculator_app_flutter/global.dart';
import 'package:calculator_app_flutter/utils/calculation_state.dart';
import 'package:calculator_app_flutter/utils/dimensions.dart';
import 'package:calculator_app_flutter/widgets/button_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Declare instant for get value and method from class CalculationState
  final calculator = CalculationState();

  // Set button positions
  // Set value and function for each buttons
  @override
  Widget build(BuildContext context) {
    var GridButton = [
      ButtonColor.purple200(value: 'AC', onTap: () => calculator.clean()),
      ButtonColor.purple200(value: 'DEL', onTap: () => calculator.delete()),
      ButtonColor.purple200(value: '%', onTap: () => calculator.percentage()),
      ButtonColor.purple(value: '÷', onTap: () => calculator.addUserInput('/')),
      ButtonColor.grey(value: '7', onTap: () => calculator.addUserInput('7')),
      ButtonColor.grey(value: '8', onTap: () => calculator.addUserInput('8')),
      ButtonColor.grey(value: '9', onTap: () => calculator.addUserInput('9')),
      ButtonColor.purple(value: 'x', onTap: () => calculator.addUserInput('*')),
      ButtonColor.grey(value: '4', onTap: () => calculator.addUserInput('4')),
      ButtonColor.grey(value: '5', onTap: () => calculator.addUserInput('5')),
      ButtonColor.grey(value: '6', onTap: () => calculator.addUserInput('6')),
      ButtonColor.purple(value: '-', onTap: () => calculator.addUserInput('-')),
      ButtonColor.grey(value: '1', onTap: () => calculator.addUserInput('1')),
      ButtonColor.grey(value: '2', onTap: () => calculator.addUserInput('2')),
      ButtonColor.grey(value: '3', onTap: () => calculator.addUserInput('3')),
      ButtonColor.purple(value: '+', onTap: () => calculator.addUserInput('+')),
      ButtonColor.grey(value: '+/-', onTap: () => calculator.minus()),
      ButtonColor.grey(value: '0', onTap: () => calculator.addUserInput('0')),
      ButtonColor.grey(value: '.', onTap: () => calculator.addUserInput('.')),
      ButtonColor.purple(value: '=', onTap: () => calculator.result()),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Used observer to update values
          Observer(
            builder: (_) => Column(
              // Seperated equation and answer by column
              children: [
                // Equation container
                Container(
                  height: Dimensions.ten * 22,
                  width: Dimensions.screenWidth,
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.all(Dimensions.ten * 2),
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Text(
                    calculator.userInput,
                    style: TextStyle(
                        color: Colors.black38, fontSize: Dimensions.ten * 2.5),
                  ),
                ),
                // Answer container
                Container(
                  height: Dimensions.ten * 10,
                  width: Dimensions.screenWidth,
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.all(Dimensions.ten * 2),
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Text(
                    calculator.answer,
                    style: TextStyle(
                        color: Colors.black, fontSize: Dimensions.ten * 5),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                top: Dimensions.ten * 2.5,
                left: Dimensions.ten,
                right: Dimensions.ten,
              ),

              // Used grid view to create buttons
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                padding: EdgeInsets.zero,
                itemCount: GridButton.length,
                itemBuilder: (BuildContext context, int index) {
                  return GridButton[index];
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
