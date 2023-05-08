import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class NumberCard extends StatelessWidget {
  final int index;
  final String image;
  const NumberCard({
    super.key,
    required this.index,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
              height: 200,
            ),
            Container(
              width: 130,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://image.tmdb.org/t/p/w500$image'),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 20,
          bottom: -30,
          child: BorderedText(
            strokeWidth: 10.0,
            strokeColor: whitecolor,
            child: Text(
              "${index + 1}",
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 140,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  decorationColor: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
