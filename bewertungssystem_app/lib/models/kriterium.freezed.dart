// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kriterium.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Kriterium {

 int get id; String get name; String get kategorie; String? get beschreibung; String get wertigkeit; double get faktor;@JsonKey(name: "max_punkte") int get maxPunkte; bool get aktiv;
/// Create a copy of Kriterium
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KriteriumCopyWith<Kriterium> get copyWith => _$KriteriumCopyWithImpl<Kriterium>(this as Kriterium, _$identity);

  /// Serializes this Kriterium to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Kriterium&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kategorie, kategorie) || other.kategorie == kategorie)&&(identical(other.beschreibung, beschreibung) || other.beschreibung == beschreibung)&&(identical(other.wertigkeit, wertigkeit) || other.wertigkeit == wertigkeit)&&(identical(other.faktor, faktor) || other.faktor == faktor)&&(identical(other.maxPunkte, maxPunkte) || other.maxPunkte == maxPunkte)&&(identical(other.aktiv, aktiv) || other.aktiv == aktiv));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,kategorie,beschreibung,wertigkeit,faktor,maxPunkte,aktiv);

@override
String toString() {
  return 'Kriterium(id: $id, name: $name, kategorie: $kategorie, beschreibung: $beschreibung, wertigkeit: $wertigkeit, faktor: $faktor, maxPunkte: $maxPunkte, aktiv: $aktiv)';
}


}

/// @nodoc
abstract mixin class $KriteriumCopyWith<$Res>  {
  factory $KriteriumCopyWith(Kriterium value, $Res Function(Kriterium) _then) = _$KriteriumCopyWithImpl;
@useResult
$Res call({
 int id, String name, String kategorie, String? beschreibung, String wertigkeit, double faktor,@JsonKey(name: "max_punkte") int maxPunkte, bool aktiv
});




}
/// @nodoc
class _$KriteriumCopyWithImpl<$Res>
    implements $KriteriumCopyWith<$Res> {
  _$KriteriumCopyWithImpl(this._self, this._then);

  final Kriterium _self;
  final $Res Function(Kriterium) _then;

/// Create a copy of Kriterium
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? kategorie = null,Object? beschreibung = freezed,Object? wertigkeit = null,Object? faktor = null,Object? maxPunkte = null,Object? aktiv = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kategorie: null == kategorie ? _self.kategorie : kategorie // ignore: cast_nullable_to_non_nullable
as String,beschreibung: freezed == beschreibung ? _self.beschreibung : beschreibung // ignore: cast_nullable_to_non_nullable
as String?,wertigkeit: null == wertigkeit ? _self.wertigkeit : wertigkeit // ignore: cast_nullable_to_non_nullable
as String,faktor: null == faktor ? _self.faktor : faktor // ignore: cast_nullable_to_non_nullable
as double,maxPunkte: null == maxPunkte ? _self.maxPunkte : maxPunkte // ignore: cast_nullable_to_non_nullable
as int,aktiv: null == aktiv ? _self.aktiv : aktiv // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Kriterium].
extension KriteriumPatterns on Kriterium {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Kriterium value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Kriterium() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Kriterium value)  $default,){
final _that = this;
switch (_that) {
case _Kriterium():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Kriterium value)?  $default,){
final _that = this;
switch (_that) {
case _Kriterium() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String kategorie,  String? beschreibung,  String wertigkeit,  double faktor, @JsonKey(name: "max_punkte")  int maxPunkte,  bool aktiv)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Kriterium() when $default != null:
return $default(_that.id,_that.name,_that.kategorie,_that.beschreibung,_that.wertigkeit,_that.faktor,_that.maxPunkte,_that.aktiv);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String kategorie,  String? beschreibung,  String wertigkeit,  double faktor, @JsonKey(name: "max_punkte")  int maxPunkte,  bool aktiv)  $default,) {final _that = this;
switch (_that) {
case _Kriterium():
return $default(_that.id,_that.name,_that.kategorie,_that.beschreibung,_that.wertigkeit,_that.faktor,_that.maxPunkte,_that.aktiv);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String kategorie,  String? beschreibung,  String wertigkeit,  double faktor, @JsonKey(name: "max_punkte")  int maxPunkte,  bool aktiv)?  $default,) {final _that = this;
switch (_that) {
case _Kriterium() when $default != null:
return $default(_that.id,_that.name,_that.kategorie,_that.beschreibung,_that.wertigkeit,_that.faktor,_that.maxPunkte,_that.aktiv);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Kriterium extends Kriterium {
  const _Kriterium({required this.id, required this.name, required this.kategorie, this.beschreibung, required this.wertigkeit, required this.faktor, @JsonKey(name: "max_punkte") this.maxPunkte = 10, this.aktiv = true}): super._();
  factory _Kriterium.fromJson(Map<String, dynamic> json) => _$KriteriumFromJson(json);

@override final  int id;
@override final  String name;
@override final  String kategorie;
@override final  String? beschreibung;
@override final  String wertigkeit;
@override final  double faktor;
@override@JsonKey(name: "max_punkte") final  int maxPunkte;
@override@JsonKey() final  bool aktiv;

/// Create a copy of Kriterium
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KriteriumCopyWith<_Kriterium> get copyWith => __$KriteriumCopyWithImpl<_Kriterium>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KriteriumToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Kriterium&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kategorie, kategorie) || other.kategorie == kategorie)&&(identical(other.beschreibung, beschreibung) || other.beschreibung == beschreibung)&&(identical(other.wertigkeit, wertigkeit) || other.wertigkeit == wertigkeit)&&(identical(other.faktor, faktor) || other.faktor == faktor)&&(identical(other.maxPunkte, maxPunkte) || other.maxPunkte == maxPunkte)&&(identical(other.aktiv, aktiv) || other.aktiv == aktiv));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,kategorie,beschreibung,wertigkeit,faktor,maxPunkte,aktiv);

