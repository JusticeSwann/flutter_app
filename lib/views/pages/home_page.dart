import 'package:flutter/material.dart';
import 'package:flutter_application/data/styles.dart';
import 'package:flutter_application/widgets/hero_widget.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            HeroWidget(title: 'Home'),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'This is card content',
                        style: KTextStyle.titleTealText,
                      ),
                      Text(
                        'This is more card content',
                        style: KTextStyle.descriptionText,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}