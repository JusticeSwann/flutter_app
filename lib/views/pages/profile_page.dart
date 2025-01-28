import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget{
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.00;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder()
            ),
            onEditingComplete: () {
              setState(() {});
            },
          ),
          Text(controller.text),
          CheckboxListTile(
            title: Text('Click Me'),
            value: isChecked, 
            onChanged: (bool? value) {
              setState(() {
                isChecked = value;
              });
            },
          ),
          Switch(
            value: isSwitched, 
            onChanged: (value) => setState(() {
              isSwitched = value;
            }),
          ),
          SwitchListTile(
            title: Text('Switch Me'),
            value: isSwitched, 
            onChanged: (value) => setState(() {
              isSwitched = value;
            }),
          ),
          Slider(
            value: sliderValue,
            max: 100.00,
            divisions: 10, 
            onChanged: (value) => setState(() {
              sliderValue = value;
            }),
          )
        ]
      )
    );
  }
}