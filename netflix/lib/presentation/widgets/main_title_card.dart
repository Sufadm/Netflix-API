import 'package:flutter/material.dart';
import 'package:netflix/core/const.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

import '../../models/trending/trending.dart';
import '../home/functions/functions.dart';
import 'mian_card.dart';

class CardRow extends StatelessWidget {
  const CardRow({super.key, required this.title, required this.category});
  final String title;
  final List<Movies> category;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: MainTitle(title: title),
        ),
        kHeight,
        LimitedBox(
          maxHeight: 140,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                HomeFunction.trending.length,
                (index) => MainCards(
                      imageUrl: category[index].posterPath!,
                    )),
          ),
        )
      ],
    );
  }
}
