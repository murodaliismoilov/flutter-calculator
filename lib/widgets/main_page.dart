import 'package:calculator/models/calculator_mode.dart';
import 'package:calculator/widgets/calculatee_buttons.dart';
import 'package:calculator/widgets/history_and_scientific_buttons.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

CalculatorModel model = CalculatorModel();
final NumberFormat usCurrency = NumberFormat("#,##0", "en_US");
late double doubleResult;

class _MainPageState extends State<MainPage> {
  void calback(String btnValue) {
    try {
      print(btnValue);
      if (btnValue == 'AC') {
        model.textTodisplay = '';
        model.firstNum = 0;
        model.secondNum = 0;
        model.result = '0';
        model.history = '';
      } else if (btnValue == '+/-') {
        if (model.textTodisplay[0] != '-') {
          model.result = '-' + model.textTodisplay;
        } else {
          model.result = model.textTodisplay.substring(1);
        }
      } else if (btnValue == '+' ||
          btnValue == '-' ||
          btnValue == 'X' ||
          btnValue == '/' ||
          btnValue == '%') {
        model.firstNum = int.parse(model.textTodisplay);
        model.result = '';
        model.operations = btnValue;
      } else if (btnValue == '=') {
        if (model.textTodisplay.isNotEmpty) {
          model.secondNum = int.parse(model.textTodisplay);
          if (model.operations == '+') {
            model.result = (model.firstNum + model.secondNum).toString();
            model.history = model.firstNum.toString() +
                model.operations.toString() +
                model.secondNum.toString();
          }
          if (model.operations == '%') {
            var percent = model.firstNum / 100;
            model.result = (percent * model.secondNum).toString();
            model.history = model.firstNum.toString() +
                model.operations.toString() +
                model.secondNum.toString();
          }
          if (model.operations == '-') {
            model.result = (model.firstNum - model.secondNum).toString();
            model.history = model.firstNum.toString() +
                model.operations.toString() +
                model.secondNum.toString();
          }
          if (model.operations == 'X') {
            model.result = (model.firstNum * model.secondNum).toString();
            model.history = model.firstNum.toString() +
                model.operations.toString() +
                model.secondNum.toString();
          }
          if (model.operations == '/') {
            model.result = (model.firstNum / model.secondNum).toString();
            model.history = model.firstNum.toString() +
                model.operations.toString() +
                model.secondNum.toString();
          }
        }
      } else {
        model.result = int.parse(model.textTodisplay + btnValue).toString();
      }

      setState(() {
        model.textTodisplay = model.result;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [
            Color(0xff0177FF),
            Color(0xff0084FF),
            Color(0xff01A1FF),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 70, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            HistoryAndScientificButtons(),
            SizedBox(
              height: 125,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    model.result,
                    //usCurrency.format(double.parse(model.result)),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w300,
                    ),
                    maxLines: 1,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              model.history,
              style: TextStyle(
                color: Colors.white60,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                height: double.infinity,
                width: 380,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CalculateButton(
                            text: 'AC',
                            callBack: calback,
                          ),
                          CalculateButton(
                            text: 'X/-',
                            callBack: calback,
                          ),
                          CalculateButton(
                            text: '%',
                            callBack: calback,
                          ),
                          CalculateButton(
                            text: '/',
                            color: Colors.blue,
                            buttonTextColor: Colors.white,
                            callBack: calback,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CalculateButton(
                            text: '7',
                            callBack: calback,
                          ),
                          CalculateButton(
                            text: '8',
                            callBack: calback,
                          ),
                          CalculateButton(
                            text: '9',
                            callBack: calback,
                          ),
                          CalculateButton(
                            text: 'X',
                            color: Colors.blue,
                            buttonTextColor: Colors.white,
                            callBack: calback,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CalculateButton(
                            text: '4',
                            callBack: calback,
                          ),
                          CalculateButton(
                            text: '5',
                            callBack: calback,
                          ),
                          CalculateButton(
                            text: '6',
                            callBack: calback,
                          ),
                          CalculateButton(
                            text: '+',
                            color: Colors.blue,
                            buttonTextColor: Colors.white,
                            callBack: calback,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CalculateButton(
                            text: '1',
                            callBack: calback,
                          ),
                          CalculateButton(
                            text: '2',
                            callBack: calback,
                          ),
                          CalculateButton(
                            text: '3',
                            callBack: calback,
                          ),
                          CalculateButton(
                            text: '-',
                            color: Colors.blue,
                            buttonTextColor: Colors.white,
                            callBack: calback,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CalculateButtonForZero(
                            text: '0',
                            callBack: calback,
                          ),
                          CalculateButton(
                            text: '00',
                            callBack: calback,
                          ),
                          CalculateButton(
                            text: '=',
                            color: Colors.blue,
                            buttonTextColor: Colors.white,
                            callBack: calback,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
