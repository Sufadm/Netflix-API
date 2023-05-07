import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    required this.image,
    Key? key,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            'https://image.tmdb.org/t/p/w500$image',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 4,
          right: 10,
          child: CircleAvatar(
            backgroundColor: blackColor,
            radius: 22,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.volume_off,
                  color: whitecolor,
                  size: 27,
                )),
          ),
        ),
      ],
    );
  }
}
