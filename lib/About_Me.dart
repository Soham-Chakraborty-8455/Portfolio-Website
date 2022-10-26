import 'package:flutter/material.dart';

class About_Me extends StatefulWidget {
  const About_Me({Key? key}) : super(key: key);

  @override
  State<About_Me> createState() => _About_MeState();
}

class _About_MeState extends State<About_Me> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            //'I am a second year student pursuing Bachelors of Technology in Computer Science Engineering from Institute of Engineering and Management, Kolkata',
            children: <Widget>[
              Text(
                'I am a ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.00,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'second year student ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.00,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),

              Text(
                'pursuing ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.00,
                ),
                textAlign: TextAlign.center,
              ),

              Text(
                'Bachelors of Technology ',
                style: TextStyle(
                  color: Color(0xFFfdc965),
                    fontSize: 17.00,
                    fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),

              Text(
                'in ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.00,
                ),
                textAlign: TextAlign.center,
              ),

              Text(
                'Computer Science Engineering ',
                style: TextStyle(
                  color: Color(0xFFfdc965),
                    fontSize: 17.00,
                    fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),

              Text(
                'from ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.00,
                ),
                textAlign: TextAlign.center,
              ),

            ],
          ),
        ),
        Text(
          'Institute of Engineering and Management, Kolkata (2021-2025)',
          style: TextStyle(
            color: Colors.white,
              fontSize: 18.00,
              fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.center,
        ),

      ],
    );
  }
}
