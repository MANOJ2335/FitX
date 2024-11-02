import 'package:fitx/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(settings());
}

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _ReportState();
}

class _ReportState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.blueblack,
        appBar: AppBar(
          title: Text('SETTINGS',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
          backgroundColor: AppColors.raisinblack,

        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,

          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(color: AppColors.raisinblack,borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
                height: 200,
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 17,right: 17),
                      child: TextField(
                        cursorColor: AppColors.palelime,
                        style: TextStyle(color: AppColors.seedwhite),
                        decoration: InputDecoration(
                          labelText: 'Search',labelStyle: TextStyle(color: Colors.white),
                          suffixIcon: Icon(Icons.search,color: AppColors.palelime,),



                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColors.seedwhite)
                          )


                        ),
                      ),
                    ),

                    SizedBox(height: 14),

                    Padding(
                      padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 10),
                      child: Container(
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.palelime,
                          borderRadius: BorderRadius.circular(18)
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 10,),
                            CircleAvatar(
                              backgroundImage: AssetImage('images/profilepic.png'),
                              radius: 35,
                            ),
                            SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 20,),
                                Text('Robert',style: TextStyle(color: Colors.black,fontWeight:FontWeight.w500,fontSize: 20),),
                                SizedBox(height: 7,),
                                Text('@Robert2335@',style: TextStyle(color: AppColors.midgrey,fontSize: 13),)
                              ],
                            ),
                            SizedBox(width: 10,),
                            Padding(
                              padding: const EdgeInsets.only(left: 30,top: 20,bottom: 20,right: 20),
                              child: IconButton(onPressed: (){}, icon: Icon(Icons.border_color_outlined,color: AppColors.raisinblack,size: 30,)),
                            )
                          ],
                        ),

                      ),
                    ),

                  ],
                ),


              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  height:340,
                  width: double.infinity,
                  decoration: BoxDecoration(color: AppColors.outerspace,borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(

                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.account_circle_outlined,color: AppColors.palelime,size: 20,),
                                ),

                                Text('Account Settings',style: TextStyle(color: AppColors.seedwhite,fontSize: 20),),
                                SizedBox(width: 100,),
                                Icon(Icons.arrow_forward_ios,color: AppColors.palelime,size: 20,),
                              ],
                            ),


                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(

                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.security_outlined,color: AppColors.palelime,size: 20,),
                              ),

                              Text('Privacy and Security',style: TextStyle(color: AppColors.seedwhite,fontSize: 20),),
                              SizedBox(width: 70,),
                              Icon(Icons.arrow_forward_ios,color: AppColors.palelime,size: 20,),
                            ],
                          ),


                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(

                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.watch_outlined,color: AppColors.palelime,size: 20,),
                              ),

                              Text('Device Connections',style: TextStyle(color: AppColors.seedwhite,fontSize: 20),),
                              SizedBox(width: 75,),
                              Icon(Icons.arrow_forward_ios,color: AppColors.palelime,size: 20,),
                            ],
                          ),


                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(

                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.notifications_active_outlined,color: AppColors.palelime,size: 20,),
                              ),

                              Text('Notifications',style: TextStyle(color: AppColors.seedwhite,fontSize: 20),),
                              SizedBox(width: 138,),
                              Icon(Icons.arrow_forward_ios,color: AppColors.palelime,size: 20,),
                            ],
                          ),


                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(

                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.language_outlined,color: AppColors.palelime,size: 20,),
                              ),

                              Text('Languages',style: TextStyle(color: AppColors.seedwhite,fontSize: 20),),
                              SizedBox(width: 154,),
                              Icon(Icons.arrow_forward_ios,color: AppColors.palelime,size: 20,),
                            ],
                          ),


                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(

                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.contact_support_outlined,color: AppColors.palelime,size: 20,),
                              ),

                              Text('Help And Support',style: TextStyle(color: AppColors.seedwhite,fontSize: 20),),
                              SizedBox(width: 91,),
                              Icon(Icons.arrow_forward_ios,color: AppColors.palelime,size: 20,),
                            ],
                          ),


                        ),
                      )



                    ],

                  ),

                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.raisinblack
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 0),
                      child: Container(

                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.logout_outlined,color: AppColors.palelime,size: 20,),
                            ),

                            Text('Log-Out',style: TextStyle(color: AppColors.seedwhite,fontSize: 20),),


                          ],
                        ),


                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 10,top: 1,bottom: 15),
                      child: TextButton(onPressed: (){}, child: Text('Delete Account',style: TextStyle(fontSize: 15,color: Colors.red),)),
                    )

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