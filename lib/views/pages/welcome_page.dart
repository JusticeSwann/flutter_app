import 'package:flutter/material.dart';
import 'package:flutter_application/data/notifiers.dart';
import 'package:flutter_application/views/pages/login_page.dart';
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
            HeroWidget(title:'Welcome'),
            SizedBox(height: 20,),
            FittedBox(
              child: Text(
                'Flutter Map',
                style: TextStyle(
                  fontSize: 50,
                  letterSpacing: 50
                ),
              ),
            ),
            SizedBox(height: 20,),
            FilledButton(
              onPressed: () {
                selectedPageNotifier.value = 0;
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return WidgetTree();
                  },),
                );
              },
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 50)
              ),
              child: Text('Welcome'),
            ),
            TextButton(
              onPressed: () {
                selectedPageNotifier.value = 0;
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  },),
                );
              }, 
              style: TextButton.styleFrom(
                minimumSize: Size(double.infinity, 50)
              ),
              child: Text('Login')
            )
          ],
        )
      )
    );
  }
}