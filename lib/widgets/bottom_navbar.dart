import 'package:flutter/material.dart';

class BottomNavbarWidget extends StatefulWidget{
  const BottomNavbarWidget({super.key});

  @override
  State<BottomNavbarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavbarWidget>{
  int selectedIndex = 0;
  @override

  Widget build(BuildContext context){
    return NavigationBar(
      destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
      ],
      onDestinationSelected: (int value) {
        setState(() {
          selectedIndex = value;
        });
      },
      selectedIndex: selectedIndex,
    );
  }
}