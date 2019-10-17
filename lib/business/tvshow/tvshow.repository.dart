import 'package:vtah_flutter_intro_demo/business/tvshow/tvshow.api.dart';
import 'package:vtah_flutter_intro_demo/business/tvshow/tvshow.converter.dart';
import 'package:vtah_flutter_intro_demo/model/tvshow.model.dart';

class TvShowRepository {
  const TvShowRepository(this.api);

  final TvShowApi api;

  Future<List<TvShowModel>> fetch() async {
    var apiModel = await api.fetch();
    return TvShowConverter.toModel(apiModel);
  }
}
