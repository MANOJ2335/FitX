import 'package:fitx/colors.dart';
import 'package:flutter/material.dart';
import 'workout_subpage/Abs_.dart';
import 'workout_subpage/Arm_.dart';
import 'workout_subpage/Chest_.dart';
import 'workout_subpage/Leg_.dart';
import 'workout_subpage/Shoulder_and_back_.dart';

void main() {
  runApp((w1()));
}

class w1 extends StatelessWidget {
  const w1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.blueblack,
        appBar: AppBar(
          backgroundColor: AppColors.homeappbar,
          title: Center(child: Text('Browse',style: TextStyle(color: AppColors.seedwhite,fontWeight: FontWeight.w400,fontSize: 19),)),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 105,
                width: double.infinity,

                decoration: BoxDecoration(
                    color: AppColors.homeappbar,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))
                ),
                child:Column(
                  children: [
                    SizedBox(height: 10,),
                    Container(
                      height:35,
                        width: double.infinity,
                        child: togglebuttons()
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Divider(thickness: 1,height: 30,color: AppColors.seedwhite,),
                    ),


                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.filter_alt_outlined,color: AppColors.seedwhite,size: 15,),
                              Text('Filters',style: TextStyle(color: AppColors.seedwhite,fontSize: 15,fontWeight: FontWeight.w300),)

                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 5,right: 5),
                          child: Container(height: 20,width: 2,color: AppColors.seedwhite,),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.arrow_upward,color: AppColors.seedwhite,size: 15,),
                              Icon(Icons.arrow_downward,color: AppColors.seedwhite,size: 15,),
                              Text(' Sorting',style: TextStyle(color: AppColors.seedwhite,fontSize: 15,fontWeight: FontWeight.w300),)

                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5,right: 5),
                          child: Container(height: 20,width: 2,color: AppColors.seedwhite,),
                        ),
                        Container(
                          child: Row(
                            children: [

                              Icon(Icons.search,color: AppColors.seedwhite,size: 15,),
                              Text(' Search',style: TextStyle(color: AppColors.seedwhite,fontSize: 15,fontWeight: FontWeight.w300),)

                            ],
                          ),
                        ),








                      ],
                    )
                  ],
                )


              ),


                 Container(
                  height: 600,


                  width: double.infinity,
                  color: AppColors.blueblack,
                   child: GridView.count(
                     primary: false,
                     padding: const EdgeInsets.all(10),
                     crossAxisSpacing: 10,
                     mainAxisSpacing: 10,
                     childAspectRatio: 0.83,
                     crossAxisCount: 2,
                     children: <Widget>[
                       GestureDetector(
                         onTap: (){Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => AbsWorkoutScreen()),
                         );},
                         child: Container(
                           decoration: BoxDecoration(
                             color: Colors.black12,
                             borderRadius: BorderRadius.circular(16),
                           ),
                           child: ClipRRect(
                             borderRadius: BorderRadius.circular(16),
                             child: Stack(
                               children: [
                                 // Background image
                                 Positioned.fill(
                                   child: Image.asset(
                                     'images/w1_abs.jpg', // Ensure this path is correct
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                                 // Dark overlay for the lower section (from text to icons)
                                 Positioned(
                                   bottom: 0,
                                   left: 0,
                                   right: 0,
                                   child: Container(
                                     height: 70, // Adjust this height to cover from text to icons
                                     color: Colors.black54.withOpacity(0.7), // Dark transparent color
                                   ),
                                 ),
                                 // Bookmark icon
                                 Positioned(
                                   top: 8,
                                   right: 8,
                                   child: Icon(
                                     Icons.bookmark_outline,
                                     color: Colors.white,
                                   ),
                                 ),
                                 // Text and icons overlay
                                 Positioned(
                                   bottom: 8,
                                   left: 8,
                                   right: 8,
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     mainAxisSize: MainAxisSize.min,
                                     children: [
                                       Text(
                                         'ABS BEGINNER',
                                         style: TextStyle(
                                           color: AppColors.seedwhite,
                                           fontWeight: FontWeight.w400,
                                           fontSize: 12.5,
                                         ),
                                       ),
                                       SizedBox(height: 4),
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           Row(
                                             children: [
                                               Icon(Icons.timer, color: Colors.white, size: 12),
                                               SizedBox(width: 4),
                                               Text(
                                                 '35 min',
                                                 style: TextStyle(color: AppColors.seedwhite,
                                                     fontWeight: FontWeight.w400, fontSize: 11),
                                               ),
                                             ],
                                           ),
                                           Row(
                                             children: [
                                               Icon(Icons.fitness_center, color: Colors.white, size: 12),
                                               SizedBox(width: 4),
                                               Text(
                                                 'Easy',
                                                 style: TextStyle(color: AppColors.seedwhite,
                                                     fontWeight: FontWeight.w400,
                                                     fontSize: 11),
                                               ),
                                             ],
                                           ),
                                         ],
                                       ),
                                     ],
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ),
                       ),
                       GestureDetector(
                         onTap: (){Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => ArmsWorkoutScreen()),
                         );},
                         child: Container(
                           decoration: BoxDecoration(
                             color: Colors.black12,
                             borderRadius: BorderRadius.circular(16),
                           ),
                           child: ClipRRect(
                             borderRadius: BorderRadius.circular(16),
                             child: Stack(
                               children: [
                                 // Background image
                                 Positioned.fill(
                                   child: Image.asset(
                                     'images/w1_arms.jpg', // Ensure this path is correct
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                                 // Dark overlay for the lower section (from text to icons)
                                 Positioned(
                                   bottom: 0,
                                   left: 0,
                                   right: 0,
                                   child: Container(
                                     height: 70, // Adjust this height to cover from text to icons
                                     color: Colors.black54.withOpacity(0.7), // Dark transparent color
                                   ),
                                 ),
                                 // Bookmark icon
                                 Positioned(
                                   top: 8,
                                   right: 8,
                                   child: Icon(
                                     Icons.bookmark_outline,
                                     color: Colors.white,
                                   ),
                                 ),
                                 // Text and icons overlay
                                 Positioned(
                                   bottom: 8,
                                   left: 8,
                                   right: 8,
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     mainAxisSize: MainAxisSize.min,
                                     children: [
                                       Text(
                                         'ARM BEGINNER',
                                         style: TextStyle(
                                           color: AppColors.seedwhite,
                                           fontWeight: FontWeight.w400,
                                           fontSize: 12.5,
                                         ),
                                       ),
                                       SizedBox(height: 4),
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           Row(
                                             children: [
                                               Icon(Icons.timer, color: Colors.white, size: 12),
                                               SizedBox(width: 4),
                                               Text(
                                                 '35 min',
                                                 style: TextStyle(color: AppColors.seedwhite,
                                                     fontWeight: FontWeight.w400, fontSize: 11),
                                               ),
                                             ],
                                           ),
                                           Row(
                                             children: [
                                               Icon(Icons.fitness_center, color: Colors.white, size: 12),
                                               SizedBox(width: 4),
                                               Text(
                                                 'Easy',
                                                 style: TextStyle(color: AppColors.seedwhite,
                                                     fontWeight: FontWeight.w400,
                                                     fontSize: 11),
                                               ),
                                             ],
                                           ),
                                         ],
                                       ),
                                     ],
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ),
                       ),
                       GestureDetector(
                         onTap: (){Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => chestWorkoutScreen()),
                         );},
                         child: Container(
                           decoration: BoxDecoration(
                             color: Colors.black12,
                             borderRadius: BorderRadius.circular(16),
                           ),
                           child: ClipRRect(
                             borderRadius: BorderRadius.circular(16),
                             child: Stack(
                               children: [
                                 // Background image
                                 Positioned.fill(
                                   child: Image.asset(
                                     'images/w1_chest.jpg', // Ensure this path is correct
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                                 // Dark overlay for the lower section (from text to icons)
                                 Positioned(
                                   bottom: 0,
                                   left: 0,
                                   right: 0,
                                   child: Container(
                                     height: 70, // Adjust this height to cover from text to icons
                                     color: Colors.black54.withOpacity(0.7), // Dark transparent color
                                   ),
                                 ),
                                 // Bookmark icon
                                 Positioned(
                                   top: 8,
                                   right: 8,
                                   child: Icon(
                                     Icons.bookmark_outline,
                                     color: Colors.white,
                                   ),
                                 ),
                                 // Text and icons overlay
                                 Positioned(
                                   bottom: 8,
                                   left: 8,
                                   right: 8,
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     mainAxisSize: MainAxisSize.min,
                                     children: [
                                       Text(
                                         'CHEST BEGINNER',
                                         style: TextStyle(
                                           color: AppColors.seedwhite,
                                           fontWeight: FontWeight.w400,
                                           fontSize: 12.5,
                                         ),
                                       ),
                                       SizedBox(height: 4),
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           Row(
                                             children: [
                                               Icon(Icons.timer, color: Colors.white, size: 12),
                                               SizedBox(width: 4),
                                               Text(
                                                 '35 min',
                                                 style: TextStyle(color: AppColors.seedwhite,
                                                     fontWeight: FontWeight.w400, fontSize: 11),
                                               ),
                                             ],
                                           ),
                                           Row(
                                             children: [
                                               Icon(Icons.fitness_center, color: Colors.white, size: 12),
                                               SizedBox(width: 4),
                                               Text(
                                                 'Easy',
                                                 style: TextStyle(color: AppColors.seedwhite,
                                                     fontWeight: FontWeight.w400,
                                                     fontSize: 11),
                                               ),
                                             ],
                                           ),
                                         ],
                                       ),
                                     ],
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ),
                       ),
                       GestureDetector(
                         onTap: (){Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => legWorkoutScreen()),
                         );},
                         child: Container(
                           decoration: BoxDecoration(
                             color: Colors.black12,
                             borderRadius: BorderRadius.circular(16),
                           ),
                           child: ClipRRect(
                             borderRadius: BorderRadius.circular(16),
                             child: Stack(
                               children: [
                                 // Background image
                                 Positioned.fill(
                                   child: Image.asset(
                                     'images/w1_leg.jpg', // Ensure this path is correct
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                                 // Dark overlay for the lower section (from text to icons)
                                 Positioned(
                                   bottom: 0,
                                   left: 0,
                                   right: 0,
                                   child: Container(
                                     height: 70, // Adjust this height to cover from text to icons
                                     color: Colors.black54.withOpacity(0.7), // Dark transparent color
                                   ),
                                 ),
                                 // Bookmark icon
                                 Positioned(
                                   top: 8,
                                   right: 8,
                                   child: Icon(
                                     Icons.bookmark_outline,
                                     color: Colors.white,
                                   ),
                                 ),
                                 // Text and icons overlay
                                 Positioned(
                                   bottom: 8,
                                   left: 8,
                                   right: 8,
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     mainAxisSize: MainAxisSize.min,
                                     children: [
                                       Text(
                                         'LEG BEGINNER',
                                         style: TextStyle(
                                           color: AppColors.seedwhite,
                                           fontWeight: FontWeight.w400,
                                           fontSize: 12.5,
                                         ),
                                       ),
                                       SizedBox(height: 4),
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           Row(
                                             children: [
                                               Icon(Icons.timer, color: Colors.white, size: 12),
                                               SizedBox(width: 4),
                                               Text(
                                                 '35 min',
                                                 style: TextStyle(color: AppColors.seedwhite,
                                                     fontWeight: FontWeight.w400, fontSize: 11),
                                               ),
                                             ],
                                           ),
                                           Row(
                                             children: [
                                               Icon(Icons.fitness_center, color: Colors.white, size: 12),
                                               SizedBox(width: 4),
                                               Text(
                                                 'Easy',
                                                 style: TextStyle(color: AppColors.seedwhite,
                                                     fontWeight: FontWeight.w400,
                                                     fontSize: 11),
                                               ),
                                             ],
                                           ),
                                         ],
                                       ),
                                     ],
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ),
                       ),
                       GestureDetector(
                         onTap: (){Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => shoulderWorkoutScreen()),
                         );},
                         child: Container(
                           decoration: BoxDecoration(
                             color: Colors.black12,
                             borderRadius: BorderRadius.circular(16),
                           ),
                           child: ClipRRect(
                             borderRadius: BorderRadius.circular(16),
                             child: Stack(
                               children: [
                                 // Background image
                                 Positioned.fill(
                                   child: Image.asset(
                                     'images/w1_shoulder.jpg', // Ensure this path is correct
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                                 // Dark overlay for the lower section (from text to icons)
                                 Positioned(
                                   bottom: 0,
                                   left: 0,
                                   right: 0,
                                   child: Container(
                                     height: 70, // Adjust this height to cover from text to icons
                                     color: Colors.black54.withOpacity(0.7), // Dark transparent color
                                   ),
                                 ),
                                 // Bookmark icon
                                 Positioned(
                                   top: 8,
                                   right: 8,
                                   child: Icon(
                                     Icons.bookmark_outline,
                                     color: Colors.white,
                                   ),
                                 ),
                                 // Text and icons overlay
                                 Positioned(
                                   bottom: 8,
                                   left: 8,
                                   right: 8,
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     mainAxisSize: MainAxisSize.min,
                                     children: [
                                       Text(
                                         'SHOULDERS & BACK BEGINNER',
                                         style: TextStyle(
                                           color: AppColors.seedwhite,
                                           fontWeight: FontWeight.w400,
                                           fontSize: 12.5,
                                         ),
                                       ),
                                       SizedBox(height: 4),
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           Row(
                                             children: [
                                               Icon(Icons.timer, color: Colors.white, size: 12),
                                               SizedBox(width: 4),
                                               Text(
                                                 '35 min',
                                                 style: TextStyle(color: AppColors.seedwhite,
                                                     fontWeight: FontWeight.w400, fontSize: 11),
                                               ),
                                             ],
                                           ),
                                           Row(
                                             children: [
                                               Icon(Icons.fitness_center, color: Colors.white, size: 12),
                                               SizedBox(width: 4),
                                               Text(
                                                 'Easy',
                                                 style: TextStyle(color: AppColors.seedwhite,
                                                     fontWeight: FontWeight.w400,
                                                     fontSize: 11),
                                               ),
                                             ],
                                           ),
                                         ],
                                       ),
                                     ],
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ),
                       ),

                       //2nd container


                     ],
                   ),


                ),



            ],



          ),
        ),
      ),





    );
  }
}

class togglebuttons extends StatefulWidget {
  const togglebuttons({super.key});

  @override
  State<togglebuttons> createState() => _togglebuttonsState();
}

class _togglebuttonsState extends State<togglebuttons> {
  int selectedIndex =0;
  final List<String>buttons =[
    'Workouts',
    'Fitness',
    'Plans',
    'Training',

  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(buttons.length, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              borderRadius: BorderRadius.circular(15.0),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                decoration: BoxDecoration(
                  color: selectedIndex == index
                      ? AppColors.palelime // Pale lime color
                      : AppColors.homeappbar, // Darker background color
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  buttons[index],
                  style: TextStyle(
                    color: selectedIndex == index
                        ? AppColors.blueblack // Text color when selected
                        : AppColors.seedwhite, // Text color when not selected
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          );
        }),
      )




    );
  }
}

