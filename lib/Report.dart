import 'package:flutter/material.dart';
import 'package:fitx/colors.dart';
import 'package:fitx/table_calendar.dart';

void main() {
  runApp(Report());
}

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: AppColors.raisinblack,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Activity calendar',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: HorizontalDateList(),
                  ),
                ],
              ),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
                color: AppColors.outerspace,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                height: 530,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.outerspace),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [

                      SizedBox(
                        height: 200,
                        width: 200,
                        child: CircularProgressIndicator(
                          value: 0.6875,
                          strokeWidth: 15,
                          backgroundColor: Colors.grey,
                          valueColor: AlwaysStoppedAnimation(AppColors.palelime),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SizedBox(
                          height: 160,
                          width: 160,
                          child: CircularProgressIndicator(
                            value: 0.40,
                            strokeWidth: 15,
                            backgroundColor: Colors.grey,
                            valueColor: AlwaysStoppedAnimation(Colors.red),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: SizedBox(
                          height: 120,
                          width: 120,
                          child: CircularProgressIndicator(
                            value: 0.30,
                            strokeWidth: 15,
                            backgroundColor: Colors.grey,
                            valueColor: AlwaysStoppedAnimation(Colors.blue),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 220,),
                          Container(height: 220,
                            width: double.infinity,

                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: AppColors.seedgrey,),
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 20,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(height: 50,width: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black),child: Icon(Icons.directions_run_outlined,color:
                                    AppColors.palelime,),),

                                    Container(
                                      child: Column(

                                        children: [

                                          Text('Steps',style: TextStyle(color: AppColors.palelime),),
                                          Text('15,000 / 20,000',style: TextStyle(color: AppColors.palelime),)
                                        ],
                                      ),
                                        height: 50,width: 230,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black,
                                    ))],
                                ),
                                SizedBox(height: 10,),//1st element
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(height: 50,width: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black),child: Icon(Icons.local_fire_department,color:Colors.red,),),

                                    Container(
                                        child: Column(

                                          children: [

                                            Text('Calories',style: TextStyle(color: Colors.red),),
                                            Text('400/680 Cal',style: TextStyle(color: Colors.red),)
                                          ],
                                        ),
                                        height: 50,width: 230,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black,
                                    ))],
                                ),
                                //2nd elemnt
                                SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(height: 50,width: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black),child: Icon(Icons.opacity,color:
                                    Colors.blue,),),

                                    Container(
                                        child: Column(

                                          children: [

                                            Text('Water',style: TextStyle(color: Colors.blue),),
                                            Text('1.8L / 3.0L',style: TextStyle(color: Colors.blue),)
                                          ],
                                        ),
                                        height: 50,width: 230,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black,
                                    ))],
                                ),//3rd element

                              ],
                            )

                          )




                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
