
import 'package:flutter/material.dart';
import 'package:flutter_application/views/widget_tree.dart';
import 'package:flutter_application/widgets/hero_widget.dart';

class LoginPage extends StatefulWidget{
  const LoginPage (
    {
      super.key,
      required this.title,
    }
  );

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController  emailController = TextEditingController(text: '123');
  TextEditingController  passwordController = TextEditingController(text: '456');

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  final String email = '123';
  final String password = '456';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              HeroWidget(title:widget.title),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  hintText: 'Email'
                ),
                onEditingComplete: () {
                  setState(() {
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  hintText: 'Password'
                ),
                onEditingComplete: () {
                  setState(() {
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  onLoginPress();
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 60.0),
                ),
                   
                child: Text(widget.title)
              )
            ],
          ),
        ),
      ),
    );
  }
  void onLoginPress(){
    if (emailController.text == email && passwordController.text == password){
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return WidgetTree();
          },
        ),
        (route) => false,
      );
    }
  }
}