import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/const.dart';
import 'package:netflix/presentation/home/widgets/background_image.dart';
import 'package:netflix/presentation/home/widgets/number_title_card.dart';

import '../widgets/main_title_card.dart';
import 'functions/functions.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (context, value, child) {
          return NotificationListener<UserScrollNotification>(
            onNotification: ((notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            }),
            child: Stack(
              children: [
                ListView(
                  children: [
                    const BackgroundImageWidget(),
                    CardRow(
                      title: 'Released In Past Year',
                      category: HomeFunction.comingSoon,
                    ),
                    kHeight,
                    CardRow(
                      title: 'Trending Now',
                      category: HomeFunction.trending,
                    ),
                    kHeight,
                    const NumberTitlecard(
                      title: 'Top 10 Tv Shows In India Today ',
                    ),
                    CardRow(
                      title: 'Tense Dramas',
                      category: HomeFunction.nowPlaying,
                    ),
                    kHeight,
                    CardRow(
                      title: 'South Indian Cinima',
                      category: HomeFunction.topRated,
                    ),
                    //  kHeight,
                  ],
                ),
                scrollNotifier.value
                    ? AnimatedContainer(
                        duration: const Duration(milliseconds: 1000),
                        width: double.infinity,
                        height: 80,
                        color: Colors.black.withOpacity(0.3),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.network(
                                  'https://cdn.vox-cdn.com/thumbor/sW5h16et1R3au8ZLVjkcAbcXNi8=/0x0:3151x2048/2000x1333/filters:focal(1575x1024:1576x1025)/cdn.vox-cdn.com/uploads/chorus_asset/file/15844974/netflixlogo.0.0.1466448626.png',
                                  width: 60,
                                  height: 60,
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.cast,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                kWidth,
                                Container(
                                  width: 30,
                                  height: 30,
                                  color: Colors.blue,
                                ),
                                kWidth,
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'TV Shows',
                                  style: kHomeTitleText,
                                ),
                                Text('Movies', style: kHomeTitleText),
                                Text('Categories', style: kHomeTitleText)
                              ],
                            )
                          ],
                        ),
                      )
                    : kHeight,
              ],
            ),
          );
        },
      )),
    );
  }
}
