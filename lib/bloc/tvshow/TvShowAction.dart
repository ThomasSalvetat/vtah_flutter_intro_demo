enum TvShowEvent { reset, fetch }

class TvShowAction {
  const TvShowAction({this.event});

  final TvShowEvent event;
}
