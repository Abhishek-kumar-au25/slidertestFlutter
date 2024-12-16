import 'package:flutter/material.dart';
import 'package:live_wired_walkthrough/assets.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
 Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.img3),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}