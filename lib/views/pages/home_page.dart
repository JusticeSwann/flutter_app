import 'package:flutter/material.dart';
import 'package:flutter_application/data/constants.dart';
import 'package:flutter_application/views/pages/course_page.dart';
import 'package:flutter_application/widgets/container.dart';
import 'package:flutter_application/widgets/hero_widget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;



class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    print('running init state');
    getData();
    super.initState();
  }

  void getData() async{
    var client = http.Client();
    try {
      var url = Uri.https('catfact.ninja', '/fact');
      var response = await http.get(url);
      print(response.statusCode);
      if (response.statusCode == 200){
        var jsonResponse = convert.jsonDecode(response.body) as Map<String,dynamic>;
        var itemCount = jsonResponse.length;
        print(jsonResponse['fact']);
      } else {
        print('request failed with error code: ${response.statusCode}.');
      }

    } finally {
      client.close();
}
  }

  @override
  Widget build(BuildContext context) {
    print('welcome to the home page');
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            HeroWidget(
              title: 'Home',
              nextPage: CoursePage(title: 'Course Page'),
            ),
            SizedBox(
              height: 10,
            ),
            ...List.generate(
              ContainerValues.containerValues.length,
              (index) {
                final data = ContainerValues.containerValues[index];
                return ContainerWidget(
                  containerTitle: data['title']!,
                  containerDescription: data['description']!,
                );
              },
            )
          ],
        )
      ),
    );
  }
}