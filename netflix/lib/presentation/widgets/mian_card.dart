import 'package:flutter/material.dart';

class Maincard extends StatelessWidget {
  const Maincard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 130,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: NetworkImage(
              'https://pbs.twimg.com/media/Ec_7SzOUEAAuGit.jpg:large'),
        ),
      ),
    );
  }
}
