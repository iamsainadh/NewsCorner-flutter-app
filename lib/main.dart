import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:newscorner/screens/homefeed.dart';

void main() {
  runApp(ProviderScope(
      child: MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(useMaterial3: true),
    home: const HomeFeed(),
  )));
}
