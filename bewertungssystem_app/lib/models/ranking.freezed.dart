// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ranking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RankingEntry {

 String get name;@JsonKey(name: 'gesamt_score') double get gesamtScore; bool get bestanden;@JsonKey(name: 'kategorie_scores') Map<String, KategorieScore> get kategorieScores; Analysis get analysis;
/// Create a copy of RankingEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RankingEntryCopyWith<RankingEntry> get copyWith => _$RankingEntryCopyWithImpl<RankingEntry>(this as RankingEntry, _$identity);

  /// Serializes this RankingEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RankingEntry&&(identical(other.name, name) || other.name == name)&&(identical(other.gesamtScore, gesamtScore) || other.gesamtScore == gesamtScore)&&(identical(other.bestanden, bestanden) || other.bestanden == bestanden)&&const DeepCollectionEquality().equals(other.kategorieScores, kategorieScores)&&(identical(other.analysis, analysis) || other.analysis == analysis));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,gesamtScore,bestanden,const DeepCollectionEquality().hash(kategorieScores),analysis);

@override
String toString() {
  return 'RankingEntry(name: $name, gesamtScore: $gesamtScore, bestanden: $bestanden, kategorieScores: $kategorieScores, analysis: $analysis)';
}


}

/// @nodoc
abstract mixin class $RankingEntryCopyWith<$Res>  {
  factory $RankingEntryCopyWith(RankingEntry value, $Res Function(RankingEntry) _then) = _$RankingEntryCopyWithImpl;
@useResult
$Res call({
 String name,@JsonKey(name: 'gesamt_score') double gesamtScore, bool bestanden,@JsonKey(name: 'kategorie_scores') Map<String, KategorieScore> kategorieScores, Analysis analysis
});


$AnalysisCopyWith<$Res> get analysis;

}
/// @nodoc
class _$RankingEntryCopyWithImpl<$Res>
    implements $RankingEntryCopyWith<$Res> {
  _$RankingEntryCopyWithImpl(this._self, this._then);

  final RankingEntry _self;
  final $Res Function(RankingEntry) _then;

/// Create a copy of RankingEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? gesamtScore = null,Object? bestanden = null,Object? kategorieScores = null,Object? analysis = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,gesamtScore: null == gesamtScore ? _self.gesamtScore : gesamtScore // ignore: cast_nullable_to_non_nullable
as double,bestanden: null == bestanden ? _self.bestanden : bestanden // ignore: cast_nullable_to_non_nullable
as bool,kategorieScores: null == kategorieScores ? _self.kategorieScores : kategorieScores // ignore: cast_nullable_to_non_nullable
as Map<String, KategorieScore>,analysis: null == analysis ? _self.analysis : analysis // ignore: cast_nullable_to_non_nullable
as Analysis,
  ));
}
/// Create a copy of RankingEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalysisCopyWith<$Res> get analysis {
  
  return $AnalysisCopyWith<$Res>(_self.analysis, (value) {
    return _then(_self.copyWith(analysis: value));
  });
}
}


