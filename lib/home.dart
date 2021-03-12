import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 250,
                height: 120,
                child: Image.asset("5.png"),
              ),
          SizedBox(
            width: 250.0,
            child: ScaleAnimatedTextKit(

              text: [
                "Good Job !!!",

              ],
              textStyle: TextStyle(
                  fontSize: 70.0,
                  fontFamily: "Canterbury"
              ),
              textAlign: TextAlign.start,
            ),
          ),
              SizedBox(
                width: 250,
                height: 150,
                child: Image.network(
                    "https://media.tenor.com/images/29adc75d24e31591f507b5bc90531aca/tenor.gif"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
