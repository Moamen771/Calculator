import 'package:calculator/components.dart';
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
  String result = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          output,
                          style: TextStyle(
                            color: specialButtonColor,
                            fontSize: 40,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          result,
                          style: TextStyle(color: Colors.white, fontSize: 100),
                          overflow: TextOverflow.ellipsis,
                        ),
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
                color: specialButtonColor,
                onTap: () {
                  setState(() {
                    output = '';
                    result = '0';
                  });
                },
                text: "C",
              ),
              CalculatorButton(
                color: specialButtonColor,
                onTap: () {
                  setState(() {
                    output = output.substring(0, output.length - 1);
                  });
                },
                text: "Del",
              ),
              CalculatorButton(
                color: specialButtonColor,
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
                text: "%",
              ),
              CalculatorButton(
                color: operationColor,
                onTap: () {
                  if (output.isEmpty ||
                      (output[output.length - 1] == 'x' ||
                          output[output.length - 1] == '/' ||
                          output[output.length - 1] == '+' ||
                          output[output.length - 1] == '-' ||
                          output[output.length - 1] == '%')) {
                  } else {
                    setState(() {
                      output += '/';
                    });
                  }
                },
                text: "/",
              ),
            ],
          ),
          ButtonsRow(
            buttons: [
              CalculatorButton(
                color: normalColor,
                onTap: () {
                  setState(() {
                    output += '7';
                  });
                },
                text: "7",
              ),
              CalculatorButton(
                color: normalColor,
                onTap: () {
                  setState(() {
                    output += '8';
                  });
                },
                text: "8",
              ),
              CalculatorButton(
                color: normalColor,
                onTap: () {
                  setState(() {
                    output += '9';
                  });
                },
                text: "9",
              ),
              CalculatorButton(
                color: operationColor,
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
                text: "x",
              ),
            ],
          ),
          ButtonsRow(
            buttons: [
              CalculatorButton(
                color: normalColor,
                onTap: () {
                  setState(() {
                    output += '4';
                  });
                },
                text: "4",
              ),
              CalculatorButton(
                color: normalColor,
                onTap: () {
                  setState(() {
                    output += '5';
                  });
                },
                text: "5",
              ),
              CalculatorButton(
                color: normalColor,
                onTap: () {
                  setState(() {
                    output += '6';
                  });
                },
                text: "6",
              ),
              CalculatorButton(
                color: operationColor,
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
                text: "-",
              ),
            ],
          ),
          ButtonsRow(
            buttons: [
              CalculatorButton(
                color: normalColor,
                onTap: () {
                  setState(() {
                    output += '1';
                  });
                },
                text: "1",
              ),
              CalculatorButton(
                color: normalColor,
                onTap: () {
                  setState(() {
                    output += '2';
                  });
                },
                text: "2",
              ),
              CalculatorButton(
                color: normalColor,
                onTap: () {
                  setState(() {
                    output += '3';
                  });
                },
                text: "3",
              ),
              CalculatorButton(
                color: operationColor,
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
                text: "+",
              ),
            ],
          ),
          ButtonsRow(
            buttons: [
              CalculatorButton(
                color: normalColor,
                onTap: () {
                  setState(() {
                    output += '0';
                  });
                },
                text: "0",
              ),
              CalculatorButton(
                color: normalColor,
                onTap: () {
                  setState(() {
                    output += '.';
                  });
                },
                text: ".",
              ),
              Expanded(
                child: CalculatorButton(
                  color: operationColor,
                  onTap: () {
                    try {
                      output = output.replaceAll('x', '*');
                      Parser p = Parser();
                      Expression exp = p.parse(output);
                      double evalResult =
                          exp.evaluate(EvaluationType.REAL, ContextModel());
                      setState(() {
                        // Check if evalResult is an integer
                        if (evalResult == evalResult.floor()) {
                          output = output.replaceAll('*', 'x');
                          result = evalResult.floor().toString();
                        } else {
                          output = output.replaceAll('*', 'x');
                          result = evalResult.toString();
                        }
                      });
                    } catch (e) {
                      setState(() {
                        e.toString() ==
                                'RangeError (index): Invalid value: Valid value range is empty: -1'
                            ? output = 'Syntax Error'
                            : '';
                      });
                    }
                  },
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
