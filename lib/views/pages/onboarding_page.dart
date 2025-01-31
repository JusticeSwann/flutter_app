
import 'package:flutter/material.dart';
import 'package:flutter_application/views/pages/login_page.dart';
import 'package:lottie/lottie.dart';


class OnboardingPage extends StatelessWidget{
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Lottie.asset('assets/lottie/Animation - 1738250588952.json'),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Flutter Mapp is the best method to learn flutter around!!!',
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context) {
                          return LoginPage(title: 'Register');
                        },
                      )
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 60.0),
                  ),
                     
                  child: Text('Next')
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}