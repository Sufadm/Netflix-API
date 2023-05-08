import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';

import '../../../core/const.dart';
import '../../../models/trending/trending.dart';
=======

import '../../../core/const.dart';
import '../../home/widgets/custom_button_widget.dart';
>>>>>>> 51810eae23cb0bc47871de7e278af5ce006d8f80
import '../../widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    Key? key,
<<<<<<< HEAD
    required this.movies,
  }) : super(key: key);
  final Movies movies;
=======
  }) : super(key: key);

>>>>>>> 51810eae23cb0bc47871de7e278af5ce006d8f80
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
<<<<<<< HEAD
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
=======
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
>>>>>>> 51810eae23cb0bc47871de7e278af5ce006d8f80
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
