import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/hero_widget.dart';

class ExpandDemoPage extends StatelessWidget{
  const ExpandDemoPage(
    {
      super.key,
    }
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
              )
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.green,
              )
            )
          ],
        )
      ),
    );
  }
}