// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vergleich.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VergleichEintrag {

 int get unternehmenId; String get name; String? get branche;@JsonKey(name: 'gesamt_score') double get gesamtScore; bool get bestanden;@JsonKey(name: 'kategorie_scores') Map<String, KategorieScore> get kategorieScores; Analyse get analyse;
/// Create a copy of VergleichEintrag
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VergleichEintragCopyWith<VergleichEintrag> get copyWith => _$VergleichEintragCopyWithImpl<VergleichEintrag>(this as VergleichEintrag, _$identity);

  /// Serializes this VergleichEintrag to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VergleichEintrag&&(identical(other.unternehmenId, unternehmenId) || other.unternehmenId == unternehmenId)&&(identical(other.name, name) || other.name == name)&&(identical(other.branche, branche) || other.branche == branche)&&(identical(other.gesamtScore, gesamtScore) || other.gesamtScore == gesamtScore)&&(identical(other.bestanden, bestanden) || other.bestanden == bestanden)&&const DeepCollectionEquality().equals(other.kategorieScores, kategorieScores)&&(identical(other.analyse, analyse) || other.analyse == analyse));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,unternehmenId,name,branche,gesamtScore,bestanden,const DeepCollectionEquality().hash(kategorieScores),analyse);

@override
String toString() {
  return 'VergleichEintrag(unternehmenId: $unternehmenId, name: $name, branche: $branche, gesamtScore: $gesamtScore, bestanden: $bestanden, kategorieScores: $kategorieScores, analyse: $analyse)';
}


}

/// @nodoc
abstract mixin class $VergleichEintragCopyWith<$Res>  {
  factory $VergleichEintragCopyWith(VergleichEintrag value, $Res Function(VergleichEintrag) _then) = _$VergleichEintragCopyWithImpl;
@useResult
$Res call({
 int unternehmenId, String name, String? branche,@JsonKey(name: 'gesamt_score') double gesamtScore, bool bestanden,@JsonKey(name: 'kategorie_scores') Map<String, KategorieScore> kategorieScores, Analyse analyse
});


$AnalyseCopyWith<$Res> get analyse;

}
/// @nodoc
class _$VergleichEintragCopyWithImpl<$Res>
    implements $VergleichEintragCopyWith<$Res> {
  _$VergleichEintragCopyWithImpl(this._self, this._then);

  final VergleichEintrag _self;
  final $Res Function(VergleichEintrag) _then;

/// Create a copy of VergleichEintrag
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? unternehmenId = null,Object? name = null,Object? branche = freezed,Object? gesamtScore = null,Object? bestanden = null,Object? kategorieScores = null,Object? analyse = null,}) {
  return _then(_self.copyWith(
unternehmenId: null == unternehmenId ? _self.unternehmenId : unternehmenId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,branche: freezed == branche ? _self.branche : branche // ignore: cast_nullable_to_non_nullable
as String?,gesamtScore: null == gesamtScore ? _self.gesamtScore : gesamtScore // ignore: cast_nullable_to_non_nullable
as double,bestanden: null == bestanden ? _self.bestanden : bestanden // ignore: cast_nullable_to_non_nullable
as bool,kategorieScores: null == kategorieScores ? _self.kategorieScores : kategorieScores // ignore: cast_nullable_to_non_nullable
as Map<String, KategorieScore>,analyse: null == analyse ? _self.analyse : analyse // ignore: cast_nullable_to_non_nullable
as Analyse,
  ));
}
/// Create a copy of VergleichEintrag
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalyseCopyWith<$Res> get analyse {
  
  return $AnalyseCopyWith<$Res>(_self.analyse, (value) {
    return _then(_self.copyWith(analyse: value));
  });
}
}


/// Adds pattern-matching-related methods to [VergleichEintrag].
extension VergleichEintragPatterns on VergleichEintrag {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VergleichEintrag value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VergleichEintrag() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VergleichEintrag value)  $default,){
final _that = this;
switch (_that) {
case _VergleichEintrag():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VergleichEintrag value)?  $default,){
final _that = this;
switch (_that) {
case _VergleichEintrag() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int unternehmenId,  String name,  String? branche, @JsonKey(name: 'gesamt_score')  double gesamtScore,  bool bestanden, @JsonKey(name: 'kategorie_scores')  Map<String, KategorieScore> kategorieScores,  Analyse analyse)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VergleichEintrag() when $default != null:
return $default(_that.unternehmenId,_that.name,_that.branche,_that.gesamtScore,_that.bestanden,_that.kategorieScores,_that.analyse);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int unternehmenId,  String name,  String? branche, @JsonKey(name: 'gesamt_score')  double gesamtScore,  bool bestanden, @JsonKey(name: 'kategorie_scores')  Map<String, KategorieScore> kategorieScores,  Analyse analyse)  $default,) {final _that = this;
switch (_that) {
case _VergleichEintrag():
return $default(_that.unternehmenId,_that.name,_that.branche,_that.gesamtScore,_that.bestanden,_that.kategorieScores,_that.analyse);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int unternehmenId,  String name,  String? branche, @JsonKey(name: 'gesamt_score')  double gesamtScore,  bool bestanden, @JsonKey(name: 'kategorie_scores')  Map<String, KategorieScore> kategorieScores,  Analyse analyse)?  $default,) {final _that = this;
switch (_that) {
case _VergleichEintrag() when $default != null:
return $default(_that.unternehmenId,_that.name,_that.branche,_that.gesamtScore,_that.bestanden,_that.kategorieScores,_that.analyse);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VergleichEintrag implements VergleichEintrag {
  const _VergleichEintrag({required this.unternehmenId, required this.name, this.branche, @JsonKey(name: 'gesamt_score') required this.gesamtScore, required this.bestanden, @JsonKey(name: 'kategorie_scores') required final  Map<String, KategorieScore> kategorieScores, required this.analyse}): _kategorieScores = kategorieScores;
  factory _VergleichEintrag.fromJson(Map<String, dynamic> json) => _$VergleichEintragFromJson(json);

@override final  int unternehmenId;
@override final  String name;
@override final  String? branche;
@override@JsonKey(name: 'gesamt_score') final  double gesamtScore;
@override final  bool bestanden;
 final  Map<String, KategorieScore> _kategorieScores;
@override@JsonKey(name: 'kategorie_scores') Map<String, KategorieScore> get kategorieScores {
  if (_kategorieScores is EqualUnmodifiableMapView) return _kategorieScores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_kategorieScores);
}

@override final  Analyse analyse;

/// Create a copy of VergleichEintrag
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VergleichEintragCopyWith<_VergleichEintrag> get copyWith => __$VergleichEintragCopyWithImpl<_VergleichEintrag>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VergleichEintragToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VergleichEintrag&&(identical(other.unternehmenId, unternehmenId) || other.unternehmenId == unternehmenId)&&(identical(other.name, name) || other.name == name)&&(identical(other.branche, branche) || other.branche == branche)&&(identical(other.gesamtScore, gesamtScore) || other.gesamtScore == gesamtScore)&&(identical(other.bestanden, bestanden) || other.bestanden == bestanden)&&const DeepCollectionEquality().equals(other._kategorieScores, _kategorieScores)&&(identical(other.analyse, analyse) || other.analyse == analyse));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,unternehmenId,name,branche,gesamtScore,bestanden,const DeepCollectionEquality().hash(_kategorieScores),analyse);

@override
String toString() {
  return 'VergleichEintrag(unternehmenId: $unternehmenId, name: $name, branche: $branche, gesamtScore: $gesamtScore, bestanden: $bestanden, kategorieScores: $kategorieScores, analyse: $analyse)';
}


}

/// @nodoc
abstract mixin class _$VergleichEintragCopyWith<$Res> implements $VergleichEintragCopyWith<$Res> {
  factory _$VergleichEintragCopyWith(_VergleichEintrag value, $Res Function(_VergleichEintrag) _then) = __$VergleichEintragCopyWithImpl;
@override @useResult
$Res call({
 int unternehmenId, String name, String? branche,@JsonKey(name: 'gesamt_score') double gesamtScore, bool bestanden,@JsonKey(name: 'kategorie_scores') Map<String, KategorieScore> kategorieScores, Analyse analyse
});


@override $AnalyseCopyWith<$Res> get analyse;

}
/// @nodoc
class __$VergleichEintragCopyWithImpl<$Res>
    implements _$VergleichEintragCopyWith<$Res> {
  __$VergleichEintragCopyWithImpl(this._self, this._then);

  final _VergleichEintrag _self;
  final $Res Function(_VergleichEintrag) _then;

/// Create a copy of VergleichEintrag
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? unternehmenId = null,Object? name = null,Object? branche = freezed,Object? gesamtScore = null,Object? bestanden = null,Object? kategorieScores = null,Object? analyse = null,}) {
  return _then(_VergleichEintrag(
unternehmenId: null == unternehmenId ? _self.unternehmenId : unternehmenId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,branche: freezed == branche ? _self.branche : branche // ignore: cast_nullable_to_non_nullable
as String?,gesamtScore: null == gesamtScore ? _self.gesamtScore : gesamtScore // ignore: cast_nullable_to_non_nullable
as double,bestanden: null == bestanden ? _self.bestanden : bestanden // ignore: cast_nullable_to_non_nullable
as bool,kategorieScores: null == kategorieScores ? _self._kategorieScores : kategorieScores // ignore: cast_nullable_to_non_nullable
as Map<String, KategorieScore>,analyse: null == analyse ? _self.analyse : analyse // ignore: cast_nullable_to_non_nullable
as Analyse,
  ));
}

/// Create a copy of VergleichEintrag
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalyseCopyWith<$Res> get analyse {
  
  return $AnalyseCopyWith<$Res>(_self.analyse, (value) {
    return _then(_self.copyWith(analyse: value));
  });
}
}


/// @nodoc
mixin _$KategorieScore {

 double get score; double get gewichtung;@JsonKey(name: 'anzahl_kriterien') int get anzahlKriterien;
/// Create a copy of KategorieScore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KategorieScoreCopyWith<KategorieScore> get copyWith => _$KategorieScoreCopyWithImpl<KategorieScore>(this as KategorieScore, _$identity);

  /// Serializes this KategorieScore to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KategorieScore&&(identical(other.score, score) || other.score == score)&&(identical(other.gewichtung, gewichtung) || other.gewichtung == gewichtung)&&(identical(other.anzahlKriterien, anzahlKriterien) || other.anzahlKriterien == anzahlKriterien));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score,gewichtung,anzahlKriterien);

@override
String toString() {
  return 'KategorieScore(score: $score, gewichtung: $gewichtung, anzahlKriterien: $anzahlKriterien)';
}


}

