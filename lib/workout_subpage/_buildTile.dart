import 'package:fitx/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BuildTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget buildExerciseTile({
    required String lottieAsset,
    required String name,
    required String details,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.raisinblack,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: AppColors.palelime.withOpacity(0.6),
            spreadRadius: 0.1,
            blurRadius: 3,
            offset: Offset(0, 2),
          ),
        ],
      ),
      height: 95,
      child: ListTile(
        contentPadding: EdgeInsets.all(16.0),
        leading: ClipRRect(

          borderRadius: BorderRadius.circular(13),
          child: Lottie.asset(
            lottieAsset,
            width: 70,
            height: 50,
            fit: BoxFit.cover
          ),
        ),
        title: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.seedwhite),
        ),
        subtitle: Text(details,style: TextStyle(color: AppColors.seedgrey),),
        trailing: Icon(Icons.swap_horiz,color: AppColors.seedgrey,),
      ),
    );
  }
}



