import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utills/app_layout.dart';

import '../utills/app_styles.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({Key? key,required this.hotel}) : super(key: key);
  final Map<String,dynamic> hotel;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: AppLayout.getHeight(350),
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15),vertical: AppLayout.getHeight(17)),
      margin: EdgeInsets.only(right: AppLayout.getHeight(17),top: AppLayout.getHeight(5)),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: AppLayout.getHeight(20),
            spreadRadius: AppLayout.getHeight(5),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/${hotel['image']}'
                )
              )
            ),
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            hotel['place'],
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          ),
          Gap(AppLayout.getHeight(5)),
          Text(
            hotel['destination'],
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          Gap(AppLayout.getHeight(8)),
          Text(
            '\$${hotel['price']}/night',
            style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
