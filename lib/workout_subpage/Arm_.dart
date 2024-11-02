import 'package:fitx/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '_buildTile.dart';

void main() {
  runApp(ArmsWorkoutApp());
}

class ArmsWorkoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ArmsWorkoutScreen(),
    );
  }
}

class ArmsWorkoutScreen extends StatelessWidget {
  final BuildTile tile = BuildTile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueblack,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Stack(
            children: [
              Opacity(
                opacity: 0.7,
                child: Image.asset(
                  'images/arms_bg_image.jpg',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 40,
                left: 16,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {},
                ),
              ),
              Positioned(
                top: 40,
                right: 16,
                child: IconButton(
                  icon: Icon(Icons.more_vert, color: Colors.white),
                  onPressed: () {},
                ),
              ),
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
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: AppColors.seedwhite),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Edit',style: TextStyle(color: AppColors.palelime),),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              children: [
                tile.buildExerciseTile(
                  lottieAsset: 'lottie/jumping_jacks.json',
                  name: 'Jumping Jacks',
                  details: '00:20',
                ),
                SizedBox(height: 10),
                tile.buildExerciseTile(
                  lottieAsset: 'lottie/Abdominal_crunches.json',
                  name: 'Abdominal Crunches',
                  details: 'x16',
                ),
                SizedBox(height: 10),
                tile.buildExerciseTile(
                  lottieAsset: 'lottie/Push_ups.json',
                  name: 'Push Ups',
                  details: 'x20',
                ),
                SizedBox(height: 10),
                tile.buildExerciseTile(
                  lottieAsset: 'lottie/Squats.json',
                  name: 'Squats',
                  details: 'x16',
                ),
                SizedBox(height: 10),
                tile.buildExerciseTile(
                  lottieAsset: 'lottie/lateral_dumbell_raises.json',
                  name: 'Lateral Dumbell raises',
                  details: 'x16',
                ),
                SizedBox(height: 10),
                tile.buildExerciseTile(
                  lottieAsset: 'lottie/wide_arm_pushups.json',
                  name: 'Wide arm Pushups',
                  details: 'x16',
                ),
                SizedBox(height: 10),
                tile.buildExerciseTile(
                  lottieAsset: 'lottie/cat_cow_stretch.json',
                  name: 'Cat Cow Stretch',
                  details: '00:20',
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.palelime,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text(
                'Start',
                style: TextStyle(fontSize: 18, color: AppColors.blueblack),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
