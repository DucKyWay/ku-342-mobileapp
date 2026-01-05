import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.notoSansThaiTextTheme(
          ThemeData.light().textTheme,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _input = "";
  String _output = "";
  bool _canClickNum = true;

  void _onButtonPressed(String text) {
    setState(() {
      void reset() {
        _input = "";
        _output = "";
        _canClickNum = true;
        return ;
      }
      if (text == 'C') {
        reset();
      }
      
      if (text == '<=') {
        if (_input.isNotEmpty) {
          _input = _input.substring(0, _input.length - 1);
        }
        return;
      }

      if (text == '=') {
        try {
          Parser p = Parser();
          Expression exp = p.parse(_input);
          ContextModel cm = ContextModel();
          _output =
              exp.evaluate(EvaluationType.REAL, cm).toString();
          _canClickNum = false;
        } catch (e) {
          _output = 'Error';
          _canClickNum = false;
        }
      } 
      
      const operators = ['+', '-', '*', '/'];
      bool isOperator(String s) => operators.contains(s);
      if (isOperator(text)) {
        if (_input.isEmpty) return;
        if (isOperator(_input.characters.last)) {
          _input = _input.substring(0, _input.length - 1) + text;
          return;
        }
      }

      if(_canClickNum && text != "C") {
        _input += text;
      }
    });
  }

  Widget _button(String text, {bool isOp = false}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: FilledButton(
          style: FilledButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 30),
            textStyle: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600)
          ).copyWith(
            backgroundColor: isOp
              ? WidgetStateProperty.all(
                  Theme.of(context).colorScheme.surfaceContainerHighest,
                )
              : null,
          ),
          onPressed: () => _onButtonPressed(text),
          child: Text(text),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Calculator")),
      body: SafeArea(
        child: Column(
          children: [
            // display
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                alignment: Alignment.bottomRight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Text(
                        _input,
                        style: TextStyle(
                          fontSize: 28,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Text(
                        _output,
                        style: TextStyle(
                          fontSize: 64,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // keypad
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      _button('7', isOp: false),
                      _button('8', isOp: false),
                      _button('9', isOp: false),
                      _button('/', isOp: true),
                    ],
                  ),
                  Row(
                    children: [
                      _button('4', isOp: false),
                      _button('5', isOp: false),
                      _button('6', isOp: false),
                      _button('*', isOp: true),
                    ],
                  ),
                  Row(
                    children: [
                      _button('1', isOp: false),
                      _button('2', isOp: false),
                      _button('3', isOp: false),
                      _button('-', isOp: true),
                    ],
                  ),
                  Row(
                    children: [
                      _button('0', isOp: false),
                      _button('C', isOp: true),
                      _button('=', isOp: true),
                      _button('+', isOp: true),
                    ],
                  ),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
