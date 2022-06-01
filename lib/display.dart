import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  var input_val = '0'.obs;
  var numStr = '0123456789';
  add_input_val(t) {
    if (numStr.contains(t)) {
      if (input_val.value == '0') {
        input_val.value = t;
      } else {
        input_val.value = input_val.value + t;
      }
    } else {
      if (t == 'AC') {
        input_val.value = '0';
      } else if (t == '+/-') {
      } else if (t == '%') {
      } else if (t == '÷') {
      } else if (t == '-') {
      } else if (t == '+') {
      } else if (t == 'X') {
      } else if (t == '.') {
      } else if (t == '=') {}
    }
  }
}

class Display extends StatelessWidget {
  const Display({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());
    print('---------------------' + c.input_val.value);
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
                child: ElevatedButton(
                  onPressed: () {
                    c.add_input_val('AC');
                  },
                  child: Text(
                    'AC',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    c.add_input_val('+/-');
                  },
                  child: Text(
                    '+/-',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    c.add_input_val('%');
                  },
                  child: Text(
                    '%',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    c.add_input_val('÷');
                  },
                  child: Text(
                    '÷',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ),
            ]),
            Row(children: <Widget>[
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    c.add_input_val('7');
                  },
                  child: Text(
                    '7',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    c.add_input_val('8');
                  },
                  child: Text(
                    '8',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    c.add_input_val('9');
                  },
                  child: Text(
                    '9',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    c.add_input_val('X');
                  },
                  child: Text(
                    'X',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ),
            ]),
            Row(children: <Widget>[
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    c.add_input_val('4');
                  },
                  child: Text(
                    '4',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    c.add_input_val('5');
                  },
                  child: Text(
                    '5',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    c.add_input_val('6');
                  },
                  child: Text(
                    '6',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    c.add_input_val('-');
                  },
                  child: Text(
                    '-',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ),
            ]),
            Row(children: <Widget>[
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    c.add_input_val('1');
                  },
                  child: Text(
                    '1',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    c.add_input_val('2');
                  },
                  child: Text(
                    '2',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    c.add_input_val('3');
                  },
                  child: Text(
                    '3',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    c.add_input_val('+');
                  },
                  child: Text(
                    '+',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ),
            ]),
            Row(children: <Widget>[
              Expanded(
                flex: 2,
                child: ElevatedButton(
                  onPressed: () {
                    c.add_input_val('0');
                  },
                  child: Text(
                    '0',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    c.add_input_val('.');
                  },
                  child: Text(
                    '.',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    c.add_input_val('=');
                  },
                  child: Text(
                    '=',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
