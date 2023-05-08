import 'package:flutter/material.dart';
import 'package:netflix/presentation/home/functions/functions.dart';

import '../../../core/colors/colors.dart';
import 'custom_button_widget.dart';

class BackgroundImageWidget extends StatelessWidget {
  const BackgroundImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          'https://image.tmdb.org/t/p/original/${HomeFunction.trending[0].backdropPath}',
          fit: BoxFit.cover,
          height: 600,
          width: double.infinity,
        ),
        // Image.network(
        //   'https://image.tmdb.org/t/p/w500/${HomeFunction.trending[9].backdropPath}',
        //   fit: BoxFit.cover,
        //   height: 600,
        //   width: double.infinity,
        // ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomButtonWidget(
                  icon: Icons.add,
                  title: 'My List',
                ),
                _playbutton(),
                const CustomButtonWidget(icon: Icons.info, title: 'Info')
              ],
            ),
          ),
        )
      ],
    );
  }

  TextButton _playbutton() {
    return TextButton.icon(
        onPressed: () {},
        style:
            ButtonStyle(backgroundColor: MaterialStateProperty.all(whitecolor)),
        icon: const Icon(
          Icons.play_arrow,
          color: blackColor,
        ),
        label: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Play',
            style: TextStyle(fontSize: 20, color: blackColor),
          ),
        ));
  }
}


    // children: [
    //     CarouselSlider(
    //         items: HomeFunction.trending
    //             .map((item) => Container(
    //                   decoration: BoxDecoration(
    //                       image: DecorationImage(
    //                           fit: BoxFit.cover,
    //                           image: NetworkImage(
    //                               'https://image.tmdb.org/t/p/w500${item.backdropPath}'))),
    //                   width: double.infinity,
    //                   height: 550,
    //                 ))
    //             .toList(),
    //         options: CarouselOptions(height: 600)),
    //     Positioned(
    //       bottom: 0,
    //       left: 0,
    //       right: 0,
    //       child: Padding(
    //         padding: const EdgeInsets.only(bottom: 8),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //           children: [
    //             const CustomButtonWidget(
    //               icon: Icons.add,
    //               title: 'My List',
    //             ),
    //             _playbutton(),
    //             const CustomButtonWidget(icon: Icons.info, title: 'Info')
    //           ],
    //         ),
    //       ),
    //     )
    //   ],