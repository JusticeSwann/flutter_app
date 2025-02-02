import 'package:flutter/material.dart';
import 'package:flutter_application/data/styles.dart';

class ContainerWidget extends StatelessWidget{
  const ContainerWidget(
    {
      super.key,
      required this.containerTitle,
      required this.containerDescription,
    }
  );

  final String containerTitle;
  final String containerDescription;

  @override

  Widget build(BuildContext context){

    

    return  Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 0),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                containerTitle,
                style: KTextStyle.titleTealText,
              ),
              Text(
                containerDescription,
                style: KTextStyle.descriptionText,
              )
            ],
          ),
        ),
      ),
    );
  }
}