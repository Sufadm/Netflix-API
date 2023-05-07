import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/new_hot/widgets/coming_soon_widget.dart';
import 'package:netflix/presentation/new_hot/widgets/everyones_watch_widget.dart';

import '../../core/const.dart';
import '../home/functions/functions.dart';
import 'functions/functions.dart';

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
              buildComingSoon(),
              buildEveryoneWatching(),
            ],
          )),
    );
  }

  Widget buildComingSoon() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => Column(
        children: [
          kHeight,
          ComingSoonWidget(
            movie: HomeFunction.comingSoon[index],
          )
        ],
      ),
    );
  }

  Widget buildEveryoneWatching() {
    return ListView.builder(
      itemBuilder: (context, index) => EveryonesWatchingWidget(
        movies: NewAndHotFunctions.discover[index],
      ),
      itemCount: 10,
    );
  }
}
