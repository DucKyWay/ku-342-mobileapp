import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final List<String> month = [
  "มกราคม",
  "กุมภาพันธ์",
  "มีนาคม",
  "เมษายน",
  "พฤษภาคม",
  "มิถุนายน",
  "กรกฎาคม",
  "สิงหาคม",
  "กันยายน",
  "ตุลาคม",
  "พฤศจิกายน",
  "ธันวาคม",
];

class Exercise01 extends StatelessWidget {
  const Exercise01({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    String currentMonth = month[now.month - 1];
    String hour = now.hour.toString().padLeft(2, '0');
    String minute = now.minute.toString().padLeft(2, '0');

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.blue,
          padding: const EdgeInsets.all(15),
          child: Container(
            color: Colors.green,
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  '$hour:$minute',
                  style: GoogleFonts.prompt(
                    textStyle: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                Text(
                  '${now.day} $currentMonth ${now.year + 543}',
                  style: GoogleFonts.prompt(
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                Text(
                  'Merry คริสต์มาส',
                  style: const TextStyle(
                    fontFamily: 'Graphik Thai Loop',
                    fontSize: 20,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                ),
                Text(
                  'Greetings, planet!',
                  style: TextStyle(
                    fontSize: 40,
                    foreground: Paint()
                      ..shader = ui.Gradient.linear(
                        const Offset(0, 20),
                        const Offset(150, 20),
                        <Color>[Colors.red, Colors.yellow],
                      ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
