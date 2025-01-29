import 'package:flutter/material.dart';
import 'package:flutter_application/views/widget_tree.dart';

class HeroWidget extends StatelessWidget{
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'hero1', 
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          'assets/images/bg.jpeg',
          color: Colors.teal,
          colorBlendMode: BlendMode.darken,
        ),
      )
    );
  }
}