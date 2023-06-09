import 'package:flutter/cupertino.dart';
import 'package:netflix/core/const.dart';
import 'package:netflix/presentation/search/function/function.dart';
import 'package:netflix/presentation/search/widget/title.dart';

// const imageUrl =
//     'https://i.pinimg.com/originals/d4/80/e2/d480e25470cfd9ec06e323e6330105ae.jpg';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Movies & Tv'),
        kHeight,
        ValueListenableBuilder(
          valueListenable: SearchFunction.searchData,
          builder: (context, value, child) {
            return Expanded(
              child: GridView.count(
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                shrinkWrap: true,
                crossAxisCount: 3,
                childAspectRatio: 1 / 1.4,
                children: List.generate(
                    value.length,
                    (index) => MainCard(
                        image: value[index].posterPath ??
                            'https://www.themoviedb.org/t/p/w440_and_h660_face/rM5Y0ziZbmpkqW1db2HK3xrzTXj.jpg')),
              ),
            );
          },
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage('https://image.tmdb.org/t/p/w500$image'),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(7)),
    );
  }
}
