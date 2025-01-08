import 'package:calculator/themes/colors.dart';
import 'package:calculator/screens/history_screen.dart';
import 'package:calculator/widgets/buttons_row.dart';
import 'package:calculator/widgets/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String output = '';
  String equation = '';
  String result = '0';
  List<Map<String, String>> history = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 20,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HistoryScreen(
                            history: history,
                          ),
                        ));
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Theme.of(context).colorScheme.tertiary,
                  ),
                  icon: Icon(
                    Icons.history,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        output,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 50,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        result,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.tertiary,
                            fontSize: 100),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ButtonsRow(
            buttons: [
              CalculatorButton(
                color: Theme.of(context).colorScheme.secondary,
                onTap: () {
                  setState(() {
                    output = '';
                    result = '0';
                  });
                },
                isOperation: false,
                text: "C",
              ),
              CalculatorButton(
                color: Theme.of(context).colorScheme.secondary,
                onTap: () {
                  setState(() {
                    output = output.substring(0, output.length - 1);
                  });
                },
                isOperation: false,
                text: "Del",
              ),
              CalculatorButton(
                color: Theme.of(context).colorScheme.secondary,
                onTap: () {
                  if (output.isEmpty ||
                      (output[output.length - 1] == 'x' ||
                          output[output.length - 1] == '/' ||
                          output[output.length - 1] == '+' ||
                          output[output.length - 1] == '-')) {
                  } else {
                    setState(() {
                      output += '%';
                    });
                  }
                },
                isOperation: false,
                text: "%",
              ),
              CalculatorButton(
                color: primary,
                onTap: () {
                  if (output.isEmpty ||
                      (output[output.length - 1] == 'x' ||
                          output[output.length - 1] == '/' ||
                          output[output.length - 1] == '+' ||
                          output[output.length - 1] == '-' ||
                          output[output.length - 1] == '%')) {
                  } else {
                    setState(() {
                      output += '÷';
                    });
                  }
                },
                isOperation: true,
                text: "÷",
              ),
            ],
          ),
          ButtonsRow(
            buttons: [
              CalculatorButton(
                color: Theme.of(context).colorScheme.primary,
                onTap: () {
                  setState(() {
                    output += '7';
                  });
                },
                isOperation: false,
                text: "7",
              ),
              CalculatorButton(
                color: Theme.of(context).colorScheme.primary,
                onTap: () {
                  setState(() {
                    output += '8';
                  });
                },
                isOperation: false,
                text: "8",
              ),
              CalculatorButton(
                color: Theme.of(context).colorScheme.primary,
                onTap: () {
                  setState(() {
                    output += '9';
                  });
                },
                isOperation: false,
                text: "9",
              ),
              CalculatorButton(
                color: primary,
                onTap: () {
                  if (output.isEmpty ||
                      (output[output.length - 1] == 'x' ||
                          output[output.length - 1] == '/' ||
                          output[output.length - 1] == '+' ||
                          output[output.length - 1] == '-' ||
                          output[output.length - 1] == '%')) {
                  } else {
                    setState(() {
                      output += 'x';
                    });
                  }
                },
                isOperation: true,
                text: "x",
              ),
            ],
          ),
          ButtonsRow(
            buttons: [
              CalculatorButton(
                color: Theme.of(context).colorScheme.primary,
                onTap: () {
                  setState(() {
                    output += '4';
                  });
                },
                isOperation: false,
                text: "4",
              ),
              CalculatorButton(
                color: Theme.of(context).colorScheme.primary,
                onTap: () {
                  setState(() {
                    output += '5';
                  });
                },
                isOperation: false,
                text: "5",
              ),
              CalculatorButton(
                color: Theme.of(context).colorScheme.primary,
                onTap: () {
                  setState(() {
                    output += '6';
                  });
                },
                isOperation: false,
                text: "6",
              ),
              CalculatorButton(
                color: primary,
                onTap: () {
                  if (output.isEmpty ||
                      (output[output.length - 1] == 'x' ||
                          output[output.length - 1] == '/' ||
                          output[output.length - 1] == '+' ||
                          output[output.length - 1] == '-' ||
                          output[output.length - 1] == '%')) {
                  } else {
                    setState(() {
                      output += '-';
                    });
                  }
                },
                isOperation: true,
                text: "-",
              ),
            ],
          ),
          ButtonsRow(
            buttons: [
              CalculatorButton(
                color: Theme.of(context).colorScheme.primary,
                onTap: () {
                  setState(() {
                    output += '1';
                  });
                },
                isOperation: false,
                text: "1",
              ),
              CalculatorButton(
                color: Theme.of(context).colorScheme.primary,
                onTap: () {
                  setState(() {
                    output += '2';
                  });
                },
                isOperation: false,
                text: "2",
              ),
              CalculatorButton(
                color: Theme.of(context).colorScheme.primary,
                onTap: () {
                  setState(() {
                    output += '3';
                  });
                },
                isOperation: false,
                text: "3",
              ),
              CalculatorButton(
                color: primary,
                onTap: () {
                  if (output.isEmpty ||
                      (output[output.length - 1] == 'x' ||
                          output[output.length - 1] == '/' ||
                          output[output.length - 1] == '+' ||
                          output[output.length - 1] == '-' ||
                          output[output.length - 1] == '%')) {
                  } else {
                    setState(() {
                      output += '+';
                    });
                  }
                },
                isOperation: true,
                text: "+",
              ),
            ],
          ),
          ButtonsRow(
            buttons: [
              CalculatorButton(
                color: Theme.of(context).colorScheme.primary,
                onTap: () {
                  setState(() {
                    output += '0';
                  });
                },
                isOperation: false,
                text: "0",
              ),
              CalculatorButton(
                color: Theme.of(context).colorScheme.primary,
                onTap: () {
                  setState(() {
                    output += '.';
                  });
                },
                isOperation: false,
                text: ".",
              ),
              Expanded(
                child: CalculatorButton(
                  color: primary,
                  onTap: () {
                    equation = output;
                    equation = equation.replaceAll('x', '*');
                    equation = equation.replaceAll('÷', '/');
                    Parser p = Parser();
                    Expression exp = p.parse(equation);
                    double evalResult =
                        exp.evaluate(EvaluationType.REAL, ContextModel());
                    setState(() {
                      // Check if evalResult is an integer
                      if (evalResult == evalResult.floor()) {
                        result = evalResult.floor().toString();
                      } else {
                        result = evalResult.toString();
                      }
                    });
                    history.add({"output": output, "result": result});
                  },
                  isOperation: true,
                  text: "=",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
