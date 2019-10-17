import 'package:bloc/bloc.dart';
import 'package:vtah_flutter_intro_demo/bloc/tvshow/TvShowAction.dart';
import 'package:vtah_flutter_intro_demo/bloc/tvshow/TvShowError.dart';
import 'package:vtah_flutter_intro_demo/bloc/tvshow/TvShowState.dart';
import 'package:vtah_flutter_intro_demo/business/tvshow/tvshow.repository.dart';
import 'package:vtah_flutter_intro_demo/model/tvshow.model.dart';

class TvShowBloc extends Bloc<TvShowAction, TvShowState> {
  TvShowBloc(this.tvShowService);

  final TvShowRepository tvShowService;

  @override
  TvShowState get initialState => (TvShowStateBuilder()
        ..data = []
        ..count = 0)
      .build();

  @override
  Stream<TvShowState> mapEventToState(TvShowAction action) async* {
    switch (action.event) {
      case TvShowEvent.fetch:
        try {
          List<TvShowModel> tvShows = await tvShowService.fetch();
          yield currentState.rebuild((b) => b
            ..data = tvShows
            ..count = tvShows.length);
        } catch (error) {
          print(error);
          yield currentState.rebuild((b) => b..error = TvShowError.fetch);
        }
        break;
    }
  }
}
