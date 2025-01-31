import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget{
  const HeroWidget(
    {
      super.key,
      required this.title
    }
  );

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Hero(
          tag: 'hero1', 
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              image: AssetImage('assets/images/bg.jpg'),
              color: Colors.teal,
              colorBlendMode: BlendMode.darken,
            )
          )
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.normal,
            letterSpacing: 20,
            color: Colors.white54,
          )
        )
      ],
    );
  }
}