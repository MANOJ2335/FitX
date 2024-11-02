import 'package:fitx/colors.dart';
import 'package:flutter/material.dart';
import 'package:fitx/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignupPage(),
    );
  }
}

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueblack,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(color: AppColors.seedwhite),
                    ),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {

                      },
                      child: Text(
                        "Log in",
                        style: TextStyle(
                          color: AppColors.palelime,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Text(
                  "Welcome to FitX!",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: AppColors.seedwhite
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Create an account to save your workout & activity progress.",
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.seedgrey,
                  ),
                ),
                SizedBox(height: 30),
                // Form fields
                TextField(
                  style: TextStyle(color: AppColors.seedwhite),
                  decoration: InputDecoration(
                    labelText: 'Full name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  style: TextStyle(color: AppColors.seedwhite),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  style: TextStyle(color: AppColors.seedwhite),
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  style: TextStyle(color: AppColors.seedwhite),
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Confirm password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "By continuing, I agree to fitness Terms of Service and acknowledge the Privacy Policy.",
                  style: TextStyle(fontSize: 12, color: AppColors.seedgrey),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                // Continue button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>homepageext()));
                      // Add continue action here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.palelime,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Continue",
                      style: TextStyle(fontSize: 16,color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Or divider
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: AppColors.seedwhite,
                        thickness: 0.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text("or",style: TextStyle(color: AppColors.seedwhite),),
                    ),
                    Expanded(
                      child: Divider(
                        color: AppColors.seedwhite,
                        thickness: 0.5,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: (){},
                        icon: Container(
                      height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)

                        ),
                        child: Center(child: Icon(Icons.apple,size:28,color: Colors.black,)))),
                    SizedBox(width: 5,),
                    IconButton(
                      icon: Icon(Icons.facebook_sharp,size:40,color: Colors.blueAccent,
                      ),
                      onPressed: () {

                      },
                    ),
                    SizedBox(width: 5,),
                    IconButton(
                      icon: Image.asset('images/google (1).png',

                      height: 40,
                        width: 40
                      ),
                      onPressed: () {

                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
