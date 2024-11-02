import 'package:flutter/material.dart';
import 'package:fitx/colors.dart';
import 'sign_up.dart';

void main() {
  runApp(onboard());
}

class onboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/loginimage.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Overlay Gradient
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.1),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Welcome to FitX!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: AppColors.seedwhite,
                      fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: 8,),


                Text(
                  'Monitor and Master Your Fitness Journey',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.seedwhite,
                    fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(height: 20),

                // Get Started Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.palelime,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Get started',
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColors.blueblack,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),

                // Login Link
                TextButton(
                  onPressed: () {

                  },
                  child: Text(
                    'Already have an account? Log in',
                    style: TextStyle(
                      color: AppColors.seedwhite,
                      fontWeight: FontWeight.w400,

                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

