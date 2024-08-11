import 'package:flutter/material.dart';
import 'package:myapp/utils/images.dart';

class Circles extends StatelessWidget {
  const Circles({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 200,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Image.asset(Images.circle_bg),
        ],
      ),
    );
  }
}

class CirclesTwo extends StatelessWidget {
  const CirclesTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 200,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Image.asset(Images.circle_bg2),
        ],
      ),
    );
  }
}

class CirclesThree extends StatelessWidget {
  const CirclesThree({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 200,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Image.asset(Images.circle_bg3),
        ],
      ),
    );
  }
}