/// Adds pattern-matching-related methods to [RankingEntry].
extension RankingEntryPatterns on RankingEntry {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RankingEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RankingEntry() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RankingEntry value)  $default,){
final _that = this;
switch (_that) {
case _RankingEntry():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RankingEntry value)?  $default,){
final _that = this;
switch (_that) {
case _RankingEntry() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name, @JsonKey(name: 'gesamt_score')  double gesamtScore,  bool bestanden, @JsonKey(name: 'kategorie_scores')  Map<String, KategorieScore> kategorieScores,  Analysis analysis)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RankingEntry() when $default != null:
return $default(_that.name,_that.gesamtScore,_that.bestanden,_that.kategorieScores,_that.analysis);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name, @JsonKey(name: 'gesamt_score')  double gesamtScore,  bool bestanden, @JsonKey(name: 'kategorie_scores')  Map<String, KategorieScore> kategorieScores,  Analysis analysis)  $default,) {final _that = this;
switch (_that) {
case _RankingEntry():
return $default(_that.name,_that.gesamtScore,_that.bestanden,_that.kategorieScores,_that.analysis);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name, @JsonKey(name: 'gesamt_score')  double gesamtScore,  bool bestanden, @JsonKey(name: 'kategorie_scores')  Map<String, KategorieScore> kategorieScores,  Analysis analysis)?  $default,) {final _that = this;
switch (_that) {
case _RankingEntry() when $default != null:
return $default(_that.name,_that.gesamtScore,_that.bestanden,_that.kategorieScores,_that.analysis);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RankingEntry implements RankingEntry {
  const _RankingEntry({required this.name, @JsonKey(name: 'gesamt_score') required this.gesamtScore, required this.bestanden, @JsonKey(name: 'kategorie_scores') required final  Map<String, KategorieScore> kategorieScores, required this.analysis}): _kategorieScores = kategorieScores;
  factory _RankingEntry.fromJson(Map<String, dynamic> json) => _$RankingEntryFromJson(json);

@override final  String name;
@override@JsonKey(name: 'gesamt_score') final  double gesamtScore;
@override final  bool bestanden;
 final  Map<String, KategorieScore> _kategorieScores;
@override@JsonKey(name: 'kategorie_scores') Map<String, KategorieScore> get kategorieScores {
  if (_kategorieScores is EqualUnmodifiableMapView) return _kategorieScores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_kategorieScores);
}

@override final  Analysis analysis;

/// Create a copy of RankingEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RankingEntryCopyWith<_RankingEntry> get copyWith => __$RankingEntryCopyWithImpl<_RankingEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RankingEntryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RankingEntry&&(identical(other.name, name) || other.name == name)&&(identical(other.gesamtScore, gesamtScore) || other.gesamtScore == gesamtScore)&&(identical(other.bestanden, bestanden) || other.bestanden == bestanden)&&const DeepCollectionEquality().equals(other._kategorieScores, _kategorieScores)&&(identical(other.analysis, analysis) || other.analysis == analysis));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,gesamtScore,bestanden,const DeepCollectionEquality().hash(_kategorieScores),analysis);

@override
String toString() {
  return 'RankingEntry(name: $name, gesamtScore: $gesamtScore, bestanden: $bestanden, kategorieScores: $kategorieScores, analysis: $analysis)';
}


}

/// @nodoc
abstract mixin class _$RankingEntryCopyWith<$Res> implements $RankingEntryCopyWith<$Res> {
  factory _$RankingEntryCopyWith(_RankingEntry value, $Res Function(_RankingEntry) _then) = __$RankingEntryCopyWithImpl;
@override @useResult
$Res call({
 String name,@JsonKey(name: 'gesamt_score') double gesamtScore, bool bestanden,@JsonKey(name: 'kategorie_scores') Map<String, KategorieScore> kategorieScores, Analysis analysis
});


@override $AnalysisCopyWith<$Res> get analysis;

}
/// @nodoc
class __$RankingEntryCopyWithImpl<$Res>
    implements _$RankingEntryCopyWith<$Res> {
  __$RankingEntryCopyWithImpl(this._self, this._then);

  final _RankingEntry _self;
  final $Res Function(_RankingEntry) _then;

/// Create a copy of RankingEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? gesamtScore = null,Object? bestanden = null,Object? kategorieScores = null,Object? analysis = null,}) {
  return _then(_RankingEntry(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,gesamtScore: null == gesamtScore ? _self.gesamtScore : gesamtScore // ignore: cast_nullable_to_non_nullable
as double,bestanden: null == bestanden ? _self.bestanden : bestanden // ignore: cast_nullable_to_non_nullable
as bool,kategorieScores: null == kategorieScores ? _self._kategorieScores : kategorieScores // ignore: cast_nullable_to_non_nullable
as Map<String, KategorieScore>,analysis: null == analysis ? _self.analysis : analysis // ignore: cast_nullable_to_non_nullable
as Analysis,
  ));
}

/// Create a copy of RankingEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalysisCopyWith<$Res> get analysis {
  
  return $AnalysisCopyWith<$Res>(_self.analysis, (value) {
    return _then(_self.copyWith(analysis: value));
  });
}
}


