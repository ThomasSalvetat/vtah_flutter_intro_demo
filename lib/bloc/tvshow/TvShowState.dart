import 'package:built_value/built_value.dart';
import 'package:vtah_flutter_intro_demo/bloc/tvshow/TvShowError.dart';
import 'package:vtah_flutter_intro_demo/model/tvshow.model.dart';

part 'TvShowState.g.dart';

abstract class TvShowState implements Built<TvShowState, TvShowStateBuilder> {
  List<TvShowModel> get data;

  int get count;

  @nullable
  TvShowError get error;

  TvShowState._();

  factory TvShowState([updates(TvShowStateBuilder b)]) = _$TvShowState;
}
