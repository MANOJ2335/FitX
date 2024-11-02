import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'colors.dart';
import 'package:fitx/page_1.dart';
import 'homepage.dart';
void main() {
  runApp(loginpage());
}

class loginpage extends StatelessWidget {
  loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.customColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(children: [
                Image.asset(
                  'images/mascularman.jpeg',
                  fit: BoxFit.fitHeight,
                  height: 280,
                ),
                Container(
                  height: 280,
                  decoration: BoxDecoration(
                      color: AppColors.customColor.withOpacity(0.98),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, AppColors.customColor])),
                )
              ]),
              SizedBox(
                height: 1,
              ),
              Text(
                'FitX',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                    color: Colors.white),
              ),
              Text(
                'slogan,',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail),
                    prefixIconColor: Colors.white,
                    labelText: "EMAIL ADDRESS",
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    prefixIconColor: Colors.white,
                    labelText: "PASSWORD",
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey),
                    )),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>homepageext()));
                }, child: Text('Log-in'),),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont have account ?',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(onPressed: () {}, child: Text('Create account'))
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '-Or Sign Up with-',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(FontAwesomeIcons.google
                            ,

                              size: 30,
                            ))),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.apple,
                              color: Colors.black,
                              size: 30,
                            ))),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.facebook_outlined,
                              color: Colors.blue,
                              size: 30,
                            ))),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
