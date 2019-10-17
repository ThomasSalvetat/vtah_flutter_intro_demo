// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TvShowState.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TvShowState extends TvShowState {
  @override
  final List<TvShowModel> data;
  @override
  final int count;
  @override
  final TvShowError error;

  factory _$TvShowState([void Function(TvShowStateBuilder) updates]) =>
      (new TvShowStateBuilder()..update(updates)).build();

  _$TvShowState._({this.data, this.count, this.error}) : super._() {
    if (data == null) {
      throw new BuiltValueNullFieldError('TvShowState', 'data');
    }
    if (count == null) {
      throw new BuiltValueNullFieldError('TvShowState', 'count');
    }
  }

  @override
  TvShowState rebuild(void Function(TvShowStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TvShowStateBuilder toBuilder() => new TvShowStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TvShowState &&
        data == other.data &&
        count == other.count &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, data.hashCode), count.hashCode), error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TvShowState')
          ..add('data', data)
          ..add('count', count)
          ..add('error', error))
        .toString();
  }
}

class TvShowStateBuilder implements Builder<TvShowState, TvShowStateBuilder> {
  _$TvShowState _$v;

  List<TvShowModel> _data;

  List<TvShowModel> get data => _$this._data;

  set data(List<TvShowModel> data) => _$this._data = data;

  int _count;

  int get count => _$this._count;

  set count(int count) => _$this._count = count;

  TvShowError _error;

  TvShowError get error => _$this._error;

  set error(TvShowError error) => _$this._error = error;

  TvShowStateBuilder();

  TvShowStateBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data;
      _count = _$v.count;
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TvShowState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TvShowState;
  }

  @override
  void update(void Function(TvShowStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TvShowState build() {
    final _$result =
        _$v ?? new _$TvShowState._(data: data, count: count, error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
