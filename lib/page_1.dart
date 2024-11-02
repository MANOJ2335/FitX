import 'package:flutter/material.dart';
import 'profile_2.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(homescreen());
}

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.black12,
          leading: Icon(
            Icons.run_circle_outlined,
            color: Colors.white,
            size: 50,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 25,
                )),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profilescreen()));
                },
                icon: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                  size: 25,
                ))
          ],
        ),
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('  People Nearby',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500)),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: null,
                    radius: 30,
                    backgroundColor: Colors.red,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    backgroundImage: null,
                    backgroundColor: Colors.orange,
                    radius: 30,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    backgroundImage: null,
                    backgroundColor: Colors.yellow,
                    radius: 30,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                      backgroundImage: null,
                      backgroundColor: Colors.blue,
                      radius: 30),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                      backgroundImage: null,
                      backgroundColor: Colors.green,
                      radius: 30),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                      backgroundImage: null,
                      backgroundColor: Colors.deepPurple,
                      radius: 30),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                      backgroundImage: null,
                      backgroundColor: Colors.green,
                      radius: 30),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                      backgroundImage: null,
                      backgroundColor: Colors.grey,
                      radius: 30),
                ],
              ),
            ),
            SizedBox(height: 15), //1st box
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                child: Text(
                  'Great! Keep your running pace to reach the first 310 miles',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(20)),
                width: double.infinity,
                height: 50,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(16), // 2nd box
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(20)),
                width: double.infinity,
                height: 200,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  // left box
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20)),
                  height: 180,
                  width: 150,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Heart Rate',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              alignment: Alignment.center,
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                              child: Icon(
                                Icons.heart_broken_rounded,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          Text(
                            '161',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w900),
                          ),
                          Text(
                            'BPM',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 130,
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Text(
                                'AVG     72 BPM',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 0,
                ),
                Container(
                  //right box
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20)),
                  height: 180,
                  width: 150,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '  Calories',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              alignment: Alignment.center,
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                              child: Icon(
                                Icons.heart_broken_rounded,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          Text(
                            '161',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w900),
                          ),
                          Text(
                            'CAL',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 130,
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Text(
                                'AVG     72 CAL',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