/// @nodoc
mixin _$KategorieScore {

 double get score;
/// Create a copy of KategorieScore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KategorieScoreCopyWith<KategorieScore> get copyWith => _$KategorieScoreCopyWithImpl<KategorieScore>(this as KategorieScore, _$identity);

  /// Serializes this KategorieScore to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KategorieScore&&(identical(other.score, score) || other.score == score));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score);

@override
String toString() {
  return 'KategorieScore(score: $score)';
}


}

/// @nodoc
abstract mixin class $KategorieScoreCopyWith<$Res>  {
  factory $KategorieScoreCopyWith(KategorieScore value, $Res Function(KategorieScore) _then) = _$KategorieScoreCopyWithImpl;
@useResult
$Res call({
 double score
});




}
/// @nodoc
class _$KategorieScoreCopyWithImpl<$Res>
    implements $KategorieScoreCopyWith<$Res> {
  _$KategorieScoreCopyWithImpl(this._self, this._then);

  final KategorieScore _self;
  final $Res Function(KategorieScore) _then;

/// Create a copy of KategorieScore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? score = null,}) {
  return _then(_self.copyWith(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [KategorieScore].
extension KategorieScorePatterns on KategorieScore {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KategorieScore value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KategorieScore() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KategorieScore value)  $default,){
final _that = this;
switch (_that) {
case _KategorieScore():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KategorieScore value)?  $default,){
final _that = this;
switch (_that) {
case _KategorieScore() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double score)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KategorieScore() when $default != null:
return $default(_that.score);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double score)  $default,) {final _that = this;
switch (_that) {
case _KategorieScore():
return $default(_that.score);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double score)?  $default,) {final _that = this;
switch (_that) {
case _KategorieScore() when $default != null:
return $default(_that.score);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KategorieScore implements KategorieScore {
  const _KategorieScore({required this.score});
  factory _KategorieScore.fromJson(Map<String, dynamic> json) => _$KategorieScoreFromJson(json);

@override final  double score;

/// Create a copy of KategorieScore
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KategorieScoreCopyWith<_KategorieScore> get copyWith => __$KategorieScoreCopyWithImpl<_KategorieScore>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KategorieScoreToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KategorieScore&&(identical(other.score, score) || other.score == score));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score);

@override
String toString() {
  return 'KategorieScore(score: $score)';
}


}

/// @nodoc
abstract mixin class _$KategorieScoreCopyWith<$Res> implements $KategorieScoreCopyWith<$Res> {
  factory _$KategorieScoreCopyWith(_KategorieScore value, $Res Function(_KategorieScore) _then) = __$KategorieScoreCopyWithImpl;
@override @useResult
$Res call({
 double score
});




}
/// @nodoc
class __$KategorieScoreCopyWithImpl<$Res>
    implements _$KategorieScoreCopyWith<$Res> {
  __$KategorieScoreCopyWithImpl(this._self, this._then);

  final _KategorieScore _self;
  final $Res Function(_KategorieScore) _then;

/// Create a copy of KategorieScore
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? score = null,}) {
  return _then(_KategorieScore(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$Analysis {

 List<AnalysisItem> get staerken; List<AnalysisItem> get schwaechen;
/// Create a copy of Analysis
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalysisCopyWith<Analysis> get copyWith => _$AnalysisCopyWithImpl<Analysis>(this as Analysis, _$identity);

  /// Serializes this Analysis to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Analysis&&const DeepCollectionEquality().equals(other.staerken, staerken)&&const DeepCollectionEquality().equals(other.schwaechen, schwaechen));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(staerken),const DeepCollectionEquality().hash(schwaechen));

@override
String toString() {
  return 'Analysis(staerken: $staerken, schwaechen: $schwaechen)';
}


}

/// @nodoc
abstract mixin class $AnalysisCopyWith<$Res>  {
  factory $AnalysisCopyWith(Analysis value, $Res Function(Analysis) _then) = _$AnalysisCopyWithImpl;
@useResult
$Res call({
 List<AnalysisItem> staerken, List<AnalysisItem> schwaechen
});




}
/// @nodoc
class _$AnalysisCopyWithImpl<$Res>
    implements $AnalysisCopyWith<$Res> {
  _$AnalysisCopyWithImpl(this._self, this._then);

  final Analysis _self;
  final $Res Function(Analysis) _then;

/// Create a copy of Analysis
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? staerken = null,Object? schwaechen = null,}) {
  return _then(_self.copyWith(
staerken: null == staerken ? _self.staerken : staerken // ignore: cast_nullable_to_non_nullable
as List<AnalysisItem>,schwaechen: null == schwaechen ? _self.schwaechen : schwaechen // ignore: cast_nullable_to_non_nullable
as List<AnalysisItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [Analysis].
extension AnalysisPatterns on Analysis {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Analysis value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Analysis() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Analysis value)  $default,){
final _that = this;
switch (_that) {
case _Analysis():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Analysis value)?  $default,){
final _that = this;
switch (_that) {
case _Analysis() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AnalysisItem> staerken,  List<AnalysisItem> schwaechen)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Analysis() when $default != null:
return $default(_that.staerken,_that.schwaechen);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AnalysisItem> staerken,  List<AnalysisItem> schwaechen)  $default,) {final _that = this;
switch (_that) {
case _Analysis():
return $default(_that.staerken,_that.schwaechen);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AnalysisItem> staerken,  List<AnalysisItem> schwaechen)?  $default,) {final _that = this;
switch (_that) {
case _Analysis() when $default != null:
return $default(_that.staerken,_that.schwaechen);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Analysis implements Analysis {
  const _Analysis({required final  List<AnalysisItem> staerken, required final  List<AnalysisItem> schwaechen}): _staerken = staerken,_schwaechen = schwaechen;
  factory _Analysis.fromJson(Map<String, dynamic> json) => _$AnalysisFromJson(json);

 final  List<AnalysisItem> _staerken;
@override List<AnalysisItem> get staerken {
  if (_staerken is EqualUnmodifiableListView) return _staerken;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_staerken);
}

 final  List<AnalysisItem> _schwaechen;
@override List<AnalysisItem> get schwaechen {
  if (_schwaechen is EqualUnmodifiableListView) return _schwaechen;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_schwaechen);
}


/// Create a copy of Analysis
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalysisCopyWith<_Analysis> get copyWith => __$AnalysisCopyWithImpl<_Analysis>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnalysisToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Analysis&&const DeepCollectionEquality().equals(other._staerken, _staerken)&&const DeepCollectionEquality().equals(other._schwaechen, _schwaechen));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_staerken),const DeepCollectionEquality().hash(_schwaechen));

@override
String toString() {
  return 'Analysis(staerken: $staerken, schwaechen: $schwaechen)';
}


}

