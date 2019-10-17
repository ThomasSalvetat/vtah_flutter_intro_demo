import 'package:vtah_flutter_intro_demo/business/tvshow/tvshow.api.model.dart';

abstract class TvShowApi {
  Future<TvShowApiModel> fetch();
}
