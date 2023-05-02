import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/search/widget/title.dart';

import '../../../core/const.dart';

const imageUrl =
    'https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQf3VSpWtBPM-i1nYk29d8w14UvjHwOgOsD5TDjKH0sVo_ER_sApaKGc2wi34fEmQf35Qw2u-nhMV1xvZpN0xd2Ggi2dPHu0mbccLy5MhU1qqWPe6C0L_LRk27CY82QY4Wi7UFnByElqBnc0DNXt9V8mt.jpg?r=c88';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Top Searches'),
        kHeight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => const TopSearchItemTile(),
              separatorBuilder: (context, index) => kHeight20,
              itemCount: 10),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 80,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageUrl))),
        ),
        const Expanded(
            child: Text(
          'Movie Name,',
          style: TextStyle(
              color: whitecolor, fontWeight: FontWeight.bold, fontSize: 16),
        )),
        const CircleAvatar(
          backgroundColor: whitecolor,
          radius: 27,
          child: CircleAvatar(
            backgroundColor: blackColor,
            radius: 25,
            child: Icon(
              CupertinoIcons.play_arrow_solid,
              color: whitecolor,
            ),
          ),
        )
      ],
    );
  }
}
