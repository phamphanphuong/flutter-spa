import 'package:ebiz_spa/witgets/custom_button.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                text: 'Button 1',
                textColor: Colors.blue,
                backgroundColor: Colors.black,
                onPressed: () {
                  print('Button 1');
                },
              ),
              CustomButton(
                text: 'Button 2',
                textColor: Colors.white,
                backgroundColor: Colors.red,
                onPressed: () {
                  print('Button 2');
                },
              ),
              CustomButton(
                text: 'Button 3',
                textColor: Colors.white,
                backgroundColor: Colors.green,
                onPressed: () {
                  print('Button 3');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
