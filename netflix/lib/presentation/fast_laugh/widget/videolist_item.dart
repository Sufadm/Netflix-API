import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:video_player/video_player.dart';

final dummyvideoUrl = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/VolkswagenGTIReview.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4"
];

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    final videourl = dummyvideoUrl[index % dummyvideoUrl.length];
    return Stack(
      children: [
        FastLaughVideoPlayer(videourl: videourl, onStateChanged: (bool) {}),
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
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 27,
                        backgroundImage: NetworkImage(
                            'https://image.tmdb.org/t/p/w500$image'),
                      ),
                    ),
                    const VideoActionWidget(
                        title: 'Lol', icon: Icons.emoji_emotions),

                    const VideoActionWidget(title: 'My List', icon: Icons.add),

                    const VideoActionWidget(title: 'Share', icon: Icons.share),

                    const VideoActionWidget(
                        title: 'Play', icon: Icons.play_arrow),

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

class FastLaughVideoPlayer extends StatefulWidget {
  final String videourl;
  final void Function(bool isplaying) onStateChanged;
  const FastLaughVideoPlayer(
      {super.key, required this.videourl, required this.onStateChanged});

  @override
  State<FastLaughVideoPlayer> createState() => _FastLaughVideoPlayerState();
}

class _FastLaughVideoPlayerState extends State<FastLaughVideoPlayer> {
  late VideoPlayerController _videoPlayerController;
  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(widget.videourl);
    _videoPlayerController.initialize().then((value) {
      setState(() {});
      _videoPlayerController.play();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: _videoPlayerController.value.isInitialized
            ? AspectRatio(
                aspectRatio: _videoPlayerController.value.aspectRatio,
                child: VideoPlayer(_videoPlayerController),
              )
            : const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              ));
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}
