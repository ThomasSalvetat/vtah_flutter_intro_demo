import 'package:vtah_flutter_intro_demo/model/tvshow.model.dart';
import 'package:vtah_flutter_intro_demo/service/tvshow/tvshow.api.model.dart';

class TvShowConverter {
  static List<TvShowModel> toModel(TvShowApiModel apiModel) {
    return apiModel.feed.results
        .map((result) => TvShowModel(artistName: result.artistName));
  }
}