/// @nodoc
abstract mixin class $KategorieScoreCopyWith<$Res>  {
  factory $KategorieScoreCopyWith(KategorieScore value, $Res Function(KategorieScore) _then) = _$KategorieScoreCopyWithImpl;
@useResult
$Res call({
 double score, double gewichtung,@JsonKey(name: 'anzahl_kriterien') int anzahlKriterien
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
@pragma('vm:prefer-inline') @override $Res call({Object? score = null,Object? gewichtung = null,Object? anzahlKriterien = null,}) {
  return _then(_self.copyWith(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double,gewichtung: null == gewichtung ? _self.gewichtung : gewichtung // ignore: cast_nullable_to_non_nullable
as double,anzahlKriterien: null == anzahlKriterien ? _self.anzahlKriterien : anzahlKriterien // ignore: cast_nullable_to_non_nullable
as int,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double score,  double gewichtung, @JsonKey(name: 'anzahl_kriterien')  int anzahlKriterien)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KategorieScore() when $default != null:
return $default(_that.score,_that.gewichtung,_that.anzahlKriterien);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double score,  double gewichtung, @JsonKey(name: 'anzahl_kriterien')  int anzahlKriterien)  $default,) {final _that = this;
switch (_that) {
case _KategorieScore():
return $default(_that.score,_that.gewichtung,_that.anzahlKriterien);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double score,  double gewichtung, @JsonKey(name: 'anzahl_kriterien')  int anzahlKriterien)?  $default,) {final _that = this;
switch (_that) {
case _KategorieScore() when $default != null:
return $default(_that.score,_that.gewichtung,_that.anzahlKriterien);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KategorieScore implements KategorieScore {
  const _KategorieScore({required this.score, required this.gewichtung, @JsonKey(name: 'anzahl_kriterien') required this.anzahlKriterien});
  factory _KategorieScore.fromJson(Map<String, dynamic> json) => _$KategorieScoreFromJson(json);

@override final  double score;
@override final  double gewichtung;
@override@JsonKey(name: 'anzahl_kriterien') final  int anzahlKriterien;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KategorieScore&&(identical(other.score, score) || other.score == score)&&(identical(other.gewichtung, gewichtung) || other.gewichtung == gewichtung)&&(identical(other.anzahlKriterien, anzahlKriterien) || other.anzahlKriterien == anzahlKriterien));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score,gewichtung,anzahlKriterien);

@override
String toString() {
  return 'KategorieScore(score: $score, gewichtung: $gewichtung, anzahlKriterien: $anzahlKriterien)';
}


}

/// @nodoc
abstract mixin class _$KategorieScoreCopyWith<$Res> implements $KategorieScoreCopyWith<$Res> {
  factory _$KategorieScoreCopyWith(_KategorieScore value, $Res Function(_KategorieScore) _then) = __$KategorieScoreCopyWithImpl;
@override @useResult
$Res call({
 double score, double gewichtung,@JsonKey(name: 'anzahl_kriterien') int anzahlKriterien
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
@override @pragma('vm:prefer-inline') $Res call({Object? score = null,Object? gewichtung = null,Object? anzahlKriterien = null,}) {
  return _then(_KategorieScore(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double,gewichtung: null == gewichtung ? _self.gewichtung : gewichtung // ignore: cast_nullable_to_non_nullable
as double,anzahlKriterien: null == anzahlKriterien ? _self.anzahlKriterien : anzahlKriterien // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$Analyse {

 List<StaerkeSchwaeche> get staerken; List<StaerkeSchwaeche> get schwaechen;@JsonKey(name: 'kritische_ko') List<KOKriterium> get kritischeKo;@JsonKey(name: 'anzahl_staerken') int get anzahlStaerken;@JsonKey(name: 'anzahl_schwaechen') int get anzahlSchwaechen;
/// Create a copy of Analyse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalyseCopyWith<Analyse> get copyWith => _$AnalyseCopyWithImpl<Analyse>(this as Analyse, _$identity);

  /// Serializes this Analyse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Analyse&&const DeepCollectionEquality().equals(other.staerken, staerken)&&const DeepCollectionEquality().equals(other.schwaechen, schwaechen)&&const DeepCollectionEquality().equals(other.kritischeKo, kritischeKo)&&(identical(other.anzahlStaerken, anzahlStaerken) || other.anzahlStaerken == anzahlStaerken)&&(identical(other.anzahlSchwaechen, anzahlSchwaechen) || other.anzahlSchwaechen == anzahlSchwaechen));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(staerken),const DeepCollectionEquality().hash(schwaechen),const DeepCollectionEquality().hash(kritischeKo),anzahlStaerken,anzahlSchwaechen);

@override
String toString() {
  return 'Analyse(staerken: $staerken, schwaechen: $schwaechen, kritischeKo: $kritischeKo, anzahlStaerken: $anzahlStaerken, anzahlSchwaechen: $anzahlSchwaechen)';
}


}

/// @nodoc
abstract mixin class $AnalyseCopyWith<$Res>  {
  factory $AnalyseCopyWith(Analyse value, $Res Function(Analyse) _then) = _$AnalyseCopyWithImpl;
@useResult
$Res call({
 List<StaerkeSchwaeche> staerken, List<StaerkeSchwaeche> schwaechen,@JsonKey(name: 'kritische_ko') List<KOKriterium> kritischeKo,@JsonKey(name: 'anzahl_staerken') int anzahlStaerken,@JsonKey(name: 'anzahl_schwaechen') int anzahlSchwaechen
});




}
/// @nodoc
class _$AnalyseCopyWithImpl<$Res>
    implements $AnalyseCopyWith<$Res> {
  _$AnalyseCopyWithImpl(this._self, this._then);

  final Analyse _self;
  final $Res Function(Analyse) _then;

/// Create a copy of Analyse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? staerken = null,Object? schwaechen = null,Object? kritischeKo = null,Object? anzahlStaerken = null,Object? anzahlSchwaechen = null,}) {
  return _then(_self.copyWith(
staerken: null == staerken ? _self.staerken : staerken // ignore: cast_nullable_to_non_nullable
as List<StaerkeSchwaeche>,schwaechen: null == schwaechen ? _self.schwaechen : schwaechen // ignore: cast_nullable_to_non_nullable
as List<StaerkeSchwaeche>,kritischeKo: null == kritischeKo ? _self.kritischeKo : kritischeKo // ignore: cast_nullable_to_non_nullable
as List<KOKriterium>,anzahlStaerken: null == anzahlStaerken ? _self.anzahlStaerken : anzahlStaerken // ignore: cast_nullable_to_non_nullable
as int,anzahlSchwaechen: null == anzahlSchwaechen ? _self.anzahlSchwaechen : anzahlSchwaechen // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Analyse].
extension AnalysePatterns on Analyse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Analyse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Analyse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Analyse value)  $default,){
final _that = this;
switch (_that) {
case _Analyse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Analyse value)?  $default,){
final _that = this;
switch (_that) {
case _Analyse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<StaerkeSchwaeche> staerken,  List<StaerkeSchwaeche> schwaechen, @JsonKey(name: 'kritische_ko')  List<KOKriterium> kritischeKo, @JsonKey(name: 'anzahl_staerken')  int anzahlStaerken, @JsonKey(name: 'anzahl_schwaechen')  int anzahlSchwaechen)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Analyse() when $default != null:
return $default(_that.staerken,_that.schwaechen,_that.kritischeKo,_that.anzahlStaerken,_that.anzahlSchwaechen);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<StaerkeSchwaeche> staerken,  List<StaerkeSchwaeche> schwaechen, @JsonKey(name: 'kritische_ko')  List<KOKriterium> kritischeKo, @JsonKey(name: 'anzahl_staerken')  int anzahlStaerken, @JsonKey(name: 'anzahl_schwaechen')  int anzahlSchwaechen)  $default,) {final _that = this;
switch (_that) {
case _Analyse():
return $default(_that.staerken,_that.schwaechen,_that.kritischeKo,_that.anzahlStaerken,_that.anzahlSchwaechen);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<StaerkeSchwaeche> staerken,  List<StaerkeSchwaeche> schwaechen, @JsonKey(name: 'kritische_ko')  List<KOKriterium> kritischeKo, @JsonKey(name: 'anzahl_staerken')  int anzahlStaerken, @JsonKey(name: 'anzahl_schwaechen')  int anzahlSchwaechen)?  $default,) {final _that = this;
switch (_that) {
case _Analyse() when $default != null:
return $default(_that.staerken,_that.schwaechen,_that.kritischeKo,_that.anzahlStaerken,_that.anzahlSchwaechen);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Analyse implements Analyse {
  const _Analyse({required final  List<StaerkeSchwaeche> staerken, required final  List<StaerkeSchwaeche> schwaechen, @JsonKey(name: 'kritische_ko') required final  List<KOKriterium> kritischeKo, @JsonKey(name: 'anzahl_staerken') required this.anzahlStaerken, @JsonKey(name: 'anzahl_schwaechen') required this.anzahlSchwaechen}): _staerken = staerken,_schwaechen = schwaechen,_kritischeKo = kritischeKo;
  factory _Analyse.fromJson(Map<String, dynamic> json) => _$AnalyseFromJson(json);

 final  List<StaerkeSchwaeche> _staerken;
@override List<StaerkeSchwaeche> get staerken {
  if (_staerken is EqualUnmodifiableListView) return _staerken;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_staerken);
}

 final  List<StaerkeSchwaeche> _schwaechen;
@override List<StaerkeSchwaeche> get schwaechen {
  if (_schwaechen is EqualUnmodifiableListView) return _schwaechen;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_schwaechen);
}

 final  List<KOKriterium> _kritischeKo;
@override@JsonKey(name: 'kritische_ko') List<KOKriterium> get kritischeKo {
  if (_kritischeKo is EqualUnmodifiableListView) return _kritischeKo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_kritischeKo);
}

@override@JsonKey(name: 'anzahl_staerken') final  int anzahlStaerken;
@override@JsonKey(name: 'anzahl_schwaechen') final  int anzahlSchwaechen;

/// Create a copy of Analyse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalyseCopyWith<_Analyse> get copyWith => __$AnalyseCopyWithImpl<_Analyse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnalyseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Analyse&&const DeepCollectionEquality().equals(other._staerken, _staerken)&&const DeepCollectionEquality().equals(other._schwaechen, _schwaechen)&&const DeepCollectionEquality().equals(other._kritischeKo, _kritischeKo)&&(identical(other.anzahlStaerken, anzahlStaerken) || other.anzahlStaerken == anzahlStaerken)&&(identical(other.anzahlSchwaechen, anzahlSchwaechen) || other.anzahlSchwaechen == anzahlSchwaechen));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_staerken),const DeepCollectionEquality().hash(_schwaechen),const DeepCollectionEquality().hash(_kritischeKo),anzahlStaerken,anzahlSchwaechen);

@override
String toString() {
  return 'Analyse(staerken: $staerken, schwaechen: $schwaechen, kritischeKo: $kritischeKo, anzahlStaerken: $anzahlStaerken, anzahlSchwaechen: $anzahlSchwaechen)';
}


}

/// @nodoc
abstract mixin class _$AnalyseCopyWith<$Res> implements $AnalyseCopyWith<$Res> {
  factory _$AnalyseCopyWith(_Analyse value, $Res Function(_Analyse) _then) = __$AnalyseCopyWithImpl;
@override @useResult
$Res call({
 List<StaerkeSchwaeche> staerken, List<StaerkeSchwaeche> schwaechen,@JsonKey(name: 'kritische_ko') List<KOKriterium> kritischeKo,@JsonKey(name: 'anzahl_staerken') int anzahlStaerken,@JsonKey(name: 'anzahl_schwaechen') int anzahlSchwaechen
});




}
/// @nodoc
class __$AnalyseCopyWithImpl<$Res>
    implements _$AnalyseCopyWith<$Res> {
  __$AnalyseCopyWithImpl(this._self, this._then);

  final _Analyse _self;
  final $Res Function(_Analyse) _then;

/// Create a copy of Analyse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? staerken = null,Object? schwaechen = null,Object? kritischeKo = null,Object? anzahlStaerken = null,Object? anzahlSchwaechen = null,}) {
  return _then(_Analyse(
staerken: null == staerken ? _self._staerken : staerken // ignore: cast_nullable_to_non_nullable
as List<StaerkeSchwaeche>,schwaechen: null == schwaechen ? _self._schwaechen : schwaechen // ignore: cast_nullable_to_non_nullable
as List<StaerkeSchwaeche>,kritischeKo: null == kritischeKo ? _self._kritischeKo : kritischeKo // ignore: cast_nullable_to_non_nullable
as List<KOKriterium>,anzahlStaerken: null == anzahlStaerken ? _self.anzahlStaerken : anzahlStaerken // ignore: cast_nullable_to_non_nullable
as int,anzahlSchwaechen: null == anzahlSchwaechen ? _self.anzahlSchwaechen : anzahlSchwaechen // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$StaerkeSchwaeche {

 String get kriterium; double get punkte; String get wertigkeit;
/// Create a copy of StaerkeSchwaeche
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaerkeSchwaecheCopyWith<StaerkeSchwaeche> get copyWith => _$StaerkeSchwaecheCopyWithImpl<StaerkeSchwaeche>(this as StaerkeSchwaeche, _$identity);

  /// Serializes this StaerkeSchwaeche to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StaerkeSchwaeche&&(identical(other.kriterium, kriterium) || other.kriterium == kriterium)&&(identical(other.punkte, punkte) || other.punkte == punkte)&&(identical(other.wertigkeit, wertigkeit) || other.wertigkeit == wertigkeit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kriterium,punkte,wertigkeit);

@override
String toString() {
  return 'StaerkeSchwaeche(kriterium: $kriterium, punkte: $punkte, wertigkeit: $wertigkeit)';
}


}

/// @nodoc
abstract mixin class $StaerkeSchwaecheCopyWith<$Res>  {
  factory $StaerkeSchwaecheCopyWith(StaerkeSchwaeche value, $Res Function(StaerkeSchwaeche) _then) = _$StaerkeSchwaecheCopyWithImpl;
@useResult
$Res call({
 String kriterium, double punkte, String wertigkeit
});




}
/// @nodoc
class _$StaerkeSchwaecheCopyWithImpl<$Res>
    implements $StaerkeSchwaecheCopyWith<$Res> {
  _$StaerkeSchwaecheCopyWithImpl(this._self, this._then);

  final StaerkeSchwaeche _self;
  final $Res Function(StaerkeSchwaeche) _then;

/// Create a copy of StaerkeSchwaeche
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kriterium = null,Object? punkte = null,Object? wertigkeit = null,}) {
  return _then(_self.copyWith(
kriterium: null == kriterium ? _self.kriterium : kriterium // ignore: cast_nullable_to_non_nullable
as String,punkte: null == punkte ? _self.punkte : punkte // ignore: cast_nullable_to_non_nullable
as double,wertigkeit: null == wertigkeit ? _self.wertigkeit : wertigkeit // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StaerkeSchwaeche].
extension StaerkeSchwaechePatterns on StaerkeSchwaeche {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StaerkeSchwaeche value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StaerkeSchwaeche() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StaerkeSchwaeche value)  $default,){
final _that = this;
switch (_that) {
case _StaerkeSchwaeche():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StaerkeSchwaeche value)?  $default,){
final _that = this;
switch (_that) {
case _StaerkeSchwaeche() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String kriterium,  double punkte,  String wertigkeit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StaerkeSchwaeche() when $default != null:
return $default(_that.kriterium,_that.punkte,_that.wertigkeit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String kriterium,  double punkte,  String wertigkeit)  $default,) {final _that = this;
switch (_that) {
case _StaerkeSchwaeche():
return $default(_that.kriterium,_that.punkte,_that.wertigkeit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String kriterium,  double punkte,  String wertigkeit)?  $default,) {final _that = this;
switch (_that) {
case _StaerkeSchwaeche() when $default != null:
return $default(_that.kriterium,_that.punkte,_that.wertigkeit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StaerkeSchwaeche implements StaerkeSchwaeche {
  const _StaerkeSchwaeche({required this.kriterium, required this.punkte, required this.wertigkeit});
  factory _StaerkeSchwaeche.fromJson(Map<String, dynamic> json) => _$StaerkeSchwaecheFromJson(json);

@override final  String kriterium;
@override final  double punkte;
@override final  String wertigkeit;

/// Create a copy of StaerkeSchwaeche
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StaerkeSchwaecheCopyWith<_StaerkeSchwaeche> get copyWith => __$StaerkeSchwaecheCopyWithImpl<_StaerkeSchwaeche>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StaerkeSchwaecheToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StaerkeSchwaeche&&(identical(other.kriterium, kriterium) || other.kriterium == kriterium)&&(identical(other.punkte, punkte) || other.punkte == punkte)&&(identical(other.wertigkeit, wertigkeit) || other.wertigkeit == wertigkeit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kriterium,punkte,wertigkeit);

@override
String toString() {
  return 'StaerkeSchwaeche(kriterium: $kriterium, punkte: $punkte, wertigkeit: $wertigkeit)';
}


}

/// @nodoc
abstract mixin class _$StaerkeSchwaecheCopyWith<$Res> implements $StaerkeSchwaecheCopyWith<$Res> {
  factory _$StaerkeSchwaecheCopyWith(_StaerkeSchwaeche value, $Res Function(_StaerkeSchwaeche) _then) = __$StaerkeSchwaecheCopyWithImpl;
@override @useResult
$Res call({
 String kriterium, double punkte, String wertigkeit
});




}
/// @nodoc
class __$StaerkeSchwaecheCopyWithImpl<$Res>
    implements _$StaerkeSchwaecheCopyWith<$Res> {
  __$StaerkeSchwaecheCopyWithImpl(this._self, this._then);

  final _StaerkeSchwaeche _self;
  final $Res Function(_StaerkeSchwaeche) _then;

/// Create a copy of StaerkeSchwaeche
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kriterium = null,Object? punkte = null,Object? wertigkeit = null,}) {
  return _then(_StaerkeSchwaeche(
kriterium: null == kriterium ? _self.kriterium : kriterium // ignore: cast_nullable_to_non_nullable
as String,punkte: null == punkte ? _self.punkte : punkte // ignore: cast_nullable_to_non_nullable
as double,wertigkeit: null == wertigkeit ? _self.wertigkeit : wertigkeit // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$KOKriterium {

 String get kriterium; double get punkte; String get grund;
/// Create a copy of KOKriterium
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KOKriteriumCopyWith<KOKriterium> get copyWith => _$KOKriteriumCopyWithImpl<KOKriterium>(this as KOKriterium, _$identity);

  /// Serializes this KOKriterium to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KOKriterium&&(identical(other.kriterium, kriterium) || other.kriterium == kriterium)&&(identical(other.punkte, punkte) || other.punkte == punkte)&&(identical(other.grund, grund) || other.grund == grund));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kriterium,punkte,grund);

@override
String toString() {
  return 'KOKriterium(kriterium: $kriterium, punkte: $punkte, grund: $grund)';
}


}

/// @nodoc
abstract mixin class $KOKriteriumCopyWith<$Res>  {
  factory $KOKriteriumCopyWith(KOKriterium value, $Res Function(KOKriterium) _then) = _$KOKriteriumCopyWithImpl;
@useResult
$Res call({
 String kriterium, double punkte, String grund
});




}
/// @nodoc
class _$KOKriteriumCopyWithImpl<$Res>
    implements $KOKriteriumCopyWith<$Res> {
  _$KOKriteriumCopyWithImpl(this._self, this._then);

  final KOKriterium _self;
  final $Res Function(KOKriterium) _then;

/// Create a copy of KOKriterium
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kriterium = null,Object? punkte = null,Object? grund = null,}) {
  return _then(_self.copyWith(
kriterium: null == kriterium ? _self.kriterium : kriterium // ignore: cast_nullable_to_non_nullable
as String,punkte: null == punkte ? _self.punkte : punkte // ignore: cast_nullable_to_non_nullable
as double,grund: null == grund ? _self.grund : grund // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [KOKriterium].
extension KOKriteriumPatterns on KOKriterium {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KOKriterium value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KOKriterium() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KOKriterium value)  $default,){
final _that = this;
switch (_that) {
case _KOKriterium():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KOKriterium value)?  $default,){
final _that = this;
switch (_that) {
case _KOKriterium() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String kriterium,  double punkte,  String grund)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KOKriterium() when $default != null:
return $default(_that.kriterium,_that.punkte,_that.grund);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String kriterium,  double punkte,  String grund)  $default,) {final _that = this;
switch (_that) {
case _KOKriterium():
return $default(_that.kriterium,_that.punkte,_that.grund);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String kriterium,  double punkte,  String grund)?  $default,) {final _that = this;
switch (_that) {
case _KOKriterium() when $default != null:
return $default(_that.kriterium,_that.punkte,_that.grund);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KOKriterium implements KOKriterium {
  const _KOKriterium({required this.kriterium, required this.punkte, required this.grund});
  factory _KOKriterium.fromJson(Map<String, dynamic> json) => _$KOKriteriumFromJson(json);

@override final  String kriterium;
@override final  double punkte;
@override final  String grund;

/// Create a copy of KOKriterium
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KOKriteriumCopyWith<_KOKriterium> get copyWith => __$KOKriteriumCopyWithImpl<_KOKriterium>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KOKriteriumToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KOKriterium&&(identical(other.kriterium, kriterium) || other.kriterium == kriterium)&&(identical(other.punkte, punkte) || other.punkte == punkte)&&(identical(other.grund, grund) || other.grund == grund));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kriterium,punkte,grund);

@override
String toString() {
  return 'KOKriterium(kriterium: $kriterium, punkte: $punkte, grund: $grund)';
}


}

/// @nodoc
abstract mixin class _$KOKriteriumCopyWith<$Res> implements $KOKriteriumCopyWith<$Res> {
  factory _$KOKriteriumCopyWith(_KOKriterium value, $Res Function(_KOKriterium) _then) = __$KOKriteriumCopyWithImpl;
@override @useResult
$Res call({
 String kriterium, double punkte, String grund
});




}
/// @nodoc
class __$KOKriteriumCopyWithImpl<$Res>
    implements _$KOKriteriumCopyWith<$Res> {
  __$KOKriteriumCopyWithImpl(this._self, this._then);

  final _KOKriterium _self;
  final $Res Function(_KOKriterium) _then;

/// Create a copy of KOKriterium
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kriterium = null,Object? punkte = null,Object? grund = null,}) {
  return _then(_KOKriterium(
kriterium: null == kriterium ? _self.kriterium : kriterium // ignore: cast_nullable_to_non_nullable
as String,punkte: null == punkte ? _self.punkte : punkte // ignore: cast_nullable_to_non_nullable
as double,grund: null == grund ? _self.grund : grund // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$VergleichResponse {

 List<VergleichEintrag> get vergleich; List<KriterienVergleich>? get kriterienVergleich;@JsonKey(name: 'bester_score') double get besterScore;@JsonKey(name: 'anzahl_unternehmen') int get anzahlUnternehmen;
/// Create a copy of VergleichResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VergleichResponseCopyWith<VergleichResponse> get copyWith => _$VergleichResponseCopyWithImpl<VergleichResponse>(this as VergleichResponse, _$identity);

  /// Serializes this VergleichResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VergleichResponse&&const DeepCollectionEquality().equals(other.vergleich, vergleich)&&const DeepCollectionEquality().equals(other.kriterienVergleich, kriterienVergleich)&&(identical(other.besterScore, besterScore) || other.besterScore == besterScore)&&(identical(other.anzahlUnternehmen, anzahlUnternehmen) || other.anzahlUnternehmen == anzahlUnternehmen));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(vergleich),const DeepCollectionEquality().hash(kriterienVergleich),besterScore,anzahlUnternehmen);

@override
String toString() {
  return 'VergleichResponse(vergleich: $vergleich, kriterienVergleich: $kriterienVergleich, besterScore: $besterScore, anzahlUnternehmen: $anzahlUnternehmen)';
}


}

/// @nodoc
abstract mixin class $VergleichResponseCopyWith<$Res>  {
  factory $VergleichResponseCopyWith(VergleichResponse value, $Res Function(VergleichResponse) _then) = _$VergleichResponseCopyWithImpl;
@useResult
$Res call({
 List<VergleichEintrag> vergleich, List<KriterienVergleich>? kriterienVergleich,@JsonKey(name: 'bester_score') double besterScore,@JsonKey(name: 'anzahl_unternehmen') int anzahlUnternehmen
});




}
/// @nodoc
class _$VergleichResponseCopyWithImpl<$Res>
    implements $VergleichResponseCopyWith<$Res> {
  _$VergleichResponseCopyWithImpl(this._self, this._then);

  final VergleichResponse _self;
  final $Res Function(VergleichResponse) _then;

/// Create a copy of VergleichResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? vergleich = null,Object? kriterienVergleich = freezed,Object? besterScore = null,Object? anzahlUnternehmen = null,}) {
  return _then(_self.copyWith(
vergleich: null == vergleich ? _self.vergleich : vergleich // ignore: cast_nullable_to_non_nullable
as List<VergleichEintrag>,kriterienVergleich: freezed == kriterienVergleich ? _self.kriterienVergleich : kriterienVergleich // ignore: cast_nullable_to_non_nullable
as List<KriterienVergleich>?,besterScore: null == besterScore ? _self.besterScore : besterScore // ignore: cast_nullable_to_non_nullable
as double,anzahlUnternehmen: null == anzahlUnternehmen ? _self.anzahlUnternehmen : anzahlUnternehmen // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [VergleichResponse].
extension VergleichResponsePatterns on VergleichResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VergleichResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VergleichResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VergleichResponse value)  $default,){
final _that = this;
switch (_that) {
case _VergleichResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VergleichResponse value)?  $default,){
final _that = this;
switch (_that) {
case _VergleichResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<VergleichEintrag> vergleich,  List<KriterienVergleich>? kriterienVergleich, @JsonKey(name: 'bester_score')  double besterScore, @JsonKey(name: 'anzahl_unternehmen')  int anzahlUnternehmen)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VergleichResponse() when $default != null:
return $default(_that.vergleich,_that.kriterienVergleich,_that.besterScore,_that.anzahlUnternehmen);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<VergleichEintrag> vergleich,  List<KriterienVergleich>? kriterienVergleich, @JsonKey(name: 'bester_score')  double besterScore, @JsonKey(name: 'anzahl_unternehmen')  int anzahlUnternehmen)  $default,) {final _that = this;
switch (_that) {
case _VergleichResponse():
return $default(_that.vergleich,_that.kriterienVergleich,_that.besterScore,_that.anzahlUnternehmen);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<VergleichEintrag> vergleich,  List<KriterienVergleich>? kriterienVergleich, @JsonKey(name: 'bester_score')  double besterScore, @JsonKey(name: 'anzahl_unternehmen')  int anzahlUnternehmen)?  $default,) {final _that = this;
switch (_that) {
case _VergleichResponse() when $default != null:
return $default(_that.vergleich,_that.kriterienVergleich,_that.besterScore,_that.anzahlUnternehmen);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VergleichResponse implements VergleichResponse {
  const _VergleichResponse({required final  List<VergleichEintrag> vergleich, final  List<KriterienVergleich>? kriterienVergleich, @JsonKey(name: 'bester_score') required this.besterScore, @JsonKey(name: 'anzahl_unternehmen') required this.anzahlUnternehmen}): _vergleich = vergleich,_kriterienVergleich = kriterienVergleich;
  factory _VergleichResponse.fromJson(Map<String, dynamic> json) => _$VergleichResponseFromJson(json);

 final  List<VergleichEintrag> _vergleich;
@override List<VergleichEintrag> get vergleich {
  if (_vergleich is EqualUnmodifiableListView) return _vergleich;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_vergleich);
}

 final  List<KriterienVergleich>? _kriterienVergleich;
@override List<KriterienVergleich>? get kriterienVergleich {
  final value = _kriterienVergleich;
  if (value == null) return null;
  if (_kriterienVergleich is EqualUnmodifiableListView) return _kriterienVergleich;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'bester_score') final  double besterScore;
@override@JsonKey(name: 'anzahl_unternehmen') final  int anzahlUnternehmen;

/// Create a copy of VergleichResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VergleichResponseCopyWith<_VergleichResponse> get copyWith => __$VergleichResponseCopyWithImpl<_VergleichResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VergleichResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VergleichResponse&&const DeepCollectionEquality().equals(other._vergleich, _vergleich)&&const DeepCollectionEquality().equals(other._kriterienVergleich, _kriterienVergleich)&&(identical(other.besterScore, besterScore) || other.besterScore == besterScore)&&(identical(other.anzahlUnternehmen, anzahlUnternehmen) || other.anzahlUnternehmen == anzahlUnternehmen));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_vergleich),const DeepCollectionEquality().hash(_kriterienVergleich),besterScore,anzahlUnternehmen);

@override
String toString() {
  return 'VergleichResponse(vergleich: $vergleich, kriterienVergleich: $kriterienVergleich, besterScore: $besterScore, anzahlUnternehmen: $anzahlUnternehmen)';
}


}

/// @nodoc
abstract mixin class _$VergleichResponseCopyWith<$Res> implements $VergleichResponseCopyWith<$Res> {
  factory _$VergleichResponseCopyWith(_VergleichResponse value, $Res Function(_VergleichResponse) _then) = __$VergleichResponseCopyWithImpl;
@override @useResult
$Res call({
 List<VergleichEintrag> vergleich, List<KriterienVergleich>? kriterienVergleich,@JsonKey(name: 'bester_score') double besterScore,@JsonKey(name: 'anzahl_unternehmen') int anzahlUnternehmen
});




}
/// @nodoc
class __$VergleichResponseCopyWithImpl<$Res>
    implements _$VergleichResponseCopyWith<$Res> {
  __$VergleichResponseCopyWithImpl(this._self, this._then);

  final _VergleichResponse _self;
  final $Res Function(_VergleichResponse) _then;

/// Create a copy of VergleichResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? vergleich = null,Object? kriterienVergleich = freezed,Object? besterScore = null,Object? anzahlUnternehmen = null,}) {
  return _then(_VergleichResponse(
vergleich: null == vergleich ? _self._vergleich : vergleich // ignore: cast_nullable_to_non_nullable
as List<VergleichEintrag>,kriterienVergleich: freezed == kriterienVergleich ? _self._kriterienVergleich : kriterienVergleich // ignore: cast_nullable_to_non_nullable
as List<KriterienVergleich>?,besterScore: null == besterScore ? _self.besterScore : besterScore // ignore: cast_nullable_to_non_nullable
as double,anzahlUnternehmen: null == anzahlUnternehmen ? _self.anzahlUnternehmen : anzahlUnternehmen // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$KriterienVergleich {

 String get kriterium;@JsonKey(name: 'unternehmen_scores') Map<String, double> get unternehmenScores;
/// Create a copy of KriterienVergleich
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KriterienVergleichCopyWith<KriterienVergleich> get copyWith => _$KriterienVergleichCopyWithImpl<KriterienVergleich>(this as KriterienVergleich, _$identity);

  /// Serializes this KriterienVergleich to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KriterienVergleich&&(identical(other.kriterium, kriterium) || other.kriterium == kriterium)&&const DeepCollectionEquality().equals(other.unternehmenScores, unternehmenScores));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kriterium,const DeepCollectionEquality().hash(unternehmenScores));

@override
String toString() {
  return 'KriterienVergleich(kriterium: $kriterium, unternehmenScores: $unternehmenScores)';
}


}

/// @nodoc
abstract mixin class $KriterienVergleichCopyWith<$Res>  {
  factory $KriterienVergleichCopyWith(KriterienVergleich value, $Res Function(KriterienVergleich) _then) = _$KriterienVergleichCopyWithImpl;
@useResult
$Res call({
 String kriterium,@JsonKey(name: 'unternehmen_scores') Map<String, double> unternehmenScores
});




}
/// @nodoc
class _$KriterienVergleichCopyWithImpl<$Res>
    implements $KriterienVergleichCopyWith<$Res> {
  _$KriterienVergleichCopyWithImpl(this._self, this._then);

  final KriterienVergleich _self;
  final $Res Function(KriterienVergleich) _then;

/// Create a copy of KriterienVergleich
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kriterium = null,Object? unternehmenScores = null,}) {
  return _then(_self.copyWith(
kriterium: null == kriterium ? _self.kriterium : kriterium // ignore: cast_nullable_to_non_nullable
as String,unternehmenScores: null == unternehmenScores ? _self.unternehmenScores : unternehmenScores // ignore: cast_nullable_to_non_nullable
as Map<String, double>,
  ));
}

}


/// Adds pattern-matching-related methods to [KriterienVergleich].
extension KriterienVergleichPatterns on KriterienVergleich {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KriterienVergleich value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KriterienVergleich() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KriterienVergleich value)  $default,){
final _that = this;
switch (_that) {
case _KriterienVergleich():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KriterienVergleich value)?  $default,){
final _that = this;
switch (_that) {
case _KriterienVergleich() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String kriterium, @JsonKey(name: 'unternehmen_scores')  Map<String, double> unternehmenScores)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KriterienVergleich() when $default != null:
return $default(_that.kriterium,_that.unternehmenScores);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String kriterium, @JsonKey(name: 'unternehmen_scores')  Map<String, double> unternehmenScores)  $default,) {final _that = this;
switch (_that) {
case _KriterienVergleich():
return $default(_that.kriterium,_that.unternehmenScores);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String kriterium, @JsonKey(name: 'unternehmen_scores')  Map<String, double> unternehmenScores)?  $default,) {final _that = this;
switch (_that) {
case _KriterienVergleich() when $default != null:
return $default(_that.kriterium,_that.unternehmenScores);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KriterienVergleich implements KriterienVergleich {
  const _KriterienVergleich({required this.kriterium, @JsonKey(name: 'unternehmen_scores') required final  Map<String, double> unternehmenScores}): _unternehmenScores = unternehmenScores;
  factory _KriterienVergleich.fromJson(Map<String, dynamic> json) => _$KriterienVergleichFromJson(json);

@override final  String kriterium;
 final  Map<String, double> _unternehmenScores;
@override@JsonKey(name: 'unternehmen_scores') Map<String, double> get unternehmenScores {
  if (_unternehmenScores is EqualUnmodifiableMapView) return _unternehmenScores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_unternehmenScores);
}


/// Create a copy of KriterienVergleich
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KriterienVergleichCopyWith<_KriterienVergleich> get copyWith => __$KriterienVergleichCopyWithImpl<_KriterienVergleich>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KriterienVergleichToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KriterienVergleich&&(identical(other.kriterium, kriterium) || other.kriterium == kriterium)&&const DeepCollectionEquality().equals(other._unternehmenScores, _unternehmenScores));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kriterium,const DeepCollectionEquality().hash(_unternehmenScores));

@override
String toString() {
  return 'KriterienVergleich(kriterium: $kriterium, unternehmenScores: $unternehmenScores)';
}


}

/// @nodoc
abstract mixin class _$KriterienVergleichCopyWith<$Res> implements $KriterienVergleichCopyWith<$Res> {
  factory _$KriterienVergleichCopyWith(_KriterienVergleich value, $Res Function(_KriterienVergleich) _then) = __$KriterienVergleichCopyWithImpl;
@override @useResult
$Res call({
 String kriterium,@JsonKey(name: 'unternehmen_scores') Map<String, double> unternehmenScores
});




}
/// @nodoc
class __$KriterienVergleichCopyWithImpl<$Res>
    implements _$KriterienVergleichCopyWith<$Res> {
  __$KriterienVergleichCopyWithImpl(this._self, this._then);

  final _KriterienVergleich _self;
  final $Res Function(_KriterienVergleich) _then;

/// Create a copy of KriterienVergleich
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kriterium = null,Object? unternehmenScores = null,}) {
  return _then(_KriterienVergleich(
kriterium: null == kriterium ? _self.kriterium : kriterium // ignore: cast_nullable_to_non_nullable
as String,unternehmenScores: null == unternehmenScores ? _self._unternehmenScores : unternehmenScores // ignore: cast_nullable_to_non_nullable
as Map<String, double>,
  ));
}


}

// dart format on
