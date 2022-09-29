import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Analog clock"),
        ),
        body: Container(
          color: Colors.yellow,
          padding: EdgeInsets.all(50),
          child: Center(
            child: AnalogClock(
              decoration: BoxDecoration(
                border: Border.all(width: 5.0, color: Colors.black),
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              width: 800.0,
              isLive: true,
              hourHandColor: Colors.white,
              minuteHandColor: Colors.white,
              showSecondHand: true,
              numberColor: Colors.white,
              showAllNumbers: true,
              showDigitalClock: true,
              digitalClockColor: Colors.white,
              datetime: DateTime(2022, 9, 29, 10, 16),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                child: null,
              ),
              ListTile(
                title: Text("Ashutosh Rajput"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
