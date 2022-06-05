import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_calculator/custom_widgets/cal_elevated_button.dart';

class CalController extends GetxController {
  var temp_val = '0'.obs;
  var temp_oper = '00'.obs;
  var input_val = '0'.obs;
  var numStr = '0123456789';
  add_input_val(t) {
    print('------------------------------ add_input_val: ' + t);
    if (numStr.contains(t)) {
      if (temp_oper.value == '00') {
        if (input_val.value == '0') {
          input_val.value = t;
        } else {
          input_val.value = input_val.value + t;
        }
      } else {
        if (temp_val.value == '0') {
          temp_val.value = input_val.value;
          input_val.value = t;
        } else {
          if (input_val.value == '0') {
            input_val.value = t;
          } else {
            input_val.value = input_val.value + t;
          }
        }
      }
    } else {
      if (t == 'AC' && input_val.value != '0') {
        temp_oper.value = '00';
        temp_val.value = '0';
        input_val.value = '0';
      } else if (t == '+/-' && input_val.value != '0') {
      } else if (t == '%' && input_val.value != '0') {
        temp_oper.value = '05';
      } else if (t == '÷' && input_val.value != '0') {
        temp_oper.value = '04';
      } else if (t == '-' && input_val.value != '0') {
        temp_oper.value = '02';
      } else if (t == '+' && input_val.value != '0') {
        temp_oper.value = '01';
      } else if (t == 'X' && input_val.value != '0') {
        temp_oper.value = '03';
      } else if (t == '.') {
      } else if (t == '=' && input_val.value != '0') {
        var preVar = double.parse(temp_val.value.toString());
        var afterVar = double.parse(input_val.value.toString());
        var midOper = temp_oper.value.toString();
        temp_oper.value = '00';
        temp_val.value = '0';
        print('-------------------- preVar: ' + preVar.toString());
        print('-------------------- midOper: ' + midOper);
        print('-------------------- afterVar: ' + afterVar.toString());
        if (midOper == '05') {
          var result = preVar % afterVar;
          input_val.value = result.toString();
        } else if (midOper == '04') {
          var result = preVar / afterVar;
          input_val.value = result.toString();
        } else if (midOper == '02') {
          var result = preVar - afterVar;
          input_val.value = result.toString();
        } else if (midOper == '01') {
          var result = preVar + afterVar;
          print('-------------------- result: ' + result.toString());
          input_val.value = result.toString();
        } else if (midOper == '03') {
          var result = preVar * afterVar;
          input_val.value = result.toString();
        }
      }
    }
  }
}

class CalDisplay extends StatelessWidget {
  const CalDisplay({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final CalController c = Get.put(CalController());
    print('---------------------' + c.input_val.value);
    print('---------------------' + c.temp_oper.value);
    print('---------------------' + c.temp_val.value);
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(children: <Widget>[
              Expanded(
                flex: 4,
                child: Container(
                  child: Obx(() => Text(
                        "${c.input_val}",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 50),
                      )),
                ),
              ),
            ]),
            Row(children: <Widget>[
              Expanded(
                flex: 1,
                child: calElevatedButton(
                    text: 'AC',
                    press: () {
                      c.add_input_val('AC');
                    }),
              ),
              Expanded(
                flex: 1,
                child: calElevatedButton(
                    text: '+/-',
                    press: () {
                      c.add_input_val('+/-');
                    }),
              ),
              Expanded(
                flex: 1,
                child: calElevatedButton(
                    text: '%',
                    press: () {
                      c.add_input_val('%');
                    }),
              ),
              Expanded(
                flex: 1,
                child: calElevatedButton(
                    text: '÷',
                    press: () {
                      c.add_input_val('÷');
                    }),
              ),
            ]),
            Row(children: <Widget>[
              Expanded(
                flex: 1,
                child: calElevatedButton(
                    text: '7',
                    press: () {
                      c.add_input_val('7');
                    }),
              ),
              Expanded(
                flex: 1,
                child: calElevatedButton(
                    text: '8',
                    press: () {
                      c.add_input_val('8');
                    }),
              ),
              Expanded(
                flex: 1,
                child: calElevatedButton(
                    text: '9',
                    press: () {
                      c.add_input_val('9');
                    }),
              ),
              Expanded(
                flex: 1,
                child: calElevatedButton(
                    text: 'X',
                    press: () {
                      c.add_input_val('X');
                    }),
              ),
            ]),
            Row(children: <Widget>[
              Expanded(
                flex: 1,
                child: calElevatedButton(
                    text: '4',
                    press: () {
                      c.add_input_val('4');
                    }),
              ),
              Expanded(
                flex: 1,
                child: calElevatedButton(
                    text: '5',
                    press: () {
                      c.add_input_val('5');
                    }),
              ),
              Expanded(
                flex: 1,
                child: calElevatedButton(
                    text: '6',
                    press: () {
                      c.add_input_val('6');
                    }),
              ),
              Expanded(
                flex: 1,
                child: calElevatedButton(
                    text: '-',
                    press: () {
                      c.add_input_val('-');
                    }),
              ),
            ]),
            Row(children: <Widget>[
              Expanded(
                flex: 1,
                child: calElevatedButton(
                    text: '1',
                    press: () {
                      c.add_input_val('1');
                    }),
              ),
              Expanded(
                flex: 1,
                child: calElevatedButton(
                    text: '2',
                    press: () {
                      c.add_input_val('2');
                    }),
              ),
              Expanded(
                flex: 1,
                child: calElevatedButton(
                    text: '3',
                    press: () {
                      c.add_input_val('3');
                    }),
              ),
              Expanded(
                flex: 1,
                child: calElevatedButton(
                    text: '+',
                    press: () {
                      c.add_input_val('+');
                    }),
              ),
            ]),
            Row(children: <Widget>[
              Expanded(
                flex: 2,
                child: calElevatedButton(
                    text: '0',
                    press: () {
                      c.add_input_val('0');
                    }),
              ),
              Expanded(
                flex: 1,
                child: calElevatedButton(
                    text: '.',
                    press: () {
                      c.add_input_val('.');
                    }),
              ),
              Expanded(
                flex: 1,
                child: calElevatedButton(
                    text: '=',
                    press: () {
                      c.add_input_val('=');
                    }),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
