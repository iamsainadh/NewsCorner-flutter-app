import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:newscorner/data/data_provider.dart';
import 'package:newscorner/model/newsmodel.dart';
import 'package:newscorner/widgets/NewsContent.dart';

class HomeFeed extends ConsumerWidget {
  const HomeFeed({super.key});
  @override
  Widget build(BuildContext context, ref) {
    final data = ref.watch(newsDataProvider);

    return Scaffold(
      body: data.when(
          data: (data) {
            List<NewsModel> newsList = data.map((e) => e).toList();
            return PageView.builder(
              scrollDirection: Axis.vertical,
              itemCount: newsList.length,
              itemBuilder: (context, index) {
                return NewsContent(
                  imgUrl: newsList[index].urlToImage ??
                      "https://static.vecteezy.com/system/resources/thumbnails/006/299/370/original/world-breaking-news-digital-earth-hud-rotating-globe-rotating-free-video.jpg",
                  newsHeading: "${newsList[index].title?.substring(0, 70)}..",
                  newsDesc: newsList[index].description,
                  author: newsList[index].author ?? "NewsCorner",
                );
              },
            );
          },
          error: (err, s) => Text(err.toString()),
          loading: () => const Center(child: CircularProgressIndicator())),
    );
  }
}
