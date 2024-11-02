import 'package:fitx/colors.dart';
import 'package:flutter/material.dart';
import 'package:fitx/profile_2.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() {
  runApp(Homescreen2());
}




class Homescreen2 extends StatelessWidget {
  const Homescreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
       backgroundColor: AppColors.homecolor,
       appBar: PreferredSize(preferredSize: Size(double.infinity, 110),
           child: Container(
             decoration: BoxDecoration(
                 color: AppColors.homeappbar,
               borderRadius: BorderRadius.vertical(bottom: Radius.circular(40))
             ),
             height: double.infinity,

             child: Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 18,top: 45,bottom: 8),
                   child: GestureDetector(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Profilescreen(),));

                     },
                     child: CircleAvatar(
                       backgroundColor: AppColors.palelime,
                       backgroundImage: AssetImage('images/profilepic.png'),
                       radius: 35,
                     ),
                   ),
                 ),
                 SizedBox(width: 20,height: 50,),
                 Container(
                   child:Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       SizedBox(height:70,),
                       Text('Hello Lester!',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 20),),
                       SizedBox(height: 3,),
                       Text("Let's Start your day",style: TextStyle(color: AppColors.seedgrey,
                           fontSize: 13),)
                     ],
                   ),
                 ),
                 SizedBox(width: 65,),

                 Padding(
                   padding: const EdgeInsets.only(top: 40),
                   child: Container(
                     decoration: BoxDecoration(
                       color: AppColors.outerspace,
                       shape: BoxShape.circle
                     ),
                     child: IconButton(onPressed: (){}, icon: Icon(Icons.emoji_events_outlined,color: AppColors.palelime,)




                     ),
                   ),
                 )],
             ),

           )),

         body: SingleChildScrollView(
           scrollDirection: Axis.vertical,
           child: Padding(
             padding: const EdgeInsets.all(5.0),
             child: Column(
               children: [
                 Container(
                   height: 100,
                   width: double.infinity,
                   decoration: BoxDecoration(
                     color: AppColors.outerspace,
                     borderRadius: BorderRadius.all(Radius.circular(42))
                   ),
                   child: Padding(
                     padding: const EdgeInsets.only(left: 20,top: 15,bottom: 10),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(3.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,

                             children: [
                               Text('Steps',style: TextStyle(color: AppColors.seedwhite,fontSize: 20,fontWeight: FontWeight.w300),),
                               SizedBox(height: 5,),

                               Row(

                                 crossAxisAlignment: CrossAxisAlignment.end,
                                 children: [
                                   Text('6400',style: TextStyle(color: AppColors.seedwhite,fontSize: 20,fontWeight: FontWeight.w600),),


                                   Text('/ 16 000',style: TextStyle(color: AppColors.seedwhite,fontSize: 14,fontWeight: FontWeight.w100),),



                                 ],
                               )
                             ],
                           ),
                         ),
                         SizedBox(
                           width: 30,
                         ),
                         Stack(
                           alignment: Alignment.center,
                           children: [


                             ClipRRect(
                               borderRadius: BorderRadius.circular(20),
                               child: Container(
                                 height: 20,
                                 width: 170,
                                 child: LinearProgressIndicator(
                                   value: 0.4,
                                   backgroundColor: AppColors.midgrey,
                                   valueColor: AlwaysStoppedAnimation<Color>(AppColors.palelime),
                                 ),
                               ),
                             ),
                             Text(
                               '40%',
                               style: TextStyle(
                                 color: AppColors.palelime,
                                 fontSize: 12,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                           ],
                         ),




                       ],
                     ),
                   ),

                 )
                 // start from here for daily activity
             ,
                 Padding(
                   padding: const EdgeInsets.only(top: 5,left: 3,right: 3),
                   child: Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(42),
                       color: AppColors.outerspace,
                     ),
                     height: 250,
                     width: double.infinity,
                     child: Padding(
                       padding: const EdgeInsets.only(top: 25,left: 20,bottom: 10,right: 15),
                       child: Row(
                         children: [
                           Column(//1st coloumn
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text('Daily Activity',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: AppColors.seedwhite),),
                               SizedBox(height: 12,),

                               Container(
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,

                                   children: [
                                     Text('Steps',style: TextStyle(color: AppColors.seedgrey,fontSize: 15),),
                                     Row(
                                       crossAxisAlignment: CrossAxisAlignment.end,
                                       children: [
                                         Text('6400',style: TextStyle(color: AppColors.palelime,fontSize: 20),),
                                         Text('/ 16 000',style: TextStyle(color: AppColors.palelime,fontSize: 13),)

                                       ],
                                     )
                                   ],
                                 ),

                               ),
                               SizedBox(height: 2,),
                               Container(
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,

                                   children: [
                                     Text('Calories',style: TextStyle(color: AppColors.seedgrey,fontSize: 15),),
                                     Row(
                                       crossAxisAlignment: CrossAxisAlignment.end,
                                       children: [
                                         Text('440',style: TextStyle(color: AppColors.palelime,fontSize: 20),),
                                         Text('/ 680 Cal',style: TextStyle(color: AppColors.palelime,fontSize: 13),)

                                       ],
                                     )
                                   ],
                                 ),

                               ),
                               SizedBox(height: 2,),
                               Container(
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,

                                   children: [
                                     Text('Water',style: TextStyle(color: AppColors.seedgrey,fontSize: 15),),
                                     Row(
                                       crossAxisAlignment: CrossAxisAlignment.end,
                                       children: [
                                         Text('1.8',style: TextStyle(color: AppColors.palelime,fontSize: 20),),
                                         Text('/ 2.5 L',style: TextStyle(color: AppColors.palelime,fontSize: 13),)

                                       ],
                                     )
                                   ],
                                 ),

                               ),
                               // steps container --default container

                             ],

                           ),

                           Padding(
                             padding: const EdgeInsets.only(top: 8,bottom: 5,left: 11,),
                             child: Column(//2nd coloumn
                               children: [
                                 SizedBox(height:28,),

                                Container(

                                 height: 163,
                                  width: 183,

                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CircularPercentIndicator(
                                        radius: 35,
                                        lineWidth: 15,
                                        percent: 0.75,
                                        backgroundColor: AppColors.midgrey,
                                        progressColor: AppColors.palelime.withOpacity(0.4),
                                        circularStrokeCap: CircularStrokeCap.round,
                                        center: null,
                                        animation: true,
                                        animationDuration: 800,



                                      ),


                                      CircularPercentIndicator(radius: 55,lineWidth: 15,
                                          percent: 0.75,
                                          backgroundColor: AppColors.midgrey,
                                          progressColor: AppColors.palelime.withOpacity(0.7),
                                          circularStrokeCap: CircularStrokeCap.round,
                                          center: null,
                                          animation: true,
                                          animationDuration: 800

                                      ),



                                      CircularPercentIndicator(radius: 75,lineWidth: 15,
                                          percent: 0.75,
                                          backgroundColor: AppColors.midgrey,
                                          progressColor: AppColors.palelime,
                                          circularStrokeCap: CircularStrokeCap.round,
                                          center: null,
                                          animation: true,
                                          animationDuration: 800
                                      )
                                    ],

                                  ),
                                ),








                               ],


                             ),
                           ),

                         ],
                       ),
                     ),







                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 5,left: 3,right: 3),
                   child: Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(42),
                       color: AppColors.outerspace
                     ),
                     height: 250,
                     width: double.infinity,

                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(top: 10,left: 20,bottom: 0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Text('Workouts',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: AppColors.seedwhite),),
                               SizedBox(width: 150,),
                               TextButton(onPressed: (){}, child: Text('See all',style: TextStyle(color: AppColors.palelime,fontWeight: FontWeight.w300,fontSize: 12),)),

                             ],
                           ),
                         ),
                         //1st container
                         Container(
                           child: Padding(
                             padding: const EdgeInsets.only(bottom: 5,left: 15,right: 15),
                             child: Container(
                               height: 55,
                               width: double.infinity,
                               decoration: BoxDecoration(
                                 color: AppColors.homecolor.withOpacity(0.4),
                                 borderRadius: BorderRadius.circular(90)
                               ),
                               child: Row(
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(top: 2,bottom: 2,left: 10,right: 10),
                                     child: Container(
                                       height: 40,
                                       width: 40,

                                       decoration: BoxDecoration(
                                         shape: BoxShape.circle,
                                         color: AppColors.blueblack
                                       ),
                                       child: Icon(Icons.directions_walk_outlined,color: AppColors.palelime,size: 25,),
                                     ),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.all(2.0),
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Text('Indoor Walk',style: TextStyle(color: AppColors.seedgrey,fontWeight: FontWeight.w300,fontSize: 15),),
                                         Text('2.44 km',style: TextStyle(color: AppColors.seedwhite,fontSize: 18,fontWeight: FontWeight.w400),),


                                       ],
                                     ),
                                   ),
                                   SizedBox(width: 95,),
                                   TextButton(onPressed: (){}, child: Text('Today',style: TextStyle(color: AppColors.seedgrey,fontSize: 14,fontWeight: FontWeight.w300),))

                                 ],
                               ),
                             ),
                           ),
                         ),

                         //2nd container
                         Container(
                           child: Padding(
                             padding: const EdgeInsets.only(bottom: 5,left: 15,right: 15),
                             child: Container(
                               height: 55,
                               width: double.infinity,
                               decoration: BoxDecoration(
                                   color: AppColors.homecolor.withOpacity(0.4),
                                   borderRadius: BorderRadius.circular(90)
                               ),
                               child: Row(
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(top: 2,bottom: 2,left: 10,right: 10),
                                     child: Container(
                                       height: 40,
                                       width: 40,

                                       decoration: BoxDecoration(
                                           shape: BoxShape.circle,
                                           color: AppColors.blueblack
                                       ),
                                       child: Icon(Icons.directions_bike_outlined,color: AppColors.palelime,size: 25,),
                                     ),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.all(2.0),
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Text('Cycling',style: TextStyle(color: AppColors.seedgrey,fontWeight: FontWeight.w300,fontSize: 15),),
                                         Text('4.44 km',style: TextStyle(color: AppColors.seedwhite,fontSize: 18,fontWeight: FontWeight.w400),),


                                       ],
                                     ),
                                   ),
                                   SizedBox(width: 106,),
                                   TextButton(onPressed: (){}, child: Text('Today',style: TextStyle(color: AppColors.seedgrey,fontSize: 14,fontWeight: FontWeight.w300),))

                                 ],
                               ),
                             ),
                           ),
                         ),

                         //3rd container
                         Container(
                           child: Padding(
                             padding: const EdgeInsets.only(bottom: 5,left: 15,right: 15),
                             child: Container(
                               height: 55,
                               width: double.infinity,
                               decoration: BoxDecoration(
                                   color: AppColors.homecolor.withOpacity(0.4),
                                   borderRadius: BorderRadius.circular(90)
                               ),
                               child: Row(
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(top: 2,bottom: 2,left: 10,right: 10),
                                     child: Container(
                                       height: 40,
                                       width: 40,

                                       decoration: BoxDecoration(
                                           shape: BoxShape.circle,
                                           color: AppColors.blueblack
                                       ),
                                       child: Icon(Icons.directions_run_outlined,color: AppColors.palelime,size: 25,),
                                     ),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.all(2.0),
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Text('Morning Running',style: TextStyle(color: AppColors.seedgrey,fontWeight: FontWeight.w300,fontSize: 15),),
                                         Text('3.12 km',style: TextStyle(color: AppColors.seedwhite,fontSize: 18,fontWeight: FontWeight.w400),),


                                       ],
                                     ),
                                   ),
                                   SizedBox(width: 55,),
                                   TextButton(onPressed: (){}, child: Text('Today',style: TextStyle(color: AppColors.seedgrey,fontSize: 14,fontWeight: FontWeight.w300),))

                                 ],
                               ),
                             ),
                           ),
                         )




                       ],
                     ),
                   ),
                 )





               ],

                  ),
           ),
         ),

       ),






    );
  }
}
