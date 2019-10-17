import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vtah_flutter_intro_demo/model/tvshow.model.dart';
import 'package:vtah_flutter_intro_demo/ui/components/TvShowPicture.dart';

class TvShowListViewCupertino extends StatelessWidget {
  const TvShowListViewCupertino(
      {Key key, @required this.title, @required this.tvShows, @required this.refreshLabel, this.onRefresh})
      : super(key: key);
  final String title;
  final List<TvShowModel> tvShows;
  final String refreshLabel;
  final VoidCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(title),
          trailing: CupertinoButton(
            padding: EdgeInsets.zero,
            child: Text(refreshLabel),
            onPressed: onRefresh,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.0,
                  crossAxisSpacing: 16.0),
              itemCount: tvShows.length,
              itemBuilder: (context, position) =>
                  TvShowPicture(url: tvShows[position].artworkUrl)),
        ));
  }
}
