import 'package:flutter/material.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';

import '../../../core/const.dart';
import '../../widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        const Text(
          'Friends',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        kHeight,
        const Text(
          "This hit sitcoms follows the merry misadventure of six\n20-soething pals as the navigate the pitfalls of\nwork,life and love in 1990s Manhattan",
          style: TextStyle(color: Colors.grey),
        ),
        kHeight50,
        const VideoWidget(),
        kHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButtonWidget(
              icon: Icons.share,
              title: "Share",
              iconSize: 25,
              textSize: 14,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.add,
              title: "MyList",
              iconSize: 25,
              textSize: 14,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.play_arrow,
              title: "Play",
              iconSize: 25,
              textSize: 14,
            ),
            kWidth
          ],
        )
      ],
    );
  }
}
