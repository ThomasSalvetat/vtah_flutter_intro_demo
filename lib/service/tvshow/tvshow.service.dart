import 'package:vtah_flutter_intro_demo/model/tvshow.model.dart';
import 'package:vtah_flutter_intro_demo/service/tvshow/tvshow.api.dart';
import 'package:vtah_flutter_intro_demo/service/tvshow/tvshow.converter.dart';

class TvShowService {
  const TvShowService(this.api);

  final TvShowApi api;

  Future<List<TvShowModel>> fetch() async {
    var apiModel = await api.fetch();
    return TvShowConverter.toModel(apiModel);
  }
}
