import 'package:flutter/material.dart';
import 'package:netflix/core/const.dart';
import 'package:netflix/presentation/home/widgets/number_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';
import 'package:netflix/presentation/widgets/main_title_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: const [
              MainTitlecard(
                title: 'Realease in the past year',
              ),
              MainTitlecard(
                title: 'Trending Now',
              ),
              NumberTitlecard(),
              MainTitlecard(
                title: 'Tense Dramas',
              ),
              MainTitlecard(
                title: 'South Indian Cinema',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NumberTitlecard extends StatelessWidget {
  const NumberTitlecard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: MainTitle(
            title: 'Top 10 Tv Shows in India Today',
          ),
        ),
        kHeight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                  10,
                  (index) => NumberCard(
                        index: index,
                      ))),
        )
        // Maincard(),
      ],
    );
  }
}
