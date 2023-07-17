import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:newscorner/model/newsmodel.dart';

class NewsRepo {
  String url = "<Api Here>";
  Future<List<NewsModel>> getNews() async {
    Response response = await get(Uri.parse(url));

    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)["articles"];
      return result.map((e) => NewsModel.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

final newsProvider = Provider((ref) => NewsRepo());
