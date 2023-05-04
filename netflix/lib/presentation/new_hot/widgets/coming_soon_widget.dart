import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

import '../../../core/const.dart';
import '../../home/widgets/custom_button_widget.dart';
import '../../widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        SizedBox(
          height: 440,
          width: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text('FEB',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey)),
              Text(
                '11',
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 440,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VideoWidget(),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'TALLGIRL2',
                    style: TextStyle(
                        letterSpacing: -4,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      CustomButtonWidget(
                        icon: Icons.alarm,
                        title: "Remind Me",
                        iconSize: 20,
                        textSize: 12,
                      ),
                      kWidth,
                      CustomButtonWidget(
                        icon: Icons.info,
                        title: "Info",
                        iconSize: 20,
                        textSize: 12,
                      ),
                      kWidth
                    ],
                  )
                ],
              ),
              kHeight,
              const Text("Coming On Friday"),
              kHeight,
              const Text(
                'TallGirl2',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              kHeight,
              const Text(
                "Landing the lead in the school musical is a dream come true for jodi, until the pressure sends her confidence - and her relationship in to a tail spin",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
      ],
    );
  }
}
