import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share3na/Screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isAnimated = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _isAnimated = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height,
        width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text(
            'مرحباً في شارعنا',
            style: TextStyle(
                fontFamily: 'MyArabicFont',
                color: Colors.black,
                fontWeight: FontWeight.bold),
          )),
      body: Stack(
        children: [
          AnimatedPositioned(
              top: height * .15,
              right: _isAnimated ? width * .23 : -width * .5,
              width: width * .5,
              duration: Duration(seconds: 1),
              child: Image.asset('assets/images/app_icon.png')),
          AnimatedPositioned(
              bottom: height * .15,
              left: _isAnimated ? width * .23 : -width * .5,
              width: width * .9,
              height: height * .07,
              duration: Duration(seconds: 1),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) => HomeScreen()));
                    },
                    child: Image.asset('assets/images/google.png'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(02652451486),
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(width * .03),
                        elevation: 9),
                  ),
                  SizedBox(
                    width: width * .033,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.facebook,
                      size: width * .1,
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(02652451486),
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(width * .03),
                        elevation: 9),
                  ),
                  SizedBox(
                    width: width * .033,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      CupertinoIcons.phone_circle,
                      size: width * .1,
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(02652451486),
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(width * .03),
                        elevation: 9),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
