import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

// Colors used in the app
Color cGrey = Color(0xffA6A6A6);
Color cDGrey = Color(0xff333333);
Color cOrange = Color(0xffF09A37);
Color cBlack = Color(0xff080808);
Color cWhite = Color(0xffffffff);

class _HomeScreenState extends State<HomeScreen> {
  // get screen data
  MediaQueryData queryData;

// variables for the calculator
  String output = "0";

  String _output = "0";
  // first number
  double num1 = 0.0;
  // second number
  double num2 = 0.0;
  // the operator i used
  String operand = "";

// method for the calculator logic
  _buttonPressed(String bText) {
    // check if the clear button is pressed
    if (bText == "C") {
      _output = "0";
      num1 = 0.0;
      num2 = 0.0;
      operand = "";

      // checks if an operand is clicked
    } else if (bText == "+" || bText == "-" || bText == "÷" || bText == "×") {
      num1 = double.parse(output);

      operand = bText;

      _output = "0";

      // checks if a deciaml is clicked
    } else if (bText == ".") {
      if (_output.contains(".")) {
        print("Already conatains a decimal");
        return;
      } else {
        _output = _output + bText;
      }

      // checks if the equal button is clicked
    } else if (bText == "=") {
      num2 = double.parse(output);

      // adds the numbers if the opperand is +
      if (operand == "+") {
        _output = (num1 + num2).toString();
      }

      // adds the numbers if the opperand is +
      if (operand == "-") {
        _output = (num1 - num2).toString();
      }

      // multiplies the numbers if the opperand is ×
      if (operand == "×") {
        _output = (num1 * num2).toString();
      }

      // divides the numbers if the opperand is ÷
      if (operand == "÷") {
        _output = (num1 / num2).toString();
      }

      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else {
      _output = _output + bText;
    }

    print(_output);

    setState(() {
      output = double.parse(_output).toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        color: cBlack,
        child: Padding(
          padding: EdgeInsets.all(queryData.size.width * 0.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              SizedBox(height: queryData.size.width * 0.19),
              Container(
                width: queryData.size.width,
                height: queryData.size.width * 0.27,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    output,
                    style: TextStyle(
                      fontSize: queryData.size.width * 0.23,
                      color: cWhite,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),

// ================================== Buttons Area ===============================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildButton('C', cGrey, cBlack, queryData, false),
                  _buildButton('+/-', cGrey, cBlack, queryData, false),
                  _buildButton('%', cGrey, cBlack, queryData, false),
                  _buildButton('÷', cOrange, cWhite, queryData, true),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildButton('7', cDGrey, cWhite, queryData, true),
                  _buildButton('8', cDGrey, cWhite, queryData, true),
                  _buildButton('9', cDGrey, cWhite, queryData, true),
                  _buildButton('×', cOrange, cWhite, queryData, true),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildButton('4', cDGrey, cWhite, queryData, true),
                  _buildButton('5', cDGrey, cWhite, queryData, true),
                  _buildButton('6', cDGrey, cWhite, queryData, true),
                  _buildButton('-', cOrange, cWhite, queryData, true),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildButton('1', cDGrey, cWhite, queryData, true),
                  _buildButton('2', cDGrey, cWhite, queryData, true),
                  _buildButton('3', cDGrey, cWhite, queryData, true),
                  _buildButton('+', cOrange, cWhite, queryData, true),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildButton('0', cDGrey, cWhite, queryData, true),
                  _buildButton('.', cDGrey, cWhite, queryData, true),
                  _buildButton('=', cOrange, cWhite, queryData, true),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

// ================================== Building A Button Area ================================
  Widget _buildButton(String bText, Color bColor, Color tColor,
      MediaQueryData queryData, bool isBold) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: queryData.size.width * 0.02),
      child: RaisedButton(
        color: bColor,
        onPressed: () {
          _buttonPressed(bText);
        },
        shape: CircleBorder(),
        child: Padding(
          padding: EdgeInsets.all(queryData.size.width * 0.05),
          child: Text(
            bText,
            style: TextStyle(
              fontSize: queryData.size.width * 0.08,
              fontWeight: isBold ? FontWeight.bold : null,
              color: tColor,
            ),
          ),
        ),
      ),
    );
  }
}
