import 'package:flutter/material.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';

import '../../../core/const.dart';
import '../../../models/trending/trending.dart';
import '../../widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    Key? key,
    required this.movies,
  }) : super(key: key);
  final Movies movies;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        Text(
          movies.title ?? 'unknown',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        kHeight,
        Text(
          movies.overview ?? 'Unknown',
          style: const TextStyle(color: Colors.grey),
        ),
        kHeight50,
        VideoWidget(
          image: movies.backdropPath!,
        ),
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
