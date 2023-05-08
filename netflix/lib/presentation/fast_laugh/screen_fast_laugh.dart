import 'package:flutter/material.dart';
import 'package:netflix/presentation/fast_laugh/widget/videolist_item.dart';

import '../home/functions/functions.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: PageView(
                scrollDirection: Axis.vertical,
                children: List.generate(10, ((index) {
                  return VideoListItem(
                    index: index,
                    image: HomeFunction.trending[index].posterPath!,
                  );
                })))));
  }
}
