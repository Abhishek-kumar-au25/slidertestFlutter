import 'package:flutter/material.dart';
import 'package:live_wired_walkthrough/assets.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.img2),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