@override
String toString() {
  return 'Kriterium(id: $id, name: $name, kategorie: $kategorie, beschreibung: $beschreibung, wertigkeit: $wertigkeit, faktor: $faktor, maxPunkte: $maxPunkte, aktiv: $aktiv)';
}


}

/// @nodoc
abstract mixin class _$KriteriumCopyWith<$Res> implements $KriteriumCopyWith<$Res> {
  factory _$KriteriumCopyWith(_Kriterium value, $Res Function(_Kriterium) _then) = __$KriteriumCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String kategorie, String? beschreibung, String wertigkeit, double faktor,@JsonKey(name: "max_punkte") int maxPunkte, bool aktiv
});




}
/// @nodoc
class __$KriteriumCopyWithImpl<$Res>
    implements _$KriteriumCopyWith<$Res> {
  __$KriteriumCopyWithImpl(this._self, this._then);

  final _Kriterium _self;
  final $Res Function(_Kriterium) _then;

/// Create a copy of Kriterium
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? kategorie = null,Object? beschreibung = freezed,Object? wertigkeit = null,Object? faktor = null,Object? maxPunkte = null,Object? aktiv = null,}) {
  return _then(_Kriterium(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kategorie: null == kategorie ? _self.kategorie : kategorie // ignore: cast_nullable_to_non_nullable
as String,beschreibung: freezed == beschreibung ? _self.beschreibung : beschreibung // ignore: cast_nullable_to_non_nullable
as String?,wertigkeit: null == wertigkeit ? _self.wertigkeit : wertigkeit // ignore: cast_nullable_to_non_nullable
as String,faktor: null == faktor ? _self.faktor : faktor // ignore: cast_nullable_to_non_nullable
as double,maxPunkte: null == maxPunkte ? _self.maxPunkte : maxPunkte // ignore: cast_nullable_to_non_nullable
as int,aktiv: null == aktiv ? _self.aktiv : aktiv // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
