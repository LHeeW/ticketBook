import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/hotel_screen.dart';
import 'package:ticket_booking/screens/ticket_view.dart';
import 'package:ticket_booking/utills/app_info_list.dart';
import 'package:ticket_booking/widgets/double_text_widget.dart';

import '../utills/app_layout.dart';
import '../utills/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good morning',
                          style: Styles.headLineStyle3,
                        ),
                        Gap(AppLayout.getHeight(5)),
                        Text(
                          'Book Tickets',
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: AppLayout.getHeight(50),
                      width: AppLayout.getWidth(50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                          image: const DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage('assets/images/img_1.png'))),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(25)),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding: EdgeInsets.all(AppLayout.getHeight(12)),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,color: Color(0xFFBFC205),),
                      Text(
                        'Search',
                        style: Styles.headLineStyle4,
                      ),
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(40)),
                const AppDoubleTextWidget(bigText: 'Upcoming Flights', smallText: 'View all')
              ],
            ),
          ),
          Gap(AppLayout.getHeight(15)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: ticketsList.map((singleTicket) => TicketView(ticket: singleTicket)).toList(),
            ),
          ),
          Gap(AppLayout.getHeight(15)),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const AppDoubleTextWidget(bigText: 'Hotels',smallText: 'View all',),
          ),
          Gap(AppLayout.getHeight(15)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: hotelList.map((singlehotel) => HotelScreen(hotel: singlehotel)).toList(),
            ),
          )
        ],
      ),
    );
  }
}
