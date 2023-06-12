import 'package:flutter/material.dart';

void main() {
  runApp(calculator());
}

class calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Calculatrice",
      home: calculatorHome()
    );
  }
}

class calculatorHome extends StatefulWidget {
  const calculatorHome({super.key});

  @override
  State<calculatorHome> createState() => _calculatorHomeState();
}

class _calculatorHomeState extends State<calculatorHome> {

  Widget calculatorButton(String textButton,Color colorText, Color colorButton){
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      color: colorButton,
      child : MaterialButton(
          onPressed: null,
          padding: EdgeInsets.all(16),
          child: Text(textButton,style: TextStyle(color: colorText, fontSize: 30, fontWeight: FontWeight.normal),)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculatrice"),
      centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
            child: Text("0", style:TextStyle(fontSize: 35)),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(20, 30, 10, 0),
            child: Text("0", style:TextStyle(fontSize: 35)),
          ),
          Expanded(child: Divider()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Table(
                  children: [
                  TableRow(
                    children: [
                      calculatorButton("C", Colors.redAccent, Colors.white),
                      calculatorButton("⌫", Colors.blue, Colors.white),
                      calculatorButton("%", Colors.blue, Colors.white),
                      calculatorButton("÷", Colors.blue, Colors.white),
                    ]
                  ),
                    TableRow(
                    children: [
                      calculatorButton("7", Colors.redAccent, Colors.white),
                      calculatorButton("8", Colors.blue, Colors.white),
                      calculatorButton("9", Colors.blue, Colors.white),
                      calculatorButton("×", Colors.blue, Colors.white),
                    ]
                  ),
                    TableRow(
                    children: [
                      calculatorButton("4", Colors.redAccent, Colors.white),
                      calculatorButton("5", Colors.blue, Colors.white),
                      calculatorButton("6", Colors.blue, Colors.white),
                      calculatorButton("-", Colors.blue, Colors.white),
                    ]
                  ),
                    TableRow(
                    children: [
                      calculatorButton("1", Colors.redAccent, Colors.white),
                      calculatorButton("2", Colors.blue, Colors.white),
                      calculatorButton("3", Colors.blue, Colors.white),
                      calculatorButton("+", Colors.blue, Colors.white),
                    ]
                  ),TableRow(
                    children: [
                      calculatorButton(".", Colors.redAccent, Colors.white),
                      calculatorButton("0", Colors.blue, Colors.white),
                      calculatorButton("00", Colors.blue, Colors.white),
                      calculatorButton("=", Colors.white, Colors.blue),
                    ]
                  ),
                ],),
              )
            ],
          )
        ],
      ),
    );
  }
}

