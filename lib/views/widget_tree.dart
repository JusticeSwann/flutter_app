import 'package:flutter/material.dart';
import 'package:flutter_application/views/pages/home_page.dart';
import 'package:flutter_application/views/pages/profile_page.dart';
import 'package:flutter_application/widgets/bottom_navbar.dart';

List<Widget> pages = [
  HomePage(),
  ProfilePage(),
];

class WidgetTree extends StatelessWidget{
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter_Map'),
          centerTitle: true,
        ),
        body: pages.elementAt(0),
        bottomNavigationBar:BottomNavbarWidget(),
      );
  }
}