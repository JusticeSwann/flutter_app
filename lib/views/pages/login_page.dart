
import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/hero_widget.dart';

TextEditingController  controller = TextEditingController();

class LoginPage extends StatefulWidget{
  const LoginPage ({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState(){
    super.initState();
    print('init state');
    
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            HeroWidget(title:'Login'),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder()
              ),
              onEditingComplete: () {
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}