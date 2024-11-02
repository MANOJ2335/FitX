import 'package:fitx/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(AbsWorkoutApp());
}

class AbsWorkoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AbsWorkoutScreen(),
    );
  }
}

class AbsWorkoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueblack,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Stack(
            children: [
              // Background image
              Image.asset(
                'images/black.jpg', // Path to your image
                width: double.infinity,
                height: 200, // Adjust height as needed
                fit: BoxFit.cover,
              ),
              // Positioned back button
              Positioned(
                top: 40,
                left: 16,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {},
                ),
              ),
              // Positioned more options button
              Positioned(
                top: 40,
                right: 16,
                child: IconButton(
                  icon: Icon(Icons.more_vert, color: Colors.white),
                  onPressed: () {},
                ),
              ),
              // Overlay content
              Positioned(
                left: 16,
                bottom: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ABS BEGINNER',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '20 mins · 16 Workouts',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Exercises',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Edit'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              children: [
                _buildExerciseTile(
                  lottieAsset: 'lottie/cat_cow_stretch.json',
                  name: 'Jumping Jacks',
                  details: '00:20',
                ),
                SizedBox(height: 5,),
                _buildExerciseTile(
                  lottieAsset: 'lottie/cat_cow_stretch.json',
                  name: 'Abdominal Crunches',
                  details: 'x16',
                ),SizedBox(height: 5,),
                _buildExerciseTile(
                  lottieAsset: 'lottie/cat_cow_stretch.json',
                  name: 'Russian Twist',
                  details: 'x20',
                ),SizedBox(height: 5,),
                _buildExerciseTile(
                  lottieAsset: 'lottie/cat_cow_stretch.json',
                  name: 'Mountain Climber',
                  details: 'x16',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text(
                'Start',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExerciseTile({required String lottieAsset, required String name, required String details}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      height: 95,
      child: ListTile(
        contentPadding: EdgeInsets.all(16.0),
        leading: Lottie.asset(
          lottieAsset,
          width: 50,
          height: 50,
        ),
        title: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(details),
        trailing: Icon(Icons.swap_horiz),
      ),
    );
  }

}


