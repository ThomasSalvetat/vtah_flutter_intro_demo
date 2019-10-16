import 'package:vtah_flutter_intro_demo/service/tvshow/tvshow.api.model.dart';

abstract class TvShowApi {
  Future<TvShowApiModel> fetch();
}
