import 'package:flutter/material.dart';
import 'package:flutter_application/views/pages/home_page.dart';
import 'package:flutter_application/widgets/hero_widget.dart';

class CoursePage extends StatelessWidget{
  const CoursePage(
    {
      super.key,
      required this.title,
    }
  );

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              HeroWidget(
                title: 'Course Page',
              ),
              
            ],
          )
        ),
      ),
    );
  }
}