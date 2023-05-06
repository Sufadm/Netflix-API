import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/core/strings.dart';

import '../../application/bloc/downloads_bloc.dart';
import '../../core/const.dart';
import '../widgets/app_bar_widget.dart';

class ScreenDownload extends StatelessWidget {
  ScreenDownload({super.key});
  final _widgetList = [
    const _SmartDownload(),
    const Section2(),
    const Section3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: 'Downloads',
          )),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        itemBuilder: (context, index) => _widgetList[index],
        separatorBuilder: (context, index) => kHeight20,
        itemCount: _widgetList.length,
      ),
    );
  }
}

//*section 1

class _SmartDownload extends StatelessWidget {
  const _SmartDownload();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        Icon(
          Icons.settings,
        ),
        kWidth,
        Text(
          'Smart Download',
        ),
      ],
    );
  }
}

//*section 2
class Section2 extends StatelessWidget {
  const Section2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback(
    //   (_) {
    //     BlocProvider.of<DownloadsBloc>(context)
    //         .add(const DownloadsEvent.getDownloadsImage());
    //   },

    // );
    BlocProvider.of<DownloadsBloc>(context)
        .add(const DownloadsEvent.getDownloadsImage());
    final Size size = MediaQuery.of(context).size;

    return Column(children: [
      const Text(
        "Introducing Download's for you",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      kHeight,
      const Text(
        'We will download personalized selection of \nmovies and show for you,so there is\nalways something to watch on your\n device',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          color: Colors.grey,
        ),
      ),
      BlocBuilder<DownloadsBloc, DownloadsState>(
        builder: (context, state) {
          return SizedBox(
            width: size.width,
            height: size.width,
            child: state.isLoading
                ? const Center(child: CircularProgressIndicator())
                : Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        radius: size.width * 0.4,
                        backgroundColor: Colors.grey.withOpacity(0.5),
                      ),
                      DownloadsImageWidgets(
                        image:
                            '$imageAppendUrl${state.downloads![0].posterPath}',
                        angle: 15,
                        margin: const EdgeInsets.only(left: 180, bottom: 0),
                        size: Size(size.width * 0.4, size.width * 0.55),
                      ),
                      DownloadsImageWidgets(
                        image:
                            "$imageAppendUrl${state.downloads![1].posterPath}",
                        angle: -15,
                        margin: const EdgeInsets.only(right: 180, bottom: 0),
                        size: Size(size.width * 0.4, size.width * 0.55),
                      ),
                      DownloadsImageWidgets(
                        image:
                            "$imageAppendUrl${state.downloads![2].posterPath}",
                        angle: 0,
                        margin: const EdgeInsets.only(bottom: 0),
                        size: Size(size.width * 0.4, size.width * 0.6),
                      ),
                    ],
                  ),
          );
        },
      ),
    ]);
  }
}

//*section 3

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            onPressed: () {},
            color: const Color(0xFF1269FF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Set Up',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
        ),
        kHeight,
        MaterialButton(
          onPressed: () {},
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can download',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}

//* Images in the download page

class DownloadsImageWidgets extends StatelessWidget {
  const DownloadsImageWidgets({
    super.key,
    required this.image,
    required this.angle,
    required this.margin,
    required this.size,
  });
  final EdgeInsets margin;
  final double angle;
  final String image;
  final Size size;
  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              image,
            ),
          ),
        ),
      ),
    );
  }
}
