import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton extends StatelessWidget {
  final iconImagePath;
  final String buttonText;


  const MyButton({
    Key? key,
    required this.buttonText,
    required this.iconImagePath
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: ScreenUtil().setHeight(90),
          padding: EdgeInsets.all(ScreenUtil().setSp(10)),
          decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 40,
                    spreadRadius: 10
                )
              ]
          ),
          child: Center(
            child: Image.asset(iconImagePath),
          ),
        ),
        SizedBox(height: ScreenUtil().setHeight(10),),
        //Text
        Text(
          buttonText,
          style: TextStyle(
              fontSize: ScreenUtil().setSp(16),
              fontWeight: FontWeight.bold,
              color: Colors.grey[700]
          ),
        )
      ],
    );
  }
}
