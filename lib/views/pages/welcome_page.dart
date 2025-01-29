import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application/data/notifiers.dart';
import 'package:flutter_application/views/widget_tree.dart';
import 'package:flutter_application/widgets/hero_widget.dart';

class WelcomePage extends StatelessWidget{
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeroWidget(),
            FilledButton(
              onPressed: () {
                selectedPageNotifier.value = 0;
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return WidgetTree();
                  },
                ),
              );
            }, 
            child: Text('Login'))
          ],
        )
      )
    );
  }
}