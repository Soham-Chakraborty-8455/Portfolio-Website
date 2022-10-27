import 'package:flutter/material.dart';
import 'package:portfolio_web/main.dart';


//stateless part(const)
class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF121212),
        body: SafeArea(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF1e1e1f),
                        borderRadius: BorderRadius.all(
                          Radius.circular(40.0),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/profile-pic.png'),
                              maxRadius: 70.00,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              'Soham Chakraborty',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.00,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Card(
                            color: Color(0XFF323232),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'Flutter Developer',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5.00),
                          Divider(
                            color: Colors.white,
                            indent: 70.00,
                            endIndent: 70.00,
                          ),
                          SizedBox(height: 5.00),
                          //Email
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              //Phone Number
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Card(
                                    color: Color(0XFF323232),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.phone,
                                        color: Color(0xFFfdc965),
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  SizedBox(width: 5.00,),
                                  Text(
                                    '+91 8617257358',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.00,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 5.00),
                              //Email
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Card(
                                    color: Color(0XFF323232),
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.email_outlined,
                                        color: Color(0xFFfdc965),
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  SizedBox(width: 5.00,),
                                  Text(
                                    'schakraborty8455@gmail.com',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.00,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 5.00),
                              //Location
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Card(
                                    color: Color(0XFF323232),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.location_on_outlined,
                                        color: Color(0xFFfdc965),
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  SizedBox(width: 5.00,),
                                  Text(
                                    'Kolkata, West Bengal, India',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.00,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 10.00),

                            ],
                          ),
                          Divider(
                            color: Colors.white,
                            indent: 70.00,
                            endIndent: 70.00,
                          ),
                          SizedBox(height: 20.00),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Image(
                                image: AssetImage('images/github-outline.png'),
                                color: Color(0xFFfdc965),
                                height: 30.00,
                                width: 30.00,
                              ),
                              Image(
                                image: AssetImage('images/linkedin-outline.png'),
                                color: Color(0xFFfdc965),
                                height: 30.00,
                                width: 30.00,
                              ),
                              Image(
                                image: AssetImage('images/leetcode-outline.png'),
                                color: Color(0xFFfdc965),
                                height: 30.00,
                                width: 30.00,
                              ),
                            ],
                          ),
                          SizedBox(height: 20.00),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 40.00, 20.00, 40.00),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Homepage(),
                          SizedBox(height: 10.00),
                          About_Me(),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF1e1e1f),
                        image: DecorationImage(
                          image: AssetImage('images/home-bg.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(40.0),
                        ),
                      ),
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}




//stateful part
class About_Me extends StatefulWidget {
  const About_Me({Key? key}) : super(key: key);

  @override
  State<About_Me> createState() => _About_MeState();
}

class _About_MeState extends State<About_Me> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          //I am a second year student pursuing Bachelors of Technology in Computer Science Engineering from,
          child: Expanded(
            child: RichText(
              text: TextSpan(
                text: 'I am a ',
                style: TextStyle(color: Colors.white, fontSize: 15.00),
                children: const <TextSpan>[
                  TextSpan(text: 'second year student', style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xFFfdc965),fontSize: 16.00)),
                  TextSpan(text: ' pursuing '),
                  TextSpan(text: 'Bachelors of Technology', style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xFFfdc965),fontSize: 16.00)),
                  TextSpan(text: ' in '),
                  TextSpan(text: 'Computer Science Engineering', style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xFFfdc965),fontSize: 16.00)),
                  TextSpan(text: ' from,'),
                ],
              ),
            ),
          ),
        ),
        //Institute of Engineering and Managemenet, Kolkata
        Text(
          'Institute of Engineering and Management, Kolkata (2021-2025)',
          style: TextStyle(
              color: Colors.white,
              fontSize: 15.00,
              fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20.00),

        //Techstacks

        Text('My Tech Stack',style: TextStyle(color: Colors.pinkAccent, fontSize: 22.00, fontWeight: FontWeight.bold),),
        SizedBox(height: 10.00),

        //Languages

        Text('Languages',style: TextStyle(color: Colors.white, fontSize: 18.00, fontWeight: FontWeight.w500),),
        SizedBox(height: 10.00),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image(
                image: NetworkImage('https://raw.githubusercontent.com/isocpp/logos/master/cpp_logo.png'),
              height: 40.00,
              width: 40.00,
            ),
            Image(
              image: AssetImage('images/C.png'),
              height: 40.00,
              width: 40.00,
            ),
            Image(
              image: AssetImage('images/python.png'),
              height: 40.00,
              width: 40.00,
            ),
            Image(
              image: AssetImage('images/Dart_logo.png'),
              height: 40.00,
              width: 40.00,
            ),
          ],
        ),
        SizedBox(height: 10.00),
        //Frameworks
        Text('Frameworks/Libraries',style: TextStyle(color: Colors.white, fontSize: 18.00, fontWeight: FontWeight.w500),),
        SizedBox(height: 10.00),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image(
              image: AssetImage('images/flutter.png'),
              height: 40.00,
              width: 40.00,
            ),
            Image(
              image: AssetImage('images/firebase.png'),
              height: 50.00,
              width: 50.00,
            ),
            Image(
              image: AssetImage('images/django.png'),
              height: 60.00,
              width: 60.00,
            ),
            Image(
              image: AssetImage('images/flask.png'),
              height: 60.00,
              width: 60.00,
              color: Colors.white,
            ),
            Image(
              image: AssetImage('images/opencv.png'),
              height: 40.00,
              width: 40.00,
            ),
          ],
        ),
        SizedBox(height: 10.00),

        //Databases and Tools
        Text('Databases and Tools',style: TextStyle(color: Colors.white, fontSize: 18.00, fontWeight: FontWeight.w500),),
        SizedBox(height: 10.00),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image(
              image: AssetImage('images/Sqlite.png'),
              height: 60.00,
              width: 60.00,
            ),
            Image(
              image: AssetImage('images/SQLAlchemy.png'),
              height: 80.00,
              width: 80.00,
            ),
            Image(
              image: AssetImage('images/MySql.png'),
              height: 60.00,
              width: 60.00,
            ),
            Image(
              image: AssetImage('images/Gradle.png'),
              height: 60.00,
              width: 60.00,
            ),
          ],
        ),
        SizedBox(height: 10.00),

      ],
    );
  }
}
