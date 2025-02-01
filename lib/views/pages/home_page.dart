import 'package:flutter/material.dart';
import 'package:flutter_application/data/constants.dart';
import 'package:flutter_application/views/pages/course_page.dart';
import 'package:flutter_application/views/pages/settings_page.dart';
import 'package:flutter_application/widgets/container.dart';
import 'package:flutter_application/widgets/hero_widget.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            HeroWidget(
              title: 'Home',
              nextPage: CoursePage(title: 'Course Page'),
            ),
            ...List.generate(
              ContainerValues.containerValues.length,
              (index) {
                final data = ContainerValues.containerValues[index];
                return ContainerWidget(
                  containerTitle: data['title']!,
                  containerDescription: data['description']!,
                );
              },
            )
          ],
        )
      ),
    );
  }
}