import 'package:flutter/material.dart';
import 'package:flutter_application/data/notifiers.dart';
import 'package:flutter_application/views/widget_tree.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget{
  const AppBarWidget({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context){
    return ValueListenableBuilder(
      valueListenable: darkModeSelectNotifier, 
      builder: (context, darkModeSelecter, child) {
        return AppBar(
          title: const Text('Flutter_Map'),
          centerTitle: true,
          actions: [
            IconButton(
              isSelected: darkModeSelecter,
              onPressed: () {
                darkModeSelectNotifier.value = !darkModeSelecter;
              }, 
              icon: brightnessMode[darkModeSelecter ? 1:0]
            )
          ],
        );
      },
    );
  }
}