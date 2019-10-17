import 'package:bloc/bloc.dart';
import 'package:vtah_flutter_intro_demo/bloc/tvshow/TvShowAction.dart';
import 'package:vtah_flutter_intro_demo/bloc/tvshow/TvShowState.dart';
import 'package:vtah_flutter_intro_demo/model/tvshow.model.dart';
import 'package:vtah_flutter_intro_demo/service/tvshow/tvshow.service.dart';

class TvShowBloc extends Bloc<TvShowAction, TvShowState> {
  TvShowBloc(this.tvShowService);

  final TvShowService tvShowService;

  @override
  TvShowState get initialState => TvShowState();

  @override
  Stream<TvShowState> mapEventToState(TvShowAction action) async* {
    switch (action.event) {
      case TvShowEvent.fetch:
        List<TvShowModel> tvShows = await tvShowService.fetch();
        yield currentState
          ..data = tvShows
          ..count = tvShows.length;
        break;
    }
  }
}
