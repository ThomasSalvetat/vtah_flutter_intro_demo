import 'package:flutter/material.dart';
import 'package:vtah_flutter_intro_demo/ui/page/tvshow/TvShowListPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TvShow List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TvShowListPage(),
    );
  }
}
