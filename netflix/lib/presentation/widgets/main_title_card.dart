import 'package:flutter/material.dart';
import 'package:netflix/presentation/widgets/main_title.dart';
import 'package:netflix/presentation/widgets/mian_card.dart';

class MainTitlecard extends StatelessWidget {
  const MainTitlecard({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: MainTitle(
            title: title,
          ),
        ),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(10, (index) => const Maincard())),
        )
        // Maincard(),
      ],
    );
  }
}
