import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:fitx/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Horizontal Date List')),
        body: HorizontalDateList(),
      ),
    );
  }
}

class HorizontalDateList extends StatefulWidget {
  @override
  _HorizontalDateListState createState() => _HorizontalDateListState();
}

class _HorizontalDateListState extends State<HorizontalDateList> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 30, // Number of days in the list
        itemBuilder: (context, index) {
          final date = DateTime.now().add(Duration(days: index));
          final isSelected = date.day == _selectedDate.day &&
              date.month == _selectedDate.month &&
              date.year == _selectedDate.year;

          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedDate = date;
              });
            },
            child: Container(

              width: 50,
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.palelime
                    : AppColors.midgrey,
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                  color: isSelected ? AppColors.palelime : AppColors.midgrey,
                  width: 2,
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      DateFormat('d').format(date),
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: isSelected ? Colors.black87 : Colors.black87,
                      ),
                    ),
                    Text(
                      DateFormat('MMM').format(date),
                      style: TextStyle(
                        fontSize: 14,
                        color: isSelected ? Colors.black87 : Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}


