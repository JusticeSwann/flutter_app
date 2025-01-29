import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget{
  const SettingsPage({
    super.key,
    required  this.title,
    });

  final String title;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.00;
  String? menuItem = 'e1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },  
        ),
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('SnackBar'),
                      duration: Duration(seconds: 5),
                      behavior: SnackBarBehavior.floating,
                    )
                  );
                }, 
                child: Text('Open SnackBar')
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Alert Box'),
                        content: Text('This is an alert box!'),
                        actions: [
                          FilledButton(
                            onPressed: () {
                              Navigator.pop(context);
                            }, 
                            child: Text('Close'))
                        ],
                      );
                    },
                  );
                }, 
                child: Text('Open Alert Box')
              ),
              Divider(
                color: Colors.teal,
                thickness: 2,
              ),
              DropdownButton(
                value: menuItem,
                items: [
                  DropdownMenuItem(
                    value: 'e1',
                    child: Text('Element 1')
                  ),
                  DropdownMenuItem(
                    value: 'e2',
                    child: Text('Element 2')
                  ),
                  DropdownMenuItem(
                    value: 'e3',
                    child: Text('Element 3')
                  ),
                  DropdownMenuItem(
                    value: 'e4',
                    child: Text('Element 4')
                  ),
                  DropdownMenuItem(
                    value: 'e5',
                    child: Text('Element 5')
                  ),
                ], 
                onChanged: (value) {  
                  setState(() {
                    menuItem = value;
                  });
                },
              ),
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
              ),
              Material(
                child: InkWell(
                  splashColor: Colors.red,
                  onTap: () {
                    print('tapped');
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.white12,
                  ),
                ),
              ),
              
            ]
          ),
        ),
      ),
    );
  }
}