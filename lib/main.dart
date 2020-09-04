import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'clock.dart';
import 'data.dart';
import 'lightIcon.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setEnabledSystemUIOverlays([]);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ClockScreen(),
    );
  }
}

class ClockScreen extends StatefulWidget {
  @override
  _ClockScreenState createState() => _ClockScreenState();
}

class _ClockScreenState extends State<ClockScreen> {
  Color frontColor;
  Color iconColor;
  bool darkTheme = false;
  List<BoxShadow> custShadow;

  List<BoxShadow> custShadowClock;

  @override
  void initState() {
    super.initState();

    setState(() {
      if (darkTheme) {
        frontColor = primaryColorDark;
        iconColor = primaryColorLight;
        custShadow = customShadowClockD;
        custShadowClock = customShadowClockDark;
      } else {
        frontColor = primaryColorLight;
        iconColor = primaryColorDark;
        custShadow = customShadowClock;
        custShadowClock = customShadowClockLight;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: frontColor,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width / 1.4,
          height: MediaQuery.of(context).size.width / 1.4,
          child: Clock(
            darkMode: false,
            lightColor: frontColor,
            dial: iconColor,
            custShadow: custShadowClock,
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                darkTheme = !darkTheme;
                if (darkTheme) {
                  frontColor = primaryColorDark;
                  iconColor = primaryColorLight;
                  custShadow = customShadowClockD;
                  custShadowClock = customShadowClockDark;
                } else {
                  frontColor = primaryColorLight;
                  iconColor = primaryColorDark;
                  custShadow = customShadowClock;
                  custShadowClock = customShadowClockLight;
                }
              });
            },
            child: lightIcon(
              iconColor: iconColor,
              backColor: frontColor,
              darkTheme: custShadow,
            ),
          ),
        ),
      ),
    );
  }
}
