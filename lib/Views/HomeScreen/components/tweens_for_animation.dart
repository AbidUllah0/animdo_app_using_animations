import 'package:flutter/material.dart';

//background blue changes
class TweensForAnimation extends StatefulWidget {
  const TweensForAnimation({super.key});

  @override
  State<TweensForAnimation> createState() => _TweensForAnimationState();
}

class _TweensForAnimationState extends State<TweensForAnimation> {
  final Tween<double> _backTween = Tween<double>(begin: 0.0, end: 1.0);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      curve: Curves.easeInToLinear,
      tween: _backTween,
      duration: Duration(seconds: 3),
      builder: (_context, double _scale, _child) {
        return Transform.scale(
          scale: _scale,
          child: _child,
        );
      },
      child: Container(
        color: Colors.blue,
      ),
    );
  }
}
