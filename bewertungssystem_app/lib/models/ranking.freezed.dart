// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ranking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RankingEntry _$RankingEntryFromJson(Map<String, dynamic> json) {
  return _RankingEntry.fromJson(json);
}

/// @nodoc
mixin _$RankingEntry {
  String get name => throw _privateConstructorUsedError;
  double get gesamtScore => throw _privateConstructorUsedError;
  bool get bestanden => throw _privateConstructorUsedError;
  Map<String, KategorieScore> get kategorieScores =>
      throw _privateConstructorUsedError;
  Analysis get analysis => throw _privateConstructorUsedError;

  /// Serializes this RankingEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RankingEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RankingEntryCopyWith<RankingEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankingEntryCopyWith<$Res> {
  factory $RankingEntryCopyWith(
    RankingEntry value,
    $Res Function(RankingEntry) then,
  ) = _$RankingEntryCopyWithImpl<$Res, RankingEntry>;
  @useResult
  $Res call({
    String name,
    double gesamtScore,
    bool bestanden,
    Map<String, KategorieScore> kategorieScores,
    Analysis analysis,
  });

  $AnalysisCopyWith<$Res> get analysis;
}

/// @nodoc
class _$RankingEntryCopyWithImpl<$Res, $Val extends RankingEntry>
    implements $RankingEntryCopyWith<$Res> {
  _$RankingEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RankingEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? gesamtScore = null,
    Object? bestanden = null,
    Object? kategorieScores = null,
    Object? analysis = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            gesamtScore: null == gesamtScore
                ? _value.gesamtScore
                : gesamtScore // ignore: cast_nullable_to_non_nullable
                      as double,
            bestanden: null == bestanden
                ? _value.bestanden
                : bestanden // ignore: cast_nullable_to_non_nullable
                      as bool,
            kategorieScores: null == kategorieScores
                ? _value.kategorieScores
                : kategorieScores // ignore: cast_nullable_to_non_nullable
                      as Map<String, KategorieScore>,
            analysis: null == analysis
                ? _value.analysis
                : analysis // ignore: cast_nullable_to_non_nullable
                      as Analysis,
          )
          as $Val,
    );
  }

  /// Create a copy of RankingEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnalysisCopyWith<$Res> get analysis {
    return $AnalysisCopyWith<$Res>(_value.analysis, (value) {
      return _then(_value.copyWith(analysis: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RankingEntryImplCopyWith<$Res>
    implements $RankingEntryCopyWith<$Res> {
  factory _$$RankingEntryImplCopyWith(
    _$RankingEntryImpl value,
    $Res Function(_$RankingEntryImpl) then,
  ) = __$$RankingEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    double gesamtScore,
    bool bestanden,
    Map<String, KategorieScore> kategorieScores,
    Analysis analysis,
  });

  @override
  $AnalysisCopyWith<$Res> get analysis;
}

/// @nodoc
class __$$RankingEntryImplCopyWithImpl<$Res>
    extends _$RankingEntryCopyWithImpl<$Res, _$RankingEntryImpl>
    implements _$$RankingEntryImplCopyWith<$Res> {
  __$$RankingEntryImplCopyWithImpl(
    _$RankingEntryImpl _value,
    $Res Function(_$RankingEntryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RankingEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? gesamtScore = null,
    Object? bestanden = null,
    Object? kategorieScores = null,
    Object? analysis = null,
  }) {
    return _then(
      _$RankingEntryImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        gesamtScore: null == gesamtScore
            ? _value.gesamtScore
            : gesamtScore // ignore: cast_nullable_to_non_nullable
                  as double,
        bestanden: null == bestanden
            ? _value.bestanden
            : bestanden // ignore: cast_nullable_to_non_nullable
                  as bool,
        kategorieScores: null == kategorieScores
            ? _value._kategorieScores
            : kategorieScores // ignore: cast_nullable_to_non_nullable
                  as Map<String, KategorieScore>,
        analysis: null == analysis
            ? _value.analysis
            : analysis // ignore: cast_nullable_to_non_nullable
                  as Analysis,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RankingEntryImpl implements _RankingEntry {
  const _$RankingEntryImpl({
    required this.name,
    required this.gesamtScore,
    required this.bestanden,
    required final Map<String, KategorieScore> kategorieScores,
    required this.analysis,
  }) : _kategorieScores = kategorieScores;

  factory _$RankingEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$RankingEntryImplFromJson(json);

  @override
  final String name;
  @override
  final double gesamtScore;
  @override
  final bool bestanden;
  final Map<String, KategorieScore> _kategorieScores;
  @override
  Map<String, KategorieScore> get kategorieScores {
    if (_kategorieScores is EqualUnmodifiableMapView) return _kategorieScores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_kategorieScores);
  }

  @override
  final Analysis analysis;

  @override
  String toString() {
    return 'RankingEntry(name: $name, gesamtScore: $gesamtScore, bestanden: $bestanden, kategorieScores: $kategorieScores, analysis: $analysis)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RankingEntryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gesamtScore, gesamtScore) ||
                other.gesamtScore == gesamtScore) &&
            (identical(other.bestanden, bestanden) ||
                other.bestanden == bestanden) &&
            const DeepCollectionEquality().equals(
              other._kategorieScores,
              _kategorieScores,
            ) &&
            (identical(other.analysis, analysis) ||
                other.analysis == analysis));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    gesamtScore,
    bestanden,
    const DeepCollectionEquality().hash(_kategorieScores),
    analysis,
  );

  /// Create a copy of RankingEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RankingEntryImplCopyWith<_$RankingEntryImpl> get copyWith =>
      __$$RankingEntryImplCopyWithImpl<_$RankingEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RankingEntryImplToJson(this);
  }
}

abstract class _RankingEntry implements RankingEntry {
  const factory _RankingEntry({
    required final String name,
    required final double gesamtScore,
    required final bool bestanden,
    required final Map<String, KategorieScore> kategorieScores,
    required final Analysis analysis,
  }) = _$RankingEntryImpl;

  factory _RankingEntry.fromJson(Map<String, dynamic> json) =
      _$RankingEntryImpl.fromJson;

  @override
  String get name;
  @override
  double get gesamtScore;
  @override
  bool get bestanden;
  @override
  Map<String, KategorieScore> get kategorieScores;
  @override
  Analysis get analysis;

  /// Create a copy of RankingEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RankingEntryImplCopyWith<_$RankingEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KategorieScore _$KategorieScoreFromJson(Map<String, dynamic> json) {
  return _KategorieScore.fromJson(json);
}

/// @nodoc
mixin _$KategorieScore {
  double get score => throw _privateConstructorUsedError;

  /// Serializes this KategorieScore to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KategorieScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KategorieScoreCopyWith<KategorieScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KategorieScoreCopyWith<$Res> {
  factory $KategorieScoreCopyWith(
    KategorieScore value,
    $Res Function(KategorieScore) then,
  ) = _$KategorieScoreCopyWithImpl<$Res, KategorieScore>;
  @useResult
  $Res call({double score});
}

/// @nodoc
class _$KategorieScoreCopyWithImpl<$Res, $Val extends KategorieScore>
    implements $KategorieScoreCopyWith<$Res> {
  _$KategorieScoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KategorieScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? score = null}) {
    return _then(
      _value.copyWith(
            score: null == score
                ? _value.score
                : score // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$KategorieScoreImplCopyWith<$Res>
    implements $KategorieScoreCopyWith<$Res> {
  factory _$$KategorieScoreImplCopyWith(
    _$KategorieScoreImpl value,
    $Res Function(_$KategorieScoreImpl) then,
  ) = __$$KategorieScoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double score});
}

/// @nodoc
class __$$KategorieScoreImplCopyWithImpl<$Res>
    extends _$KategorieScoreCopyWithImpl<$Res, _$KategorieScoreImpl>
    implements _$$KategorieScoreImplCopyWith<$Res> {
  __$$KategorieScoreImplCopyWithImpl(
    _$KategorieScoreImpl _value,
    $Res Function(_$KategorieScoreImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of KategorieScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? score = null}) {
    return _then(
      _$KategorieScoreImpl(
        score: null == score
            ? _value.score
            : score // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$KategorieScoreImpl implements _KategorieScore {
  const _$KategorieScoreImpl({required this.score});

  factory _$KategorieScoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$KategorieScoreImplFromJson(json);

  @override
  final double score;

  @override
  String toString() {
    return 'KategorieScore(score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KategorieScoreImpl &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, score);

  /// Create a copy of KategorieScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KategorieScoreImplCopyWith<_$KategorieScoreImpl> get copyWith =>
      __$$KategorieScoreImplCopyWithImpl<_$KategorieScoreImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$KategorieScoreImplToJson(this);
  }
}

abstract class _KategorieScore implements KategorieScore {
  const factory _KategorieScore({required final double score}) =
      _$KategorieScoreImpl;

  factory _KategorieScore.fromJson(Map<String, dynamic> json) =
      _$KategorieScoreImpl.fromJson;

  @override
  double get score;

  /// Create a copy of KategorieScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KategorieScoreImplCopyWith<_$KategorieScoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Analysis _$AnalysisFromJson(Map<String, dynamic> json) {
  return _Analysis.fromJson(json);
}

/// @nodoc
mixin _$Analysis {
  List<AnalysisItem> get staerken => throw _privateConstructorUsedError;
  List<AnalysisItem> get schwachen => throw _privateConstructorUsedError;

  /// Serializes this Analysis to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Analysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnalysisCopyWith<Analysis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalysisCopyWith<$Res> {
  factory $AnalysisCopyWith(Analysis value, $Res Function(Analysis) then) =
      _$AnalysisCopyWithImpl<$Res, Analysis>;
  @useResult
  $Res call({List<AnalysisItem> staerken, List<AnalysisItem> schwachen});
}

/// @nodoc
class _$AnalysisCopyWithImpl<$Res, $Val extends Analysis>
    implements $AnalysisCopyWith<$Res> {
  _$AnalysisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Analysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? staerken = null, Object? schwachen = null}) {
    return _then(
      _value.copyWith(
            staerken: null == staerken
                ? _value.staerken
                : staerken // ignore: cast_nullable_to_non_nullable
                      as List<AnalysisItem>,
            schwachen: null == schwachen
                ? _value.schwachen
                : schwachen // ignore: cast_nullable_to_non_nullable
                      as List<AnalysisItem>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AnalysisImplCopyWith<$Res>
    implements $AnalysisCopyWith<$Res> {
  factory _$$AnalysisImplCopyWith(
    _$AnalysisImpl value,
    $Res Function(_$AnalysisImpl) then,
  ) = __$$AnalysisImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AnalysisItem> staerken, List<AnalysisItem> schwachen});
}

/// @nodoc
class __$$AnalysisImplCopyWithImpl<$Res>
    extends _$AnalysisCopyWithImpl<$Res, _$AnalysisImpl>
    implements _$$AnalysisImplCopyWith<$Res> {
  __$$AnalysisImplCopyWithImpl(
    _$AnalysisImpl _value,
    $Res Function(_$AnalysisImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Analysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? staerken = null, Object? schwachen = null}) {
    return _then(
      _$AnalysisImpl(
        staerken: null == staerken
            ? _value._staerken
            : staerken // ignore: cast_nullable_to_non_nullable
                  as List<AnalysisItem>,
        schwachen: null == schwachen
            ? _value._schwachen
            : schwachen // ignore: cast_nullable_to_non_nullable
                  as List<AnalysisItem>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalysisImpl implements _Analysis {
  const _$AnalysisImpl({
    required final List<AnalysisItem> staerken,
    required final List<AnalysisItem> schwachen,
  }) : _staerken = staerken,
       _schwachen = schwachen;

  factory _$AnalysisImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalysisImplFromJson(json);

  final List<AnalysisItem> _staerken;
  @override
  List<AnalysisItem> get staerken {
    if (_staerken is EqualUnmodifiableListView) return _staerken;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_staerken);
  }

  final List<AnalysisItem> _schwachen;
  @override
  List<AnalysisItem> get schwachen {
    if (_schwachen is EqualUnmodifiableListView) return _schwachen;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schwachen);
  }

  @override
  String toString() {
    return 'Analysis(staerken: $staerken, schwachen: $schwachen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalysisImpl &&
            const DeepCollectionEquality().equals(other._staerken, _staerken) &&
            const DeepCollectionEquality().equals(
              other._schwachen,
              _schwachen,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_staerken),
    const DeepCollectionEquality().hash(_schwachen),
  );

  /// Create a copy of Analysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalysisImplCopyWith<_$AnalysisImpl> get copyWith =>
      __$$AnalysisImplCopyWithImpl<_$AnalysisImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalysisImplToJson(this);
  }
}

abstract class _Analysis implements Analysis {
  const factory _Analysis({
    required final List<AnalysisItem> staerken,
    required final List<AnalysisItem> schwachen,
  }) = _$AnalysisImpl;

  factory _Analysis.fromJson(Map<String, dynamic> json) =
      _$AnalysisImpl.fromJson;

  @override
  List<AnalysisItem> get staerken;
  @override
  List<AnalysisItem> get schwachen;

  /// Create a copy of Analysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalysisImplCopyWith<_$AnalysisImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AnalysisItem _$AnalysisItemFromJson(Map<String, dynamic> json) {
  return _AnalysisItem.fromJson(json);
}

/// @nodoc
mixin _$AnalysisItem {
  String get kriterium => throw _privateConstructorUsedError;
  double get punkte => throw _privateConstructorUsedError;

  /// Serializes this AnalysisItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnalysisItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnalysisItemCopyWith<AnalysisItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalysisItemCopyWith<$Res> {
  factory $AnalysisItemCopyWith(
    AnalysisItem value,
    $Res Function(AnalysisItem) then,
  ) = _$AnalysisItemCopyWithImpl<$Res, AnalysisItem>;
  @useResult
  $Res call({String kriterium, double punkte});
}

/// @nodoc
class _$AnalysisItemCopyWithImpl<$Res, $Val extends AnalysisItem>
    implements $AnalysisItemCopyWith<$Res> {
  _$AnalysisItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnalysisItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? kriterium = null, Object? punkte = null}) {
    return _then(
      _value.copyWith(
            kriterium: null == kriterium
                ? _value.kriterium
                : kriterium // ignore: cast_nullable_to_non_nullable
                      as String,
            punkte: null == punkte
                ? _value.punkte
                : punkte // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AnalysisItemImplCopyWith<$Res>
    implements $AnalysisItemCopyWith<$Res> {
  factory _$$AnalysisItemImplCopyWith(
    _$AnalysisItemImpl value,
    $Res Function(_$AnalysisItemImpl) then,
  ) = __$$AnalysisItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String kriterium, double punkte});
}

/// @nodoc
class __$$AnalysisItemImplCopyWithImpl<$Res>
    extends _$AnalysisItemCopyWithImpl<$Res, _$AnalysisItemImpl>
    implements _$$AnalysisItemImplCopyWith<$Res> {
  __$$AnalysisItemImplCopyWithImpl(
    _$AnalysisItemImpl _value,
    $Res Function(_$AnalysisItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AnalysisItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? kriterium = null, Object? punkte = null}) {
    return _then(
      _$AnalysisItemImpl(
        kriterium: null == kriterium
            ? _value.kriterium
            : kriterium // ignore: cast_nullable_to_non_nullable
                  as String,
        punkte: null == punkte
            ? _value.punkte
            : punkte // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalysisItemImpl implements _AnalysisItem {
  const _$AnalysisItemImpl({required this.kriterium, required this.punkte});

  factory _$AnalysisItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalysisItemImplFromJson(json);

  @override
  final String kriterium;
  @override
  final double punkte;

  @override
  String toString() {
    return 'AnalysisItem(kriterium: $kriterium, punkte: $punkte)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalysisItemImpl &&
            (identical(other.kriterium, kriterium) ||
                other.kriterium == kriterium) &&
            (identical(other.punkte, punkte) || other.punkte == punkte));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, kriterium, punkte);

  /// Create a copy of AnalysisItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalysisItemImplCopyWith<_$AnalysisItemImpl> get copyWith =>
      __$$AnalysisItemImplCopyWithImpl<_$AnalysisItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalysisItemImplToJson(this);
  }
}

abstract class _AnalysisItem implements AnalysisItem {
  const factory _AnalysisItem({
    required final String kriterium,
    required final double punkte,
  }) = _$AnalysisItemImpl;

  factory _AnalysisItem.fromJson(Map<String, dynamic> json) =
      _$AnalysisItemImpl.fromJson;

  @override
  String get kriterium;
  @override
  double get punkte;

  /// Create a copy of AnalysisItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalysisItemImplCopyWith<_$AnalysisItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
