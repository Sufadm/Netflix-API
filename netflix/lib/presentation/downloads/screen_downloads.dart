import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/const.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});
  final _widgetlist = [
    const _Smartdownloads(),
    Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: const PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: AppBarWidget(
                title: 'Downloads ',
              )),
          body: ListView.separated(
              padding: const EdgeInsets.all(10),
              itemBuilder: ((context, index) => _widgetlist[index]),
              separatorBuilder: ((context, index) => const SizedBox(
                    height: 24,
                  )),
              itemCount: _widgetlist.length)),
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});
  final List imagelist = [
    'https://source.boomplaymusic.com/buzzgroup2/M00/33/42/rBEe_GJBZXqAc-1NAAIX1qF5vB050.webp',
    'https://i.pinimg.com/originals/d4/80/e2/d480e25470cfd9ec06e323e6330105ae.jpg',
    'https://hips.hearstapps.com/hmg-prod/images/teen-movies-on-netflix-hello-goodbye-1667939130.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Downloads For you',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: whitecolor),
        ),
        kHeight,
        const Text(
          'We will download a personaliosed selection of movies and shows foer you,so there is\n always something to watch on your\n device ',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.5),
                radius: size.width * 0.37,
              ),
              DownloadImageWidget(
                  angle: 25,
                  size: size,
                  imagelist: imagelist[0],
                  margin: const EdgeInsets.only(
                    left: 150,
                    top: 37,
                    bottom: 50,
                  )),
              DownloadImageWidget(
                  angle: -25,
                  size: size,
                  imagelist: imagelist[1],
                  margin:
                      const EdgeInsets.only(right: 150, top: 37, bottom: 50)),
              DownloadImageWidget(
                  radius: 5,
                  size: const Size(460, 100),
                  imagelist: imagelist[2],
                  margin: const EdgeInsets.only(
                    bottom: 25,
                    top: 37,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: buttonColorBlue,
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Set Up',
                style: TextStyle(
                    color: whitecolor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        kHeight,
        MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          color: buttonColorWhite,
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See What you can download',
              style: TextStyle(
                  color: blackColor, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

class _Smartdownloads extends StatelessWidget {
  const _Smartdownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(Icons.settings, color: whitecolor),
        kWidth,
        Text('Smart Downloads')
      ],
    );
  }
}

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget({
    Key? key,
    required this.size,
    required this.imagelist,
    this.angle = 0,
    required this.margin,
    this.radius = 10,
  }) : super(key: key);

  final Size size;
  final String imagelist;
  final double angle;
  final EdgeInsets margin;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Container(
          margin: margin,
          width: size.width * 0.37,
          height: size.width * 0.56,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imagelist))),
        ),
      ),
    );
  }
}