/// @nodoc
abstract mixin class _$AnalysisCopyWith<$Res> implements $AnalysisCopyWith<$Res> {
  factory _$AnalysisCopyWith(_Analysis value, $Res Function(_Analysis) _then) = __$AnalysisCopyWithImpl;
@override @useResult
$Res call({
 List<AnalysisItem> staerken, List<AnalysisItem> schwaechen
});




}
/// @nodoc
class __$AnalysisCopyWithImpl<$Res>
    implements _$AnalysisCopyWith<$Res> {
  __$AnalysisCopyWithImpl(this._self, this._then);

  final _Analysis _self;
  final $Res Function(_Analysis) _then;

/// Create a copy of Analysis
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? staerken = null,Object? schwaechen = null,}) {
  return _then(_Analysis(
staerken: null == staerken ? _self._staerken : staerken // ignore: cast_nullable_to_non_nullable
as List<AnalysisItem>,schwaechen: null == schwaechen ? _self._schwaechen : schwaechen // ignore: cast_nullable_to_non_nullable
as List<AnalysisItem>,
  ));
}


}


/// @nodoc
mixin _$AnalysisItem {

 String get kriterium; double get punkte;
/// Create a copy of AnalysisItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalysisItemCopyWith<AnalysisItem> get copyWith => _$AnalysisItemCopyWithImpl<AnalysisItem>(this as AnalysisItem, _$identity);

  /// Serializes this AnalysisItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalysisItem&&(identical(other.kriterium, kriterium) || other.kriterium == kriterium)&&(identical(other.punkte, punkte) || other.punkte == punkte));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kriterium,punkte);

@override
String toString() {
  return 'AnalysisItem(kriterium: $kriterium, punkte: $punkte)';
}


}

