import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:on_boarding/main.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'Welcome to my app',
          body: 'This is the first Page',
          image: Image.asset('assets/imgs/img.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Welcome to my app',
          body: 'This is the Second Page',
          image: Image.asset('assets/imgs/img_1.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Welcome to my app',
          body: 'This is the Third Page',
          image: Image.asset('assets/imgs/img_2.png'),
          decoration: getPageDecoration(),
        ),
      ],
      done: const Text('done'),
      onDone: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => MyPage(),
          ),
        );
      },
      next: Icon(
        Icons.arrow_forward,
        color: Colors.red,
      ),
      showSkipButton: true,
      skip: const Text("SKIP"),
      onSkip: () {
        print("왜 스킵함?");
      },
      dotsDecorator: DotsDecorator(
        color: Colors.red,
        activeColor: Colors.green,
        activeSize: const Size(22, 10),
        size: const Size(10, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
      ),
      curve: Curves.decelerate,
    );
  }

  PageDecoration getPageDecoration() {
    return PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      bodyTextStyle: TextStyle(
        fontSize: 18,
        color: Colors.blue,
      ),
      imagePadding: EdgeInsets.only(top: 40),
      pageColor: Colors.orange,
    );
  }
}
