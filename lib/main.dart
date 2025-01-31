import 'package:flutter/material.dart';
import 'package:flutter_application/data/notifiers.dart';
import 'package:flutter_application/data/prefs.dart';
import 'package:flutter_application/views/pages/welcome_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}



class _MyAppState extends State<MyApp>{
  @override
  void initState() {
    initThemeMode();
    super.initState();
  }

  void initThemeMode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? repeat = prefs.getBool(KConstants.themeModeKey);
    darkModeSelectNotifier.value = repeat ?? false;
  }
  
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context){
    return ValueListenableBuilder(
      valueListenable: darkModeSelectNotifier, 
      builder: (context, darkmodeSelector, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
              brightness: darkmodeSelector? Brightness.light : Brightness.dark),
          ),
          home: WelcomePage(),
        );
      },
    );
  }
}

