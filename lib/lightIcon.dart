import 'package:flutter/material.dart';

// ignore: camel_case_types
class lightIcon extends StatefulWidget {
  @override
  lightIconState createState() => lightIconState();

  const lightIcon({
    Key key,
    @required this.iconColor,
    @required this.backColor,
    @required this.darkTheme,
  }) : super(key: key);

  final Color iconColor;
  final Color backColor;
  final List<BoxShadow> darkTheme;
}

// ignore: camel_case_types
class lightIconState extends State<lightIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(7.0),
        boxShadow: widget.darkTheme,
        color: widget.backColor,
        // gradient: LinearGradient(
        //   begin: Alignment.topLeft,
        //   end: Alignment.bottomRight,
        //   colors: [widget.backColor, frontColor],
        // )
        // border: Border.all(
        //   width: 1.0,
        //   color: Colors.grey[400],
        // ),
      ),
      child: Icon(
        Icons.lightbulb_outline,
        color: widget.iconColor,
      ),
    );
  }
}
