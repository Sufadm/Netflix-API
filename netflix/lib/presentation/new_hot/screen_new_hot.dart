import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/new_hot/widgets/coming_soon_widget.dart';
import 'package:netflix/presentation/new_hot/widgets/everyones_watch_widget.dart';

import '../../core/const.dart';

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
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const EveryonesWatchingWidget();
      },
    );
  }
}
