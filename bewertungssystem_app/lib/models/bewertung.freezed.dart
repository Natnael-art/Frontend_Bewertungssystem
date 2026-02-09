// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bewertung.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BewertungCreate {

 int get unternehmenId; int get kriteriumId; double get punkte; String? get kommentar; String? get benutzer;
/// Create a copy of BewertungCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BewertungCreateCopyWith<BewertungCreate> get copyWith => _$BewertungCreateCopyWithImpl<BewertungCreate>(this as BewertungCreate, _$identity);

  /// Serializes this BewertungCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BewertungCreate&&(identical(other.unternehmenId, unternehmenId) || other.unternehmenId == unternehmenId)&&(identical(other.kriteriumId, kriteriumId) || other.kriteriumId == kriteriumId)&&(identical(other.punkte, punkte) || other.punkte == punkte)&&(identical(other.kommentar, kommentar) || other.kommentar == kommentar)&&(identical(other.benutzer, benutzer) || other.benutzer == benutzer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,unternehmenId,kriteriumId,punkte,kommentar,benutzer);

@override
String toString() {
  return 'BewertungCreate(unternehmenId: $unternehmenId, kriteriumId: $kriteriumId, punkte: $punkte, kommentar: $kommentar, benutzer: $benutzer)';
}


}

/// @nodoc
abstract mixin class $BewertungCreateCopyWith<$Res>  {
  factory $BewertungCreateCopyWith(BewertungCreate value, $Res Function(BewertungCreate) _then) = _$BewertungCreateCopyWithImpl;
@useResult
$Res call({
 int unternehmenId, int kriteriumId, double punkte, String? kommentar, String? benutzer
});




}
/// @nodoc
class _$BewertungCreateCopyWithImpl<$Res>
    implements $BewertungCreateCopyWith<$Res> {
  _$BewertungCreateCopyWithImpl(this._self, this._then);

  final BewertungCreate _self;
  final $Res Function(BewertungCreate) _then;

/// Create a copy of BewertungCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? unternehmenId = null,Object? kriteriumId = null,Object? punkte = null,Object? kommentar = freezed,Object? benutzer = freezed,}) {
  return _then(_self.copyWith(
unternehmenId: null == unternehmenId ? _self.unternehmenId : unternehmenId // ignore: cast_nullable_to_non_nullable
as int,kriteriumId: null == kriteriumId ? _self.kriteriumId : kriteriumId // ignore: cast_nullable_to_non_nullable
as int,punkte: null == punkte ? _self.punkte : punkte // ignore: cast_nullable_to_non_nullable
as double,kommentar: freezed == kommentar ? _self.kommentar : kommentar // ignore: cast_nullable_to_non_nullable
as String?,benutzer: freezed == benutzer ? _self.benutzer : benutzer // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BewertungCreate].
extension BewertungCreatePatterns on BewertungCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BewertungCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BewertungCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BewertungCreate value)  $default,){
final _that = this;
switch (_that) {
case _BewertungCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BewertungCreate value)?  $default,){
final _that = this;
switch (_that) {
case _BewertungCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int unternehmenId,  int kriteriumId,  double punkte,  String? kommentar,  String? benutzer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BewertungCreate() when $default != null:
return $default(_that.unternehmenId,_that.kriteriumId,_that.punkte,_that.kommentar,_that.benutzer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int unternehmenId,  int kriteriumId,  double punkte,  String? kommentar,  String? benutzer)  $default,) {final _that = this;
switch (_that) {
case _BewertungCreate():
return $default(_that.unternehmenId,_that.kriteriumId,_that.punkte,_that.kommentar,_that.benutzer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int unternehmenId,  int kriteriumId,  double punkte,  String? kommentar,  String? benutzer)?  $default,) {final _that = this;
switch (_that) {
case _BewertungCreate() when $default != null:
return $default(_that.unternehmenId,_that.kriteriumId,_that.punkte,_that.kommentar,_that.benutzer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BewertungCreate implements BewertungCreate {
  const _BewertungCreate({required this.unternehmenId, required this.kriteriumId, required this.punkte, this.kommentar, this.benutzer});
  factory _BewertungCreate.fromJson(Map<String, dynamic> json) => _$BewertungCreateFromJson(json);

@override final  int unternehmenId;
@override final  int kriteriumId;
@override final  double punkte;
@override final  String? kommentar;
@override final  String? benutzer;

/// Create a copy of BewertungCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BewertungCreateCopyWith<_BewertungCreate> get copyWith => __$BewertungCreateCopyWithImpl<_BewertungCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BewertungCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BewertungCreate&&(identical(other.unternehmenId, unternehmenId) || other.unternehmenId == unternehmenId)&&(identical(other.kriteriumId, kriteriumId) || other.kriteriumId == kriteriumId)&&(identical(other.punkte, punkte) || other.punkte == punkte)&&(identical(other.kommentar, kommentar) || other.kommentar == kommentar)&&(identical(other.benutzer, benutzer) || other.benutzer == benutzer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,unternehmenId,kriteriumId,punkte,kommentar,benutzer);

@override
String toString() {
  return 'BewertungCreate(unternehmenId: $unternehmenId, kriteriumId: $kriteriumId, punkte: $punkte, kommentar: $kommentar, benutzer: $benutzer)';
}


}

/// @nodoc
abstract mixin class _$BewertungCreateCopyWith<$Res> implements $BewertungCreateCopyWith<$Res> {
  factory _$BewertungCreateCopyWith(_BewertungCreate value, $Res Function(_BewertungCreate) _then) = __$BewertungCreateCopyWithImpl;
@override @useResult
$Res call({
 int unternehmenId, int kriteriumId, double punkte, String? kommentar, String? benutzer
});




}
/// @nodoc
class __$BewertungCreateCopyWithImpl<$Res>
    implements _$BewertungCreateCopyWith<$Res> {
  __$BewertungCreateCopyWithImpl(this._self, this._then);

  final _BewertungCreate _self;
  final $Res Function(_BewertungCreate) _then;

/// Create a copy of BewertungCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? unternehmenId = null,Object? kriteriumId = null,Object? punkte = null,Object? kommentar = freezed,Object? benutzer = freezed,}) {
  return _then(_BewertungCreate(
unternehmenId: null == unternehmenId ? _self.unternehmenId : unternehmenId // ignore: cast_nullable_to_non_nullable
as int,kriteriumId: null == kriteriumId ? _self.kriteriumId : kriteriumId // ignore: cast_nullable_to_non_nullable
as int,punkte: null == punkte ? _self.punkte : punkte // ignore: cast_nullable_to_non_nullable
as double,kommentar: freezed == kommentar ? _self.kommentar : kommentar // ignore: cast_nullable_to_non_nullable
as String?,benutzer: freezed == benutzer ? _self.benutzer : benutzer // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Bewertung {

 int get id; int get unternehmenId; int get kriteriumId; double get punkte; String? get kommentar; String? get benutzer;@JsonKey(name: 'bewertet_am') DateTime get bewertetAm;
/// Create a copy of Bewertung
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BewertungCopyWith<Bewertung> get copyWith => _$BewertungCopyWithImpl<Bewertung>(this as Bewertung, _$identity);

  /// Serializes this Bewertung to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Bewertung&&(identical(other.id, id) || other.id == id)&&(identical(other.unternehmenId, unternehmenId) || other.unternehmenId == unternehmenId)&&(identical(other.kriteriumId, kriteriumId) || other.kriteriumId == kriteriumId)&&(identical(other.punkte, punkte) || other.punkte == punkte)&&(identical(other.kommentar, kommentar) || other.kommentar == kommentar)&&(identical(other.benutzer, benutzer) || other.benutzer == benutzer)&&(identical(other.bewertetAm, bewertetAm) || other.bewertetAm == bewertetAm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,unternehmenId,kriteriumId,punkte,kommentar,benutzer,bewertetAm);

@override
String toString() {
  return 'Bewertung(id: $id, unternehmenId: $unternehmenId, kriteriumId: $kriteriumId, punkte: $punkte, kommentar: $kommentar, benutzer: $benutzer, bewertetAm: $bewertetAm)';
}


}

/// @nodoc
abstract mixin class $BewertungCopyWith<$Res>  {
  factory $BewertungCopyWith(Bewertung value, $Res Function(Bewertung) _then) = _$BewertungCopyWithImpl;
@useResult
$Res call({
 int id, int unternehmenId, int kriteriumId, double punkte, String? kommentar, String? benutzer,@JsonKey(name: 'bewertet_am') DateTime bewertetAm
});




}
/// @nodoc
class _$BewertungCopyWithImpl<$Res>
    implements $BewertungCopyWith<$Res> {
  _$BewertungCopyWithImpl(this._self, this._then);

  final Bewertung _self;
  final $Res Function(Bewertung) _then;

/// Create a copy of Bewertung
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? unternehmenId = null,Object? kriteriumId = null,Object? punkte = null,Object? kommentar = freezed,Object? benutzer = freezed,Object? bewertetAm = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,unternehmenId: null == unternehmenId ? _self.unternehmenId : unternehmenId // ignore: cast_nullable_to_non_nullable
as int,kriteriumId: null == kriteriumId ? _self.kriteriumId : kriteriumId // ignore: cast_nullable_to_non_nullable
as int,punkte: null == punkte ? _self.punkte : punkte // ignore: cast_nullable_to_non_nullable
as double,kommentar: freezed == kommentar ? _self.kommentar : kommentar // ignore: cast_nullable_to_non_nullable
as String?,benutzer: freezed == benutzer ? _self.benutzer : benutzer // ignore: cast_nullable_to_non_nullable
as String?,bewertetAm: null == bewertetAm ? _self.bewertetAm : bewertetAm // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Bewertung].
extension BewertungPatterns on Bewertung {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Bewertung value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Bewertung() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Bewertung value)  $default,){
final _that = this;
switch (_that) {
case _Bewertung():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Bewertung value)?  $default,){
final _that = this;
switch (_that) {
case _Bewertung() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int unternehmenId,  int kriteriumId,  double punkte,  String? kommentar,  String? benutzer, @JsonKey(name: 'bewertet_am')  DateTime bewertetAm)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Bewertung() when $default != null:
return $default(_that.id,_that.unternehmenId,_that.kriteriumId,_that.punkte,_that.kommentar,_that.benutzer,_that.bewertetAm);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int unternehmenId,  int kriteriumId,  double punkte,  String? kommentar,  String? benutzer, @JsonKey(name: 'bewertet_am')  DateTime bewertetAm)  $default,) {final _that = this;
switch (_that) {
case _Bewertung():
return $default(_that.id,_that.unternehmenId,_that.kriteriumId,_that.punkte,_that.kommentar,_that.benutzer,_that.bewertetAm);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int unternehmenId,  int kriteriumId,  double punkte,  String? kommentar,  String? benutzer, @JsonKey(name: 'bewertet_am')  DateTime bewertetAm)?  $default,) {final _that = this;
switch (_that) {
case _Bewertung() when $default != null:
return $default(_that.id,_that.unternehmenId,_that.kriteriumId,_that.punkte,_that.kommentar,_that.benutzer,_that.bewertetAm);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Bewertung implements Bewertung {
  const _Bewertung({required this.id, required this.unternehmenId, required this.kriteriumId, required this.punkte, this.kommentar, this.benutzer, @JsonKey(name: 'bewertet_am') required this.bewertetAm});
  factory _Bewertung.fromJson(Map<String, dynamic> json) => _$BewertungFromJson(json);

@override final  int id;
@override final  int unternehmenId;
@override final  int kriteriumId;
@override final  double punkte;
@override final  String? kommentar;
@override final  String? benutzer;
@override@JsonKey(name: 'bewertet_am') final  DateTime bewertetAm;

/// Create a copy of Bewertung
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BewertungCopyWith<_Bewertung> get copyWith => __$BewertungCopyWithImpl<_Bewertung>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BewertungToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Bewertung&&(identical(other.id, id) || other.id == id)&&(identical(other.unternehmenId, unternehmenId) || other.unternehmenId == unternehmenId)&&(identical(other.kriteriumId, kriteriumId) || other.kriteriumId == kriteriumId)&&(identical(other.punkte, punkte) || other.punkte == punkte)&&(identical(other.kommentar, kommentar) || other.kommentar == kommentar)&&(identical(other.benutzer, benutzer) || other.benutzer == benutzer)&&(identical(other.bewertetAm, bewertetAm) || other.bewertetAm == bewertetAm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,unternehmenId,kriteriumId,punkte,kommentar,benutzer,bewertetAm);

@override
String toString() {
  return 'Bewertung(id: $id, unternehmenId: $unternehmenId, kriteriumId: $kriteriumId, punkte: $punkte, kommentar: $kommentar, benutzer: $benutzer, bewertetAm: $bewertetAm)';
}


}

/// @nodoc
abstract mixin class _$BewertungCopyWith<$Res> implements $BewertungCopyWith<$Res> {
  factory _$BewertungCopyWith(_Bewertung value, $Res Function(_Bewertung) _then) = __$BewertungCopyWithImpl;
@override @useResult
$Res call({
 int id, int unternehmenId, int kriteriumId, double punkte, String? kommentar, String? benutzer,@JsonKey(name: 'bewertet_am') DateTime bewertetAm
});




}
/// @nodoc
class __$BewertungCopyWithImpl<$Res>
    implements _$BewertungCopyWith<$Res> {
  __$BewertungCopyWithImpl(this._self, this._then);

  final _Bewertung _self;
  final $Res Function(_Bewertung) _then;

/// Create a copy of Bewertung
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? unternehmenId = null,Object? kriteriumId = null,Object? punkte = null,Object? kommentar = freezed,Object? benutzer = freezed,Object? bewertetAm = null,}) {
  return _then(_Bewertung(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,unternehmenId: null == unternehmenId ? _self.unternehmenId : unternehmenId // ignore: cast_nullable_to_non_nullable
as int,kriteriumId: null == kriteriumId ? _self.kriteriumId : kriteriumId // ignore: cast_nullable_to_non_nullable
as int,punkte: null == punkte ? _self.punkte : punkte // ignore: cast_nullable_to_non_nullable
as double,kommentar: freezed == kommentar ? _self.kommentar : kommentar // ignore: cast_nullable_to_non_nullable
as String?,benutzer: freezed == benutzer ? _self.benutzer : benutzer // ignore: cast_nullable_to_non_nullable
as String?,bewertetAm: null == bewertetAm ? _self.bewertetAm : bewertetAm // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$BewertungDetail {

 int get id; int get unternehmenId; int get kriteriumId; double get punkte; String? get kommentar; String? get benutzer;@JsonKey(name: 'bewertet_am') DateTime get bewertetAm;@JsonKey(name: 'kriterium_name') String get kriteriumName;@JsonKey(name: 'kriterium_kategorie') String get kriteriumKategorie;@JsonKey(name: 'kriterium_wertigkeit') String get kriteriumWertigkeit;@JsonKey(name: 'kriterium_faktor') double get kriteriumFaktor;
/// Create a copy of BewertungDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BewertungDetailCopyWith<BewertungDetail> get copyWith => _$BewertungDetailCopyWithImpl<BewertungDetail>(this as BewertungDetail, _$identity);

  /// Serializes this BewertungDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BewertungDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.unternehmenId, unternehmenId) || other.unternehmenId == unternehmenId)&&(identical(other.kriteriumId, kriteriumId) || other.kriteriumId == kriteriumId)&&(identical(other.punkte, punkte) || other.punkte == punkte)&&(identical(other.kommentar, kommentar) || other.kommentar == kommentar)&&(identical(other.benutzer, benutzer) || other.benutzer == benutzer)&&(identical(other.bewertetAm, bewertetAm) || other.bewertetAm == bewertetAm)&&(identical(other.kriteriumName, kriteriumName) || other.kriteriumName == kriteriumName)&&(identical(other.kriteriumKategorie, kriteriumKategorie) || other.kriteriumKategorie == kriteriumKategorie)&&(identical(other.kriteriumWertigkeit, kriteriumWertigkeit) || other.kriteriumWertigkeit == kriteriumWertigkeit)&&(identical(other.kriteriumFaktor, kriteriumFaktor) || other.kriteriumFaktor == kriteriumFaktor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,unternehmenId,kriteriumId,punkte,kommentar,benutzer,bewertetAm,kriteriumName,kriteriumKategorie,kriteriumWertigkeit,kriteriumFaktor);

@override
String toString() {
  return 'BewertungDetail(id: $id, unternehmenId: $unternehmenId, kriteriumId: $kriteriumId, punkte: $punkte, kommentar: $kommentar, benutzer: $benutzer, bewertetAm: $bewertetAm, kriteriumName: $kriteriumName, kriteriumKategorie: $kriteriumKategorie, kriteriumWertigkeit: $kriteriumWertigkeit, kriteriumFaktor: $kriteriumFaktor)';
}


}

/// @nodoc
abstract mixin class $BewertungDetailCopyWith<$Res>  {
  factory $BewertungDetailCopyWith(BewertungDetail value, $Res Function(BewertungDetail) _then) = _$BewertungDetailCopyWithImpl;
@useResult
$Res call({
 int id, int unternehmenId, int kriteriumId, double punkte, String? kommentar, String? benutzer,@JsonKey(name: 'bewertet_am') DateTime bewertetAm,@JsonKey(name: 'kriterium_name') String kriteriumName,@JsonKey(name: 'kriterium_kategorie') String kriteriumKategorie,@JsonKey(name: 'kriterium_wertigkeit') String kriteriumWertigkeit,@JsonKey(name: 'kriterium_faktor') double kriteriumFaktor
});




}
/// @nodoc
class _$BewertungDetailCopyWithImpl<$Res>
    implements $BewertungDetailCopyWith<$Res> {
  _$BewertungDetailCopyWithImpl(this._self, this._then);

  final BewertungDetail _self;
  final $Res Function(BewertungDetail) _then;

/// Create a copy of BewertungDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? unternehmenId = null,Object? kriteriumId = null,Object? punkte = null,Object? kommentar = freezed,Object? benutzer = freezed,Object? bewertetAm = null,Object? kriteriumName = null,Object? kriteriumKategorie = null,Object? kriteriumWertigkeit = null,Object? kriteriumFaktor = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,unternehmenId: null == unternehmenId ? _self.unternehmenId : unternehmenId // ignore: cast_nullable_to_non_nullable
as int,kriteriumId: null == kriteriumId ? _self.kriteriumId : kriteriumId // ignore: cast_nullable_to_non_nullable
as int,punkte: null == punkte ? _self.punkte : punkte // ignore: cast_nullable_to_non_nullable
as double,kommentar: freezed == kommentar ? _self.kommentar : kommentar // ignore: cast_nullable_to_non_nullable
as String?,benutzer: freezed == benutzer ? _self.benutzer : benutzer // ignore: cast_nullable_to_non_nullable
as String?,bewertetAm: null == bewertetAm ? _self.bewertetAm : bewertetAm // ignore: cast_nullable_to_non_nullable
as DateTime,kriteriumName: null == kriteriumName ? _self.kriteriumName : kriteriumName // ignore: cast_nullable_to_non_nullable
as String,kriteriumKategorie: null == kriteriumKategorie ? _self.kriteriumKategorie : kriteriumKategorie // ignore: cast_nullable_to_non_nullable
as String,kriteriumWertigkeit: null == kriteriumWertigkeit ? _self.kriteriumWertigkeit : kriteriumWertigkeit // ignore: cast_nullable_to_non_nullable
as String,kriteriumFaktor: null == kriteriumFaktor ? _self.kriteriumFaktor : kriteriumFaktor // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [BewertungDetail].
extension BewertungDetailPatterns on BewertungDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BewertungDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BewertungDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BewertungDetail value)  $default,){
final _that = this;
switch (_that) {
case _BewertungDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BewertungDetail value)?  $default,){
final _that = this;
switch (_that) {
case _BewertungDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int unternehmenId,  int kriteriumId,  double punkte,  String? kommentar,  String? benutzer, @JsonKey(name: 'bewertet_am')  DateTime bewertetAm, @JsonKey(name: 'kriterium_name')  String kriteriumName, @JsonKey(name: 'kriterium_kategorie')  String kriteriumKategorie, @JsonKey(name: 'kriterium_wertigkeit')  String kriteriumWertigkeit, @JsonKey(name: 'kriterium_faktor')  double kriteriumFaktor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BewertungDetail() when $default != null:
return $default(_that.id,_that.unternehmenId,_that.kriteriumId,_that.punkte,_that.kommentar,_that.benutzer,_that.bewertetAm,_that.kriteriumName,_that.kriteriumKategorie,_that.kriteriumWertigkeit,_that.kriteriumFaktor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int unternehmenId,  int kriteriumId,  double punkte,  String? kommentar,  String? benutzer, @JsonKey(name: 'bewertet_am')  DateTime bewertetAm, @JsonKey(name: 'kriterium_name')  String kriteriumName, @JsonKey(name: 'kriterium_kategorie')  String kriteriumKategorie, @JsonKey(name: 'kriterium_wertigkeit')  String kriteriumWertigkeit, @JsonKey(name: 'kriterium_faktor')  double kriteriumFaktor)  $default,) {final _that = this;
switch (_that) {
case _BewertungDetail():
return $default(_that.id,_that.unternehmenId,_that.kriteriumId,_that.punkte,_that.kommentar,_that.benutzer,_that.bewertetAm,_that.kriteriumName,_that.kriteriumKategorie,_that.kriteriumWertigkeit,_that.kriteriumFaktor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int unternehmenId,  int kriteriumId,  double punkte,  String? kommentar,  String? benutzer, @JsonKey(name: 'bewertet_am')  DateTime bewertetAm, @JsonKey(name: 'kriterium_name')  String kriteriumName, @JsonKey(name: 'kriterium_kategorie')  String kriteriumKategorie, @JsonKey(name: 'kriterium_wertigkeit')  String kriteriumWertigkeit, @JsonKey(name: 'kriterium_faktor')  double kriteriumFaktor)?  $default,) {final _that = this;
switch (_that) {
case _BewertungDetail() when $default != null:
return $default(_that.id,_that.unternehmenId,_that.kriteriumId,_that.punkte,_that.kommentar,_that.benutzer,_that.bewertetAm,_that.kriteriumName,_that.kriteriumKategorie,_that.kriteriumWertigkeit,_that.kriteriumFaktor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BewertungDetail implements BewertungDetail {
  const _BewertungDetail({required this.id, required this.unternehmenId, required this.kriteriumId, required this.punkte, this.kommentar, this.benutzer, @JsonKey(name: 'bewertet_am') required this.bewertetAm, @JsonKey(name: 'kriterium_name') required this.kriteriumName, @JsonKey(name: 'kriterium_kategorie') required this.kriteriumKategorie, @JsonKey(name: 'kriterium_wertigkeit') required this.kriteriumWertigkeit, @JsonKey(name: 'kriterium_faktor') required this.kriteriumFaktor});
  factory _BewertungDetail.fromJson(Map<String, dynamic> json) => _$BewertungDetailFromJson(json);

@override final  int id;
@override final  int unternehmenId;
@override final  int kriteriumId;
@override final  double punkte;
@override final  String? kommentar;
@override final  String? benutzer;
@override@JsonKey(name: 'bewertet_am') final  DateTime bewertetAm;
@override@JsonKey(name: 'kriterium_name') final  String kriteriumName;
@override@JsonKey(name: 'kriterium_kategorie') final  String kriteriumKategorie;
@override@JsonKey(name: 'kriterium_wertigkeit') final  String kriteriumWertigkeit;
@override@JsonKey(name: 'kriterium_faktor') final  double kriteriumFaktor;

/// Create a copy of BewertungDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BewertungDetailCopyWith<_BewertungDetail> get copyWith => __$BewertungDetailCopyWithImpl<_BewertungDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BewertungDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BewertungDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.unternehmenId, unternehmenId) || other.unternehmenId == unternehmenId)&&(identical(other.kriteriumId, kriteriumId) || other.kriteriumId == kriteriumId)&&(identical(other.punkte, punkte) || other.punkte == punkte)&&(identical(other.kommentar, kommentar) || other.kommentar == kommentar)&&(identical(other.benutzer, benutzer) || other.benutzer == benutzer)&&(identical(other.bewertetAm, bewertetAm) || other.bewertetAm == bewertetAm)&&(identical(other.kriteriumName, kriteriumName) || other.kriteriumName == kriteriumName)&&(identical(other.kriteriumKategorie, kriteriumKategorie) || other.kriteriumKategorie == kriteriumKategorie)&&(identical(other.kriteriumWertigkeit, kriteriumWertigkeit) || other.kriteriumWertigkeit == kriteriumWertigkeit)&&(identical(other.kriteriumFaktor, kriteriumFaktor) || other.kriteriumFaktor == kriteriumFaktor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,unternehmenId,kriteriumId,punkte,kommentar,benutzer,bewertetAm,kriteriumName,kriteriumKategorie,kriteriumWertigkeit,kriteriumFaktor);

@override
String toString() {
  return 'BewertungDetail(id: $id, unternehmenId: $unternehmenId, kriteriumId: $kriteriumId, punkte: $punkte, kommentar: $kommentar, benutzer: $benutzer, bewertetAm: $bewertetAm, kriteriumName: $kriteriumName, kriteriumKategorie: $kriteriumKategorie, kriteriumWertigkeit: $kriteriumWertigkeit, kriteriumFaktor: $kriteriumFaktor)';
}


}

/// @nodoc
abstract mixin class _$BewertungDetailCopyWith<$Res> implements $BewertungDetailCopyWith<$Res> {
  factory _$BewertungDetailCopyWith(_BewertungDetail value, $Res Function(_BewertungDetail) _then) = __$BewertungDetailCopyWithImpl;
@override @useResult
$Res call({
 int id, int unternehmenId, int kriteriumId, double punkte, String? kommentar, String? benutzer,@JsonKey(name: 'bewertet_am') DateTime bewertetAm,@JsonKey(name: 'kriterium_name') String kriteriumName,@JsonKey(name: 'kriterium_kategorie') String kriteriumKategorie,@JsonKey(name: 'kriterium_wertigkeit') String kriteriumWertigkeit,@JsonKey(name: 'kriterium_faktor') double kriteriumFaktor
});




}
/// @nodoc
class __$BewertungDetailCopyWithImpl<$Res>
    implements _$BewertungDetailCopyWith<$Res> {
  __$BewertungDetailCopyWithImpl(this._self, this._then);

  final _BewertungDetail _self;
  final $Res Function(_BewertungDetail) _then;

/// Create a copy of BewertungDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? unternehmenId = null,Object? kriteriumId = null,Object? punkte = null,Object? kommentar = freezed,Object? benutzer = freezed,Object? bewertetAm = null,Object? kriteriumName = null,Object? kriteriumKategorie = null,Object? kriteriumWertigkeit = null,Object? kriteriumFaktor = null,}) {
  return _then(_BewertungDetail(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,unternehmenId: null == unternehmenId ? _self.unternehmenId : unternehmenId // ignore: cast_nullable_to_non_nullable
as int,kriteriumId: null == kriteriumId ? _self.kriteriumId : kriteriumId // ignore: cast_nullable_to_non_nullable
as int,punkte: null == punkte ? _self.punkte : punkte // ignore: cast_nullable_to_non_nullable
as double,kommentar: freezed == kommentar ? _self.kommentar : kommentar // ignore: cast_nullable_to_non_nullable
as String?,benutzer: freezed == benutzer ? _self.benutzer : benutzer // ignore: cast_nullable_to_non_nullable
as String?,bewertetAm: null == bewertetAm ? _self.bewertetAm : bewertetAm // ignore: cast_nullable_to_non_nullable
as DateTime,kriteriumName: null == kriteriumName ? _self.kriteriumName : kriteriumName // ignore: cast_nullable_to_non_nullable
as String,kriteriumKategorie: null == kriteriumKategorie ? _self.kriteriumKategorie : kriteriumKategorie // ignore: cast_nullable_to_non_nullable
as String,kriteriumWertigkeit: null == kriteriumWertigkeit ? _self.kriteriumWertigkeit : kriteriumWertigkeit // ignore: cast_nullable_to_non_nullable
as String,kriteriumFaktor: null == kriteriumFaktor ? _self.kriteriumFaktor : kriteriumFaktor // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
