import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Image(image: AssetImage('images/Developer.png'), height: 180.00),
            SizedBox(height: 20.00,),
            Text(
              'Hi There!! 👋🏻 ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.00,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10.00),
            RichText(
              text: TextSpan(
                text: 'I\'M ',
                style: TextStyle(color: Colors.white, fontSize: 35.00),
                children: const <TextSpan>[
                  TextSpan(text: 'SOHAM CHAKRABORTY', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pinkAccent,fontSize: 35.00)),
                ],
              ),
            ),
            SizedBox(height: 20.00,),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('Flutter Developer', textStyle: TextStyle(color: Colors.pinkAccent, fontSize: 30.00, fontWeight: FontWeight.w500),speed: Duration(milliseconds: 120)),
                TypewriterAnimatedText('Python Backend Developer', textStyle: TextStyle(color: Colors.pinkAccent, fontSize: 30.00, fontWeight: FontWeight.w500),speed: Duration(milliseconds: 120)),
                TypewriterAnimatedText('Problem Solver', textStyle: TextStyle(color: Colors.pinkAccent, fontSize: 30.00, fontWeight: FontWeight.w500),speed: Duration(milliseconds: 120)),
                TypewriterAnimatedText('Open Source Contributor', textStyle: TextStyle(color: Colors.pinkAccent, fontSize: 30.00, fontWeight: FontWeight.w500),speed: Duration(milliseconds: 120)),
              ],
            ),
            SizedBox(height: 40.00,),
          ],
        ),
    );
  }
}