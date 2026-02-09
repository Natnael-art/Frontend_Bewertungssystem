// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unternehmen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Unternehmen {

 int get id; String get name;@JsonKey(name: 'branche') String? get branche;@JsonKey(name: 'mitarbeiter_range') String? get mitarbeiterRange; String? get website;@JsonKey(name: 'erstellt_am') DateTime? get erstelltAm;
/// Create a copy of Unternehmen
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnternehmenCopyWith<Unternehmen> get copyWith => _$UnternehmenCopyWithImpl<Unternehmen>(this as Unternehmen, _$identity);

  /// Serializes this Unternehmen to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unternehmen&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.branche, branche) || other.branche == branche)&&(identical(other.mitarbeiterRange, mitarbeiterRange) || other.mitarbeiterRange == mitarbeiterRange)&&(identical(other.website, website) || other.website == website)&&(identical(other.erstelltAm, erstelltAm) || other.erstelltAm == erstelltAm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,branche,mitarbeiterRange,website,erstelltAm);

@override
String toString() {
  return 'Unternehmen(id: $id, name: $name, branche: $branche, mitarbeiterRange: $mitarbeiterRange, website: $website, erstelltAm: $erstelltAm)';
}


}

/// @nodoc
abstract mixin class $UnternehmenCopyWith<$Res>  {
  factory $UnternehmenCopyWith(Unternehmen value, $Res Function(Unternehmen) _then) = _$UnternehmenCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(name: 'branche') String? branche,@JsonKey(name: 'mitarbeiter_range') String? mitarbeiterRange, String? website,@JsonKey(name: 'erstellt_am') DateTime? erstelltAm
});




}
/// @nodoc
class _$UnternehmenCopyWithImpl<$Res>
    implements $UnternehmenCopyWith<$Res> {
  _$UnternehmenCopyWithImpl(this._self, this._then);

  final Unternehmen _self;
  final $Res Function(Unternehmen) _then;

/// Create a copy of Unternehmen
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? branche = freezed,Object? mitarbeiterRange = freezed,Object? website = freezed,Object? erstelltAm = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,branche: freezed == branche ? _self.branche : branche // ignore: cast_nullable_to_non_nullable
as String?,mitarbeiterRange: freezed == mitarbeiterRange ? _self.mitarbeiterRange : mitarbeiterRange // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,erstelltAm: freezed == erstelltAm ? _self.erstelltAm : erstelltAm // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Unternehmen].
extension UnternehmenPatterns on Unternehmen {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Unternehmen value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Unternehmen() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Unternehmen value)  $default,){
final _that = this;
switch (_that) {
case _Unternehmen():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Unternehmen value)?  $default,){
final _that = this;
switch (_that) {
case _Unternehmen() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'branche')  String? branche, @JsonKey(name: 'mitarbeiter_range')  String? mitarbeiterRange,  String? website, @JsonKey(name: 'erstellt_am')  DateTime? erstelltAm)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Unternehmen() when $default != null:
return $default(_that.id,_that.name,_that.branche,_that.mitarbeiterRange,_that.website,_that.erstelltAm);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'branche')  String? branche, @JsonKey(name: 'mitarbeiter_range')  String? mitarbeiterRange,  String? website, @JsonKey(name: 'erstellt_am')  DateTime? erstelltAm)  $default,) {final _that = this;
switch (_that) {
case _Unternehmen():
return $default(_that.id,_that.name,_that.branche,_that.mitarbeiterRange,_that.website,_that.erstelltAm);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name, @JsonKey(name: 'branche')  String? branche, @JsonKey(name: 'mitarbeiter_range')  String? mitarbeiterRange,  String? website, @JsonKey(name: 'erstellt_am')  DateTime? erstelltAm)?  $default,) {final _that = this;
switch (_that) {
case _Unternehmen() when $default != null:
return $default(_that.id,_that.name,_that.branche,_that.mitarbeiterRange,_that.website,_that.erstelltAm);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Unternehmen implements Unternehmen {
  const _Unternehmen({required this.id, required this.name, @JsonKey(name: 'branche') this.branche, @JsonKey(name: 'mitarbeiter_range') this.mitarbeiterRange, this.website, @JsonKey(name: 'erstellt_am') this.erstelltAm});
  factory _Unternehmen.fromJson(Map<String, dynamic> json) => _$UnternehmenFromJson(json);

@override final  int id;
@override final  String name;
@override@JsonKey(name: 'branche') final  String? branche;
@override@JsonKey(name: 'mitarbeiter_range') final  String? mitarbeiterRange;
@override final  String? website;
@override@JsonKey(name: 'erstellt_am') final  DateTime? erstelltAm;

/// Create a copy of Unternehmen
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnternehmenCopyWith<_Unternehmen> get copyWith => __$UnternehmenCopyWithImpl<_Unternehmen>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UnternehmenToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Unternehmen&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.branche, branche) || other.branche == branche)&&(identical(other.mitarbeiterRange, mitarbeiterRange) || other.mitarbeiterRange == mitarbeiterRange)&&(identical(other.website, website) || other.website == website)&&(identical(other.erstelltAm, erstelltAm) || other.erstelltAm == erstelltAm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,branche,mitarbeiterRange,website,erstelltAm);

@override
String toString() {
  return 'Unternehmen(id: $id, name: $name, branche: $branche, mitarbeiterRange: $mitarbeiterRange, website: $website, erstelltAm: $erstelltAm)';
}


}

/// @nodoc
abstract mixin class _$UnternehmenCopyWith<$Res> implements $UnternehmenCopyWith<$Res> {
  factory _$UnternehmenCopyWith(_Unternehmen value, $Res Function(_Unternehmen) _then) = __$UnternehmenCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(name: 'branche') String? branche,@JsonKey(name: 'mitarbeiter_range') String? mitarbeiterRange, String? website,@JsonKey(name: 'erstellt_am') DateTime? erstelltAm
});




}
/// @nodoc
class __$UnternehmenCopyWithImpl<$Res>
    implements _$UnternehmenCopyWith<$Res> {
  __$UnternehmenCopyWithImpl(this._self, this._then);

  final _Unternehmen _self;
  final $Res Function(_Unternehmen) _then;

/// Create a copy of Unternehmen
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? branche = freezed,Object? mitarbeiterRange = freezed,Object? website = freezed,Object? erstelltAm = freezed,}) {
  return _then(_Unternehmen(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,branche: freezed == branche ? _self.branche : branche // ignore: cast_nullable_to_non_nullable
as String?,mitarbeiterRange: freezed == mitarbeiterRange ? _self.mitarbeiterRange : mitarbeiterRange // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,erstelltAm: freezed == erstelltAm ? _self.erstelltAm : erstelltAm // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
