import 'package:flutter/material.dart';
import 'package:flutter_application/data/notifiers.dart';
import 'package:flutter_application/data/prefs.dart';
import 'package:flutter_application/views/pages/settings_page.dart';
import 'package:flutter_application/views/widget_tree.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
          title: const Text('Not Justice App'),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) {
                      return SettingsPage(title: 'Settings',);
                    },
                  )
                );
              }, 
              icon: Icon(Icons.settings)),
            IconButton(
              isSelected: darkModeSelecter,
              onPressed: () async {
                darkModeSelectNotifier.value = !darkModeSelecter;
                final SharedPreferences prefs = await SharedPreferences.getInstance();
                await prefs.setBool(KConstants.themeModeKey,darkModeSelectNotifier.value);
                
              }, 
              icon: brightnessMode[darkModeSelecter ? 1:0]
            )
          ],
        );
      },
    );
  }
}