import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NewsContent extends StatelessWidget {
  String? imgUrl;
  String? newsHeading;
  String? newsDesc;
  String? author;

  NewsContent({
    super.key,
    required this.imgUrl,
    required this.newsHeading,
    required this.newsDesc,
    required this.author,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            "$imgUrl",
            scale: 1.0,
          ),
          Text(
            "$newsHeading",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "$newsDesc..",
            style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
          ),
          const Spacer(),
          Text(
            "Source:$author",
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25, color: Colors.green),
          ),
        ],
      ),
    );
  }
}
