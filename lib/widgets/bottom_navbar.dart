import 'package:flutter/material.dart';
import 'package:flutter_application/data/notifiers.dart';

class BottomNavbarWidget extends StatelessWidget{
  const BottomNavbarWidget({super.key});

  @override

  Widget build(BuildContext context){
    return ValueListenableBuilder(valueListenable: selectedPageNotifier, 
      builder: (context, selectedPage, child) {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
          onDestinationSelected: (int value) {
            selectedPageNotifier.value = value;
          },
          selectedIndex: selectedPage,
        );
      },
    );
  }
}
