import 'package:flutter/material.dart';

Color primaryColorLight = Color(0xFFE9E9E9);
Color primaryColorDark = Colors.grey[850];
Color darkColorStart = Colors.grey[700];
Color buttonColor = Color(0xFF7379E5);

List<BoxShadow> customShadowClock = [
  BoxShadow(
    color: Colors.white.withOpacity(0.5),
    blurRadius: 2,
    offset: Offset(-2, -2),
    spreadRadius: 1.6,
  ),
  BoxShadow(
    color: Color(0xFF7E7E7E).withOpacity(0.2),
    blurRadius: 2,
    offset: Offset(2, 2),
    spreadRadius: 1.6,
  ),
];
List<BoxShadow> customShadowClockD = [
  BoxShadow(
    color: Color(0xFF3B3A3A).withOpacity(0.5),
    blurRadius: 2,
    offset: Offset(-2, -2),
    spreadRadius: 1.6,
  ),
  BoxShadow(
    color: Color(0xFF171616).withOpacity(0.2),
    blurRadius: 2,
    offset: Offset(2, 2),
    spreadRadius: 2,
  ),
];

List<BoxShadow> customShadowClockLight = [
  BoxShadow(
    color: Colors.white.withOpacity(0.5),
    blurRadius: 10,
    offset: Offset(-6, -6),
    spreadRadius: 6,
  ),
  BoxShadow(
    color: Color(0xFF7E7E7E).withOpacity(0.2),
    blurRadius: 10,
    offset: Offset(6, 6),
    spreadRadius: 6,
  ),
];
List<BoxShadow> customShadowClockDark = [
  BoxShadow(
    color: Color(0xFF363535).withOpacity(0.3),
    blurRadius: 8,
    offset: Offset(-6, -6),
    spreadRadius: 5,
  ),
  BoxShadow(
    color: Color(0xFF171616).withOpacity(0.2),
    blurRadius: 10,
    offset: Offset(6, 6),
    spreadRadius: 6,
  ),
];
