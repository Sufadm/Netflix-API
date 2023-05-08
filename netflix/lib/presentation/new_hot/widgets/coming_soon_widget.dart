import 'package:flutter/material.dart';

import '../../../core/const.dart';
import '../../../models/trending/trending.dart';
import '../../home/widgets/custom_button_widget.dart';
import '../../widgets/video_widget.dart';
import 'package:intl/intl.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
    required this.movie,
  }) : super(key: key);
  final Movies movie;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          height: 440,
          width: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                DateFormat.MMM().format(DateTime.parse(movie.releaseDate!)),
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              Text(
                DateFormat.d().format(DateTime.parse(movie.releaseDate!)),
                style: const TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 4,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 440,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(
                image: movie.backdropPath!,
              ),
              Row(
                children: [
                  Text(
                    movie.title!,
                    style: const TextStyle(
                        letterSpacing: -1.5,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      CustomButtonWidget(
                        icon: Icons.alarm,
                        title: "Remind Me",
                        iconSize: 20,
                        textSize: 12,
                      ),
                      kWidth,
                      CustomButtonWidget(
                        icon: Icons.info,
                        title: "Info",
                        iconSize: 20,
                        textSize: 12,
                      ),
                      kWidth
                    ],
                  )
                ],
              ),
              kHeight,
              const Text("Coming On Friday"),
              kHeight,
              Text(
                movie.title!,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              kHeight,
              Text(
                movie.overview!,
                style: const TextStyle(color: Colors.grey, fontSize: 12.7),
              )
            ],
          ),
        ),
      ],
    );
  }
}
