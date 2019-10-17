import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vtah_flutter_intro_demo/bloc/tvshow/TvShowAction.dart';
import 'package:vtah_flutter_intro_demo/bloc/tvshow/TvShowBloc.dart';
import 'package:vtah_flutter_intro_demo/bloc/tvshow/TvShowState.dart';
import 'package:vtah_flutter_intro_demo/ui/components/tvshow/TvShowListViewMaterial.dart';

class TvShowListView extends StatefulWidget {
  @override
  _TvShowListViewState createState() => _TvShowListViewState();
}

class _TvShowListViewState extends State<TvShowListView> {
  @override
  void initState() {
    super.initState();

    final TvShowBloc tvShowBloc = BlocProvider.of<TvShowBloc>(context);
    tvShowBloc.dispatch(TvShowAction(event: TvShowEvent.fetch));
  }

  @override
  Widget build(BuildContext context) {
    final TvShowBloc tvShowBloc = BlocProvider.of<TvShowBloc>(context);

    return BlocBuilder<TvShowBloc, TvShowState>(
        bloc: tvShowBloc,
        condition: (previousState, newState) => previousState != newState,
        builder: (context, state) =>
            TvShowListViewMaterial(tvShows: state.data));
  }
}
