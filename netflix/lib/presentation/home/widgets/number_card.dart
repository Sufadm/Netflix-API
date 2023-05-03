import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class NumberCard extends StatelessWidget {
  final int index;
  const NumberCard({super.key, required this.index});

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
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQVQiOqnRf2weg1EsZQgL8d9fT5TWXw0f9I72szGHjhaPFGJm-X64hibhsAp9W7PtRlr2-fDh2UqJCxYM7c_MPZk407f7TBlQGwNNTk2_8At5CmWmLYk8bgQCkmBmiZtEWc_Ml7PNFFWmvcZfk3v0C3_O.jpg?r=53b'),
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
