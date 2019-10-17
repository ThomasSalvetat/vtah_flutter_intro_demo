import 'package:vtah_flutter_intro_demo/model/tvshow.model.dart';

class TvShowState {
  TvShowState({this.data = const [], this.count = 0});

  List<TvShowModel> data;
  int count;
}
