import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class Clock extends StatefulWidget {
  @override
  _ClockState createState() => _ClockState();
  const Clock({
    Key key,
    @required this.darkMode,
    @required this.lightColor,
    @required this.dial,
    @required this.custShadow,
  }) : super(key: key);
  final bool darkMode;
  final Color lightColor;
  final Color dial;
  final List<BoxShadow> custShadow;
}

class _ClockState extends State<Clock> {
  double minutesAngle = 0;
  double secondsAngle = 0;
  double hoursAngle = 0;
  Timer timer;

  Color colorInitial;

  Color colorSecondary;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(milliseconds: 500), (timer) {
      final now = DateTime.now();

      setState(() {
        secondsAngle = (pi / 30) * now.second;
        minutesAngle = pi / 30 * now.minute;
        hoursAngle = (pi / 6 * now.hour) + (pi / 45 * minutesAngle);
        if (widget.darkMode) {
          // colorInitial =
        } else {
          colorSecondary = Color(0xFFF6F6F6);
          colorInitial = Color(0xFFE1DDDD);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius:
                BorderRadius.circular(MediaQuery.of(context).size.width / 2),
            boxShadow: widget.custShadow,
            color: widget.lightColor,
            // gradient: LinearGradient(
            //   begin: Alignment.bottomRight,
            //   end: Alignment.topLeft,
            //   colors: [colorInitial, colorSecondary],
            // ),
            // border: Border.all(
            //   width: 1.0,
            //   color: Colors.grey[400],
            // ),
          ),
          child: Stack(
            children: [
              //12
              Container(
                child: Container(
                  height: 7,
                  width: 4,
                  decoration: BoxDecoration(
                    color: widget.dial,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                alignment: Alignment.topCenter,
              ),
              //3
              Container(
                child: Container(
                  height: 4,
                  width: 7,
                  decoration: BoxDecoration(
                    color: widget.dial,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                alignment: Alignment.centerRight,
              ),
              //6
              Container(
                child: Container(
                  height: 7,
                  width: 4,
                  decoration: BoxDecoration(
                    color: widget.dial,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                alignment: Alignment.bottomCenter,
              ),
              //9
              Container(
                child: Container(
                  height: 4,
                  width: 7,
                  decoration: BoxDecoration(
                    color: widget.dial,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                alignment: Alignment.centerLeft,
              ),
            ],
          ),
        ),
        //Dot
        Container(
          child: Container(
            height: 6,
            width: 6,
            decoration: BoxDecoration(
              color: widget.dial,
              borderRadius: BorderRadius.circular(3),
            ),
          ),
          alignment: Alignment.center,
        ),

        //Minutes
        Transform.rotate(
          angle: minutesAngle,
          child: Container(
            child: Container(
              height: MediaQuery.of(context).size.width / 3.6,
              width: 3,
              decoration: BoxDecoration(
                color: widget.dial,
                borderRadius: BorderRadius.circular(1),
              ),
            ),
            alignment: Alignment(0, -0.50),
          ),
        ),
        //Hours
        Transform.rotate(
          angle: hoursAngle,
          child: Container(
            child: Container(
              height: MediaQuery.of(context).size.width / 4.9,
              width: 4,
              decoration: BoxDecoration(
                color: widget.dial,
                borderRadius: BorderRadius.circular(1),
              ),
            ),
            alignment: Alignment(0, -0.30),
          ),
        ),
        //Seconds
        Transform.rotate(
          angle: secondsAngle,
          child: Container(
            child: Container(
              height: MediaQuery.of(context).size.width / 3,
              width: 2,
              decoration: BoxDecoration(
                color: widget.dial,
                borderRadius: BorderRadius.circular(1),
              ),
            ),
            alignment: Alignment(0, -0.45),
          ),
        ),
      ],
      alignment: Alignment.center,
    );
  }
}
