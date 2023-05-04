import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/new_hot/widgets/coming_soon_widget.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

import '../../core/const.dart';
import '../home/widgets/custom_button_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(90),
            child: AppBar(
              title: Text(
                'New & Hot',
                style: GoogleFonts.montserrat(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
              actions: [
                const Icon(
                  Icons.cast,
                  size: 30,
                  color: Colors.white,
                ),
                kWidth,
                Container(
                  width: 30,
                  height: 30,
                  color: Colors.blue,
                ),
              ],
              bottom: TabBar(
                isScrollable: true,
                unselectedLabelColor: whitecolor,
                labelColor: blackColor,
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                indicator:
                    BoxDecoration(color: whitecolor, borderRadius: kradius30),
                tabs: const [
                  Tab(
                    text: '🍿Coming Soon',
                  ),
                  Tab(text: "👀Everyone's Watching")
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              _buildComingsoon(),
              _buildEveryoneswatching(),
            ],
          )),
    );
  }

  Widget _buildComingsoon() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const ComingSoonWidget(),
    );
  }

  Widget _buildEveryoneswatching() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        const Text(
          'Friends',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        kHeight,
        const Text(
          "This hit sitcoms follows the merry misadventure of six\n20-soething pals as the navigate the pitfalls of\nwork,life and love in 1990s Manhattan",
          style: TextStyle(color: Colors.grey),
        ),
        kHeight50,
        const VideoWidget(),
        kHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButtonWidget(
              icon: Icons.share,
              title: "Share",
              iconSize: 25,
              textSize: 14,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.add,
              title: "MyList",
              iconSize: 25,
              textSize: 14,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.play_arrow,
              title: "Play",
              iconSize: 25,
              textSize: 14,
            ),
            kWidth
          ],
        )
      ],
    );
  }
}
