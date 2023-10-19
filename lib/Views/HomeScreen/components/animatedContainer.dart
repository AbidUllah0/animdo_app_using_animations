import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Provider/provider.dart';

//button conainer changes

class CustomAnimatedContainer extends StatefulWidget {
  @override
  State<CustomAnimatedContainer> createState() =>
      _CustomAnimatedContainerState();
}

class _CustomAnimatedContainerState extends State<CustomAnimatedContainer> {
  // double _btnRadius = 200;

  @override
  Widget build(BuildContext context) {
    //without using  consumer
    //final _provider = Provider.of<AnimationProvider>(context, listen: true);
    return Consumer<AnimationProvider>(
      builder: (context, value, chils) {
        return InkWell(
          onTap: () {
            // using consumer
            value.animateContainer();
            //without using consumer _provider.animateContainer();
          },
          child: AnimatedContainer(
            height: value.btnRadius,
            //_provider.btnRadius,
            width: value.btnRadius,
            //_provider.btnRadius,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(value.btnRadius),
              //(_provider.btnRadius),
              color: Colors.purple,
            ),
            curve: Curves.bounceInOut,
            duration: Duration(seconds: 2),
          ),
        );
      },
    );
  }
}
