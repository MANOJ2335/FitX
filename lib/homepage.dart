import 'package:fitx/colors.dart';
import 'package:fitx/homepage.dart';
import 'package:flutter/material.dart';
import 'page_1.dart';
import 'login page.dart';
import 'w1.dart';
import 'settings.dart';
import 'Report.dart';
import 'HomeScreen.dart';

void main() {
  runApp(homepage());
}

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homepageext(),
    );
  }
}

class homepageext extends StatefulWidget {
  const homepageext({super.key});

  @override
  State<homepageext> createState() => _homepageextState();
}

class _homepageextState extends State<homepageext> {
  int selectedindex = 0;
  final List<Widget> pages = [Homescreen2(), w1(), Report(), settings()];

  void tapfn(int i) {
    setState(() {
      selectedindex = i;
      print(i);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedindex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_gymnastics),
            label: 'Workouts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Progress',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: selectedindex,
        selectedItemColor: AppColors.palelime,
        backgroundColor: AppColors.blueblack,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: tapfn,
      ),
    );
  }
}