/// @nodoc
abstract mixin class $AnalysisItemCopyWith<$Res>  {
  factory $AnalysisItemCopyWith(AnalysisItem value, $Res Function(AnalysisItem) _then) = _$AnalysisItemCopyWithImpl;
@useResult
$Res call({
 String kriterium, double punkte
});




}
/// @nodoc
class _$AnalysisItemCopyWithImpl<$Res>
    implements $AnalysisItemCopyWith<$Res> {
  _$AnalysisItemCopyWithImpl(this._self, this._then);

  final AnalysisItem _self;
  final $Res Function(AnalysisItem) _then;

/// Create a copy of AnalysisItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kriterium = null,Object? punkte = null,}) {
  return _then(_self.copyWith(
kriterium: null == kriterium ? _self.kriterium : kriterium // ignore: cast_nullable_to_non_nullable
as String,punkte: null == punkte ? _self.punkte : punkte // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [AnalysisItem].
extension AnalysisItemPatterns on AnalysisItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalysisItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalysisItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalysisItem value)  $default,){
final _that = this;
switch (_that) {
case _AnalysisItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalysisItem value)?  $default,){
final _that = this;
switch (_that) {
case _AnalysisItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String kriterium,  double punkte)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalysisItem() when $default != null:
return $default(_that.kriterium,_that.punkte);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String kriterium,  double punkte)  $default,) {final _that = this;
switch (_that) {
case _AnalysisItem():
return $default(_that.kriterium,_that.punkte);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String kriterium,  double punkte)?  $default,) {final _that = this;
switch (_that) {
case _AnalysisItem() when $default != null:
return $default(_that.kriterium,_that.punkte);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnalysisItem implements AnalysisItem {
  const _AnalysisItem({required this.kriterium, required this.punkte});
  factory _AnalysisItem.fromJson(Map<String, dynamic> json) => _$AnalysisItemFromJson(json);

@override final  String kriterium;
@override final  double punkte;

/// Create a copy of AnalysisItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalysisItemCopyWith<_AnalysisItem> get copyWith => __$AnalysisItemCopyWithImpl<_AnalysisItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnalysisItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalysisItem&&(identical(other.kriterium, kriterium) || other.kriterium == kriterium)&&(identical(other.punkte, punkte) || other.punkte == punkte));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kriterium,punkte);

@override
String toString() {
  return 'AnalysisItem(kriterium: $kriterium, punkte: $punkte)';
}


}

/// @nodoc
abstract mixin class _$AnalysisItemCopyWith<$Res> implements $AnalysisItemCopyWith<$Res> {
  factory _$AnalysisItemCopyWith(_AnalysisItem value, $Res Function(_AnalysisItem) _then) = __$AnalysisItemCopyWithImpl;
@override @useResult
$Res call({
 String kriterium, double punkte
});




}
/// @nodoc
class __$AnalysisItemCopyWithImpl<$Res>
    implements _$AnalysisItemCopyWith<$Res> {
  __$AnalysisItemCopyWithImpl(this._self, this._then);

  final _AnalysisItem _self;
  final $Res Function(_AnalysisItem) _then;

/// Create a copy of AnalysisItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kriterium = null,Object? punkte = null,}) {
  return _then(_AnalysisItem(
kriterium: null == kriterium ? _self.kriterium : kriterium // ignore: cast_nullable_to_non_nullable
as String,punkte: null == punkte ? _self.punkte : punkte // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
