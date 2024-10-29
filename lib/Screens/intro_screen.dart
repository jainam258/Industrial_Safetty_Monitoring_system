import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:industrial_safetty_monitoring/Screens/welcome_Screen.dart';
class Introscreen extends StatefulWidget {
  const Introscreen({super.key});

  @override
  State<Introscreen> createState() => _IntroscreenState();
}

class _IntroscreenState extends State<Introscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
       child:  IntroductionScreen(
          pages: [
            PageViewModel(
              title: "Industrial Safrtty Monitoring System\n IOT Based Flutter Project",
              body: "you can see Monitoring of Sensor\nWith this app.\n It detect Fire, Smoke, CNG Ges, Air Quality",
              image: Lottie.asset("assets/images/pageview1.json"),
            ),
            PageViewModel(
              title: "Solution for big Industry",
              body: "this app is For monitoring  Industrial Safetty System , And showing Value of Sensor.\nThis Saystem is for protect Workers with\n fire , smoke etc...",
              image: Image.asset("assets/images/pageview2.jpg"),
            ),
            PageViewModel(
              title: "Safetty With Industry",
              body: "You can Protect Youer Industri with This,\nYou can detect Smoke, Fire, CNG\nin your Working area",
              image: Image.asset("assets/images/5995353.jpg"),
            )
          ],
          showSkipButton: true,
          showNextButton: false,
          skip: const Text("Skip"),
          done: const Text("Done"),
          onDone: () {
            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
                builder: (BuildContext Context) => WelcomeScreen()), (
                Route<dynamic> route) => false);
            // On button pressed
          },
        ),
      ),
    );
  }
}

