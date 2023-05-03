import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                //leftside
                CircleAvatar(
                  backgroundColor: blackColor,
                  radius: 30,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.volume_off,
                        color: whitecolor,
                        size: 30,
                      )),
                ),

                //Right Side
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 27,
                        backgroundImage: NetworkImage(
                            'https://hips.hearstapps.com/hmg-prod/images/teen-movies-on-netflix-hello-goodbye-1667939130.jpeg'),
                      ),
                    ),
                    VideoActionWidget(title: 'Lol', icon: Icons.emoji_emotions),

                    VideoActionWidget(title: 'My List', icon: Icons.add),

                    VideoActionWidget(title: 'Share', icon: Icons.share),

                    VideoActionWidget(title: 'Play', icon: Icons.play_arrow),

                    // CircleAvatar(),
                    // CircleAvatar(),
                    // CircleAvatar(),
                    // CircleAvatar()
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  const VideoActionWidget({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          Text(
            title,
            style: const TextStyle(color: whitecolor, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
