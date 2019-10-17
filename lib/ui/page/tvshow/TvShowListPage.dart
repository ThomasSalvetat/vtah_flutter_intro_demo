import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vtah_flutter_intro_demo/bloc/tvshow/TvShowBloc.dart';
import 'package:vtah_flutter_intro_demo/business/tvshow/tvshow.api.http.dart';
import 'package:vtah_flutter_intro_demo/business/tvshow/tvshow.repository.dart';
import 'package:vtah_flutter_intro_demo/ui/components/tvshow/TvShowListView.dart';

class TvShowListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        builder: (context) => TvShowBloc(TvShowRepository(TvShowHttpService())),
        child: TvShowListView());
  }
}
