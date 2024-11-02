import 'package:flutter/material.dart';
import 'package:fitx/colors.dart';
import 'settings.dart';


void main() {
  runApp(Profilescreen());
}

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.blueblack,
        appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: AppColors.raisinblack,
          title: Text(
            '         My profile',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
          ),
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: AppColors.blueblack),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      size: 17,
                      color: AppColors.palelime,
                    ))),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: AppColors.raisinblack,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30))),
              height: 130,
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/profilepic.png'),
                          radius: 40,
                          backgroundColor: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(30))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tony Stark',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Pro Member',
                              style: TextStyle(
                                color: AppColors.seedgrey,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              'Until 13 Jun 2023',
                              style: TextStyle(
                                  color: AppColors.palelime,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 240,
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                color: AppColors.outerspace),
                child: Column(
                  children: [


    Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
    child: Row(
    children: [
    IconButton(onPressed: (){}, icon: Icon(Icons.calendar_today,size: 20,color: AppColors.palelime,)),
    SizedBox(width: 5,),
    Text('My Journal',style: TextStyle(fontSize: 20,color: AppColors.seedwhite),),
    SizedBox(width: 130,),
    Container(

    height: 35,
    width: 35,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: AppColors.blueblack),
    child: IconButton(
    onPressed: () {},
    icon: Icon(
    Icons.arrow_forward_ios,
    size: 17,
    color: AppColors.palelime,
    ))),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17,right: 17),
                      child: Divider(height: 0.1,thickness: 0.5,color: Colors.white,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        child: Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.edit,size: 20,color: AppColors.palelime,)),
                            SizedBox(width: 5,),
                            Text('Edit Profile',style: TextStyle(fontSize: 20,color: AppColors.seedwhite),),
                            SizedBox(width: 132),
                            Container(

                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: AppColors.blueblack),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 17,
                                      color: AppColors.palelime,
                                    ))),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17,right: 17),
                      child: Divider(height: 0.1,thickness: 0.5,color: Colors.white,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        child: Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.payment,size: 20,color: AppColors.palelime,)),
                            SizedBox(width: 5,),
                            Text('Payment',style: TextStyle(fontSize: 20,color: AppColors.seedwhite),),
                            SizedBox(width: 150,),
                            Container(

                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: AppColors.blueblack),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 17,
                                      color: AppColors.palelime,
                                    ))),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17,right: 17),
                      child: Divider(height: 0.1,thickness: 0.5,color: Colors.white,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        child: Row(
                          children: [
                            IconButton(onPressed: (){


                            }, icon: Icon(Icons.settings,size: 20,color: AppColors.palelime,)),
                            SizedBox(width: 5,),
                            Text('Setttings',style: TextStyle(fontSize: 20,color: AppColors.seedwhite),),
                            SizedBox(width: 148,),
                            Container(

                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: AppColors.raisinblack),
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => settings()),
                                      );

                                    },
                                    icon: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 17,
                                      color: AppColors.palelime,
                                    ))),
                          ],
                        ),
                      ),
                    ),



                  ],


                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
              child: Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                    color: AppColors.outerspace),
                child: Column(
                  children: [


                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        child: Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.article_outlined,size: 20,color: AppColors.palelime,)),
                            SizedBox(width: 5,),
                            Text('Terms and Conditions',style: TextStyle(fontSize: 20,color: AppColors.seedwhite),),
                            SizedBox(width: 32,),
                            Container(

                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: AppColors.blueblack),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 17,
                                      color: AppColors.palelime,
                                    ))),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17,right: 17),
                      child: Divider(height: 0.1,thickness: 0.5,color: Colors.white,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        child: Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.star_border_outlined,size: 20,color: AppColors.palelime,)),
                            SizedBox(width: 5,),
                            Text('Give Us Feedback',style: TextStyle(fontSize: 20,color: AppColors.seedwhite),),
                            SizedBox(width: 70),
                            Container(

                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: AppColors.blueblack),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 17,
                                      color: AppColors.palelime,
                                    ))),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17,right: 17),
                      child: Divider(height: 0.1,thickness: 0.5,color: Colors.white,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        child: Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.support_agent,size: 20,color: AppColors.palelime,)),
                            SizedBox(width: 5,),
                            Text('Support',style: TextStyle(fontSize: 20,color: AppColors.seedwhite),),
                            SizedBox(width: 158,),
                            Container(

                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: AppColors.blueblack),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 17,
                                      color: AppColors.palelime,
                                    ))),
                          ],
                        ),
                      ),
                    ),






                  ],


                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: AppColors.outerspace,borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.logout_outlined,size: 20,color: AppColors.palelime,)),
                      SizedBox(width: 5,),
                      Text('Sign Out',style: TextStyle(fontSize: 20,color: AppColors.seedwhite),),
                      SizedBox(width: 158,),
                      Container(

                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: AppColors.blueblack),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                size: 17,
                                color: AppColors.palelime,
                              )))

                    ],
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
