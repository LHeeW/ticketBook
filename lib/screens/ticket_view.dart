import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:ticket_booking/utills/app_layout.dart';
import 'package:ticket_booking/utills/app_styles.dart';
import 'package:ticket_booking/widgets/column_layout.dart';
import 'package:ticket_booking/widgets/layout_builder_widget.dart';
import 'package:ticket_booking/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key,required this.ticket,this.isColor}) : super(key: key);
  final Map<String,dynamic> ticket;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid==true? 167:169),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            /*
            showing the blue part of the card/ticket
            */
            Container(
              decoration: BoxDecoration(
                color: isColor==null? Color(0xFF526799): Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppLayout.getHeight(21)),
                    topRight: Radius.circular(AppLayout.getHeight(21))),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style:
                            isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3,
                      ),
                      const Spacer(),
                      ThickContainer(isColor:true),
                      Expanded(
                          child: Stack(
                            children: [
                              SizedBox(
                                height: AppLayout.getHeight(24),
                                child: const AppLayoutBuilderWidget(sections: 6,),
                              ),
                              Center(child: Transform.rotate(angle: 1.5,child: Icon(Icons.local_airport_rounded,color: isColor==null? Colors.white: Color(0xFF8ACCF7),),)),
                            ],
                          )),
                      const ThickContainer(isColor:true),
                      const Spacer(),
                      Text(
                        ticket['to']['code'],
                        style:
                            isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(3)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(ticket['from']['name'],style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                      ),
                      Text(ticket['flying_time'],style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(ticket['to']['name'],textAlign: TextAlign.end,style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /*
            showing the orange part of the card/ticket
            */
            Container(
              color: isColor==null? Styles.orangeColor: Colors.white,//const Color(0xFFF37B67),
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getHeight(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getHeight(10)),
                          bottomRight: Radius.circular(AppLayout.getHeight(10))
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: EdgeInsets.all(AppLayout.getHeight(12.0)),
                    child: const AppLayoutBuilderWidget(sections: 15),
                  )),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppLayout.getHeight(10)),
                            bottomLeft: Radius.circular(AppLayout.getHeight(10))
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            /*
            bottom part of the orange card/ticket
            */
            Container(
              decoration: BoxDecoration(
                color: isColor==null? Styles.orangeColor: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(isColor==null? AppLayout.getHeight(21):0),
                    bottomRight: Radius.circular(isColor==null? AppLayout.getHeight(21):0)),
              ),
              padding: EdgeInsets.only(left: AppLayout.getHeight(16),top: AppLayout.getHeight(10),right: AppLayout.getHeight(16),bottom: AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: ticket['date'],
                        secondText: "Date",
                        alignment: CrossAxisAlignment.start,
                        isColor: isColor,
                      ),
                      AppColumnLayout(
                        firstText: ticket['departure_time'],
                        secondText: "Departure time",
                        alignment: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),
                      AppColumnLayout(
                        firstText: ticket['number'].toString(),
                        secondText: "Number",
                        alignment: CrossAxisAlignment.end,
                        isColor: isColor,
                      ),
                    ],

                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
