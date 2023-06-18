import 'package:flutter/material.dart';

import '../utills/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  const AppDoubleTextWidget({Key? key,required this.bigText,required this.smallText}) : super(key: key);
  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText,style: Styles.headLineStyle2,),
        InkWell(
            onTap: (){
              print('You are tapped');
            },
            child: Text(smallText,style: Styles.textStyle.copyWith(color: Styles.primaryColor),)
        ),
      ],
    );
  }
}
