import 'package:flutter/material.dart';
import 'package:flutter_application/views/pages/welcome_page.dart';

class ProfilePage extends StatelessWidget{
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/logo.png'),
            minRadius: 80.0,
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Justice',
              ),
              VerticalDivider(),
              Text('Swann')
            ],
          ),
          ListTile(
              title: Text('Logout'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return WelcomePage();
                  },
                )
              );
            },
          ),
        ],
      ),
    );
  }
}
