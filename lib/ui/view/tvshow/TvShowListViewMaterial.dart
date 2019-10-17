import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vtah_flutter_intro_demo/model/tvshow.model.dart';
import 'package:vtah_flutter_intro_demo/ui/components/TvShowPicture.dart';

class TvShowListViewMaterial extends StatelessWidget {
  const TvShowListViewMaterial(
      {Key key, @required this.title, @required this.tvShows})
      : super(key: key);
  final String title;
  final List<TvShowModel> tvShows;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.0,
                  crossAxisSpacing: 16.0),
              itemBuilder: (context, position) =>
                  TvShowPicture(url: tvShows[position].artworkUrl)),
        ));
  }
}
