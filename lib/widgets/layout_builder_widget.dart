import 'package:flutter/material.dart';

import '../utills/app_layout.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  const AppLayoutBuilderWidget({Key? key,this.isColor,required this.sections,this.width=3}) : super(key: key);
  final bool? isColor;
  final int sections;
  final double width;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate((constraints.constrainWidth()/sections).floor(), (index) =>SizedBox(
            width: AppLayout.getWidth(width),height: AppLayout.getHeight(1),
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: isColor==null? Colors.white: Colors.grey.shade300
              ),
            ),
          )),
        );
      },
    );
  }
}
