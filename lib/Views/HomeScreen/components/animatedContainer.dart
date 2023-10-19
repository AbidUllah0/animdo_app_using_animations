import 'package:flutter/material.dart';

//button conainer changes

class CustomAnimatedContainer extends StatefulWidget {
  @override
  State<CustomAnimatedContainer> createState() =>
      _CustomAnimatedContainerState();
}

class _CustomAnimatedContainerState extends State<CustomAnimatedContainer> {
  double _btnRadius = 200;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(
          () {
            _btnRadius += _btnRadius == 200 ? -100 : 100;
          },
        );
      },
      child: AnimatedContainer(
        height: _btnRadius,
        width: _btnRadius,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(_btnRadius),
          color: Colors.purple,
        ),
        curve: Curves.bounceInOut,
        duration: Duration(seconds: 2),
      ),
    );
  }
}
