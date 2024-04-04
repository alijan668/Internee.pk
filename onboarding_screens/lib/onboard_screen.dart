import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Onbord_Screen extends StatelessWidget {
  const Onbord_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        next: Text('Next'),
        skip: Text('Skip'),
        done: Text('Done'),
        onDone: () {
          print('hello');
        },
        showSkipButton: true,
        pages: [
          PageViewModel(
              decoration: PageDecoration(imageFlex: 2),
              image: Image.asset("assets/images/image_1.png"),
              titleWidget: Text(
                'Welcome to Surf.',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              bodyWidget: Text(
                  'I provide essential stuff for your ui designs every tuesday!',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w100))),
          PageViewModel(
              decoration: PageDecoration(imageFlex: 2),
              image: Image.asset("assets/images/image_2.png"),
              titleWidget: Text('Design Template uploads Every Tuesday!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              bodyWidget: Text(
                  'Make sure to take a look my uplab profile every tuesday',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w100))),
          PageViewModel(
              decoration: PageDecoration(imageFlex: 2),
              image: Image.asset("assets/images/image_3.png"),
              titleWidget: Text('Download now!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              bodyWidget: Text(
                  'You can follow me if you wantand comment on any to get some freebies',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w100)))
        ],
      ),
    );
  }
}
