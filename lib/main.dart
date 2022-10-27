import 'package:flutter/material.dart';
import 'package:portfolio_web/Experience.dart';
import 'package:portfolio_web/Projects.dart';
import 'package:portfolio_web/About_Me.dart';
import 'package:portfolio_web/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
                          Home(),
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

Color is_color_home=Color(0xFFfdc965);
Color is_color_about=Colors.white;
Color is_color_projects=Colors.white;
Color is_color_experience=Colors.white;
Color is_color_resume=Colors.white;
Color is_color_contact=Colors.white;

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {


  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20.00),
        decoration: BoxDecoration(
          color: Color(0XFF323232),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //Home
            GestureDetector(
              onTap: (){
                setState(() {
                  is_color_home=Color(0xFFfdc965);
                  is_color_about=Colors.white;
                  is_color_projects=Colors.white;
                  is_color_experience=Colors.white;
                  is_color_resume=Colors.white;

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyApp()),
                  );
                });
              },
              child: Text(
                'Home',
                style: TextStyle(
                  color: is_color_home,
                  fontSize: 20.00,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            //About Me
            GestureDetector(
              onTap: (){
                setState(() {
                  is_color_home=Colors.white;
                  is_color_about=Color(0xFFfdc965);
                  is_color_projects=Colors.white;
                  is_color_experience=Colors.white;
                  is_color_resume=Colors.white;
                  is_color_contact=Colors.white;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const About()),
                  );

                });

              },
              child: Text(
                'About',
                style: TextStyle(
                  color: is_color_about,
                  fontSize: 20.00,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            //Projects
            GestureDetector(
              onTap: (){
                setState(() {
                  is_color_home=Colors.white;
                  is_color_about=Colors.white;
                  is_color_projects=Color(0xFFfdc965);
                  is_color_experience=Colors.white;
                  is_color_resume=Colors.white;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyProjects()),
                  );

                });
              },
              child: Text(
                'Projects',
                style: TextStyle(
                  color: is_color_projects,
                  fontSize: 20.00,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            //Experience
            GestureDetector(
              onTap: (){
                setState(() {
                  is_color_home=Colors.white;
                  is_color_about=Colors.white;
                  is_color_projects=Colors.white;
                  is_color_experience=Color(0xFFfdc965);
                  is_color_resume=Colors.white;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyExperience()),
                  );
                });
                About_Me();
              },
              child: Text(
                'Experience',
                style: TextStyle(
                  color: is_color_experience,
                  fontSize: 20.00,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            //Resume
            GestureDetector(
              onTap: (){
                setState(() {
                  is_color_home=Colors.white;
                  is_color_about=Colors.white;
                  is_color_projects=Colors.white;
                  is_color_experience=Colors.white;
                  is_color_resume=Color(0xFFfdc965);
                  //TODO: ADD RESUME
                });
              },
              child: Text(
                'Resume',
                style: TextStyle(
                  color: is_color_resume,
                  fontSize: 20.00,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

          ],
        ),

    );

  }
}

