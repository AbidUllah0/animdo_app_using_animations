import 'package:animdo_app_animations/Views/HomeScreen/components/animatedContainer.dart';
import 'package:animdo_app_animations/Views/HomeScreen/components/animation_controller_star.dart';
import 'package:animdo_app_animations/Views/HomeScreen/components/tweens_for_animation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            TweensForAnimation(),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomAnimatedContainer(),
                  StarAnimationController(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
