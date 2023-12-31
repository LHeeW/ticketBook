import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utills/app_layout.dart';
import '../utills/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  const AppColumnLayout({Key? key,required this.firstText,required this.secondText,required this.alignment,this.isColor}) : super(key: key);
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignment;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      //style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,
      children: [
        Text(firstText,style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
        Gap(AppLayout.getHeight(5)),
        Text(secondText,style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
      ],
    );
  }
}
