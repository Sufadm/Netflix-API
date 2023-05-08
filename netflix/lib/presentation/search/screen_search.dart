import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/const.dart';
import 'package:netflix/presentation/search/function/function.dart';
import 'package:netflix/presentation/search/widget/search_idle.dart';
import 'package:netflix/presentation/search/widget/search_result.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            CupertinoSearchTextField(
              onChanged: (value) {
                SearchFunction.searchResult(value);
              },
              backgroundColor: Colors.grey.withOpacity(0.3),
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
              suffixIcon: const Icon(
                CupertinoIcons.xmark_circle_fill,
                color: Colors.grey,
              ),
              style: const TextStyle(color: Colors.white),
            ),
            kHeight,
            Expanded(
                child: ValueListenableBuilder(
                    valueListenable: SearchFunction.searchData,
                    builder: (context, value, child) {
                      return value.isEmpty
                          ? SearchIdleWidget()
                          : const SearchResultPage();
                    },
                    child: const SearchResultPage())),
          ],
        ),
      )),
    );
  }
}
