import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tvshow.api.model.g.dart';

@immutable
@JsonSerializable(includeIfNull: false)
class TvShowApiModel {
  const TvShowApiModel(this.feed);

  @JsonKey(name: "feed")
  final _FeedApiModel feed;

  factory TvShowApiModel.fromJson(Map<String, dynamic> json) =>
      _$TvShowApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$TvShowApiModelToJson(this);
}

@immutable
@JsonSerializable(includeIfNull: false)
class _FeedApiModel {
  const _FeedApiModel(this.results);

  @JsonKey(name: "results")
  final List<_FeedResultApiModel> results;

  factory _FeedApiModel.fromJson(Map<String, dynamic> json) =>
      _$_FeedApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$_FeedApiModelToJson(this);
}

@immutable
@JsonSerializable(includeIfNull: false)
class _FeedResultApiModel {
  const _FeedResultApiModel(this.artistName, this.artworkUrl);

  @JsonKey(name: "artistName")
  final String artistName;
  @JsonKey(name: "artworkUrl100")
  final String artworkUrl;

  factory _FeedResultApiModel.fromJson(Map<String, dynamic> json) =>
      _$_FeedResultApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$_FeedResultApiModelToJson(this);
}
