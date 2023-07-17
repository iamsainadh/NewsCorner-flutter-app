import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:newscorner/model/newsmodel.dart';
import 'package:newscorner/repository/apicontroller.dart';

final newsDataProvider = FutureProvider<List<NewsModel>>((ref) async {
  return ref.watch(newsProvider).getNews();
});
