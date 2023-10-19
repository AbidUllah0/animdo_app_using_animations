import 'package:flutter/material.dart';

class StarAnimationController extends StatefulWidget {
  const StarAnimationController({super.key});

  @override
  State<StarAnimationController> createState() =>
      _StarAnimationControllerState();
}

class _StarAnimationControllerState extends State<StarAnimationController>
    with TickerProviderStateMixin {
  AnimationController? _starAnimatedContainer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _starAnimatedContainer = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );
    _starAnimatedContainer!.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _starAnimatedContainer!.view,
      builder: (context, _child) {
        return Transform.rotate(
          angle: _starAnimatedContainer!.value,
          child: _child,
        );
      },
      child: Icon(
        Icons.star,
        size: 100,
        color: Colors.white,
      ),
    );
  }
}
