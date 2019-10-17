// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tvshow.api.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvShowApiModel _$TvShowApiModelFromJson(Map<String, dynamic> json) {
  return TvShowApiModel(
    json['feed'] == null
        ? null
        : _FeedApiModel.fromJson(json['feed'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TvShowApiModelToJson(TvShowApiModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('feed', instance.feed);
  return val;
}

_FeedApiModel _$_FeedApiModelFromJson(Map<String, dynamic> json) {
  return _FeedApiModel(
    (json['results'] as List)
        ?.map((e) => e == null
            ? null
            : _FeedResultApiModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_FeedApiModelToJson(_FeedApiModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('results', instance.results);
  return val;
}

_FeedResultApiModel _$_FeedResultApiModelFromJson(Map<String, dynamic> json) {
  return _FeedResultApiModel(
    json['artistName'] as String,
  );
}

Map<String, dynamic> _$_FeedResultApiModelToJson(_FeedResultApiModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('artistName', instance.artistName);
  return val;
}
