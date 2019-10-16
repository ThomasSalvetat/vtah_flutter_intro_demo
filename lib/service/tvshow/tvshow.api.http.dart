import 'package:vtah_flutter_intro_demo/service/http/http.service.dart';
import 'package:vtah_flutter_intro_demo/service/tvshow/tvshow.api.dart';
import 'package:vtah_flutter_intro_demo/service/tvshow/tvshow.api.model.dart';

class TvShowHttpService implements TvShowApi {
  static TvShowApiModel _fromJson(Map<String, dynamic> json) =>
      TvShowApiModel.fromJson(json);

  Future<TvShowApiModel> fetch({int limit = 100}) async {
    return await HttpService.fetch<Map<String, dynamic>, TvShowApiModel>(
        url:
            'https://rss.itunes.apple.com/api/v1/us/tv-shows/top-tv-episodes/all/$limit/explicit.json',
        deserializer: _fromJson);
  }
}
