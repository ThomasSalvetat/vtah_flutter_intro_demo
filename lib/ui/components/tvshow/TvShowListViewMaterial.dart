import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vtah_flutter_intro_demo/model/tvshow.model.dart';

class TvShowListViewMaterial extends StatelessWidget {
  const TvShowListViewMaterial({Key key, this.tvShows}) : super(key: key);
  final List<TvShowModel> tvShows;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TvShows"),
        ),
        body: ListView(
          children: tvShows.map((tvShow) => Text(tvShow.artistName)).toList(),
        ));
  }
}
