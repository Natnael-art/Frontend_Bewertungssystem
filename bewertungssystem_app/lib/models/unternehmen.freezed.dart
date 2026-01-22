// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unternehmen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Unternehmen _$UnternehmenFromJson(Map<String, dynamic> json) {
  return _Unternehmen.fromJson(json);
}

/// @nodoc
mixin _$Unternehmen {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get branche => throw _privateConstructorUsedError;
  @JsonKey(name: "mitarbeiter_range")
  String? get mitarbeiterRange => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Unternehmen to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Unternehmen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnternehmenCopyWith<Unternehmen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnternehmenCopyWith<$Res> {
  factory $UnternehmenCopyWith(
    Unternehmen value,
    $Res Function(Unternehmen) then,
  ) = _$UnternehmenCopyWithImpl<$Res, Unternehmen>;
  @useResult
  $Res call({
    int id,
    String name,
    String branche,
    @JsonKey(name: "mitarbeiter_range") String? mitarbeiterRange,
    String? website,
    @JsonKey(name: "created_at") DateTime createdAt,
  });
}

/// @nodoc
class _$UnternehmenCopyWithImpl<$Res, $Val extends Unternehmen>
    implements $UnternehmenCopyWith<$Res> {
  _$UnternehmenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Unternehmen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? branche = null,
    Object? mitarbeiterRange = freezed,
    Object? website = freezed,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            branche: null == branche
                ? _value.branche
                : branche // ignore: cast_nullable_to_non_nullable
                      as String,
            mitarbeiterRange: freezed == mitarbeiterRange
                ? _value.mitarbeiterRange
                : mitarbeiterRange // ignore: cast_nullable_to_non_nullable
                      as String?,
            website: freezed == website
                ? _value.website
                : website // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UnternehmenImplCopyWith<$Res>
    implements $UnternehmenCopyWith<$Res> {
  factory _$$UnternehmenImplCopyWith(
    _$UnternehmenImpl value,
    $Res Function(_$UnternehmenImpl) then,
  ) = __$$UnternehmenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String branche,
    @JsonKey(name: "mitarbeiter_range") String? mitarbeiterRange,
    String? website,
    @JsonKey(name: "created_at") DateTime createdAt,
  });
}

/// @nodoc
class __$$UnternehmenImplCopyWithImpl<$Res>
    extends _$UnternehmenCopyWithImpl<$Res, _$UnternehmenImpl>
    implements _$$UnternehmenImplCopyWith<$Res> {
  __$$UnternehmenImplCopyWithImpl(
    _$UnternehmenImpl _value,
    $Res Function(_$UnternehmenImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Unternehmen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? branche = null,
    Object? mitarbeiterRange = freezed,
    Object? website = freezed,
    Object? createdAt = null,
  }) {
    return _then(
      _$UnternehmenImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        branche: null == branche
            ? _value.branche
            : branche // ignore: cast_nullable_to_non_nullable
                  as String,
        mitarbeiterRange: freezed == mitarbeiterRange
            ? _value.mitarbeiterRange
            : mitarbeiterRange // ignore: cast_nullable_to_non_nullable
                  as String?,
        website: freezed == website
            ? _value.website
            : website // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UnternehmenImpl extends _Unternehmen {
  const _$UnternehmenImpl({
    required this.id,
    required this.name,
    this.branche = 'HR-Software',
    @JsonKey(name: "mitarbeiter_range") this.mitarbeiterRange,
    this.website,
    @JsonKey(name: "created_at") required this.createdAt,
  }) : super._();

  factory _$UnternehmenImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnternehmenImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey()
  final String branche;
  @override
  @JsonKey(name: "mitarbeiter_range")
  final String? mitarbeiterRange;
  @override
  final String? website;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;

  @override
  String toString() {
    return 'Unternehmen(id: $id, name: $name, branche: $branche, mitarbeiterRange: $mitarbeiterRange, website: $website, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnternehmenImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.branche, branche) || other.branche == branche) &&
            (identical(other.mitarbeiterRange, mitarbeiterRange) ||
                other.mitarbeiterRange == mitarbeiterRange) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    branche,
    mitarbeiterRange,
    website,
    createdAt,
  );

  /// Create a copy of Unternehmen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnternehmenImplCopyWith<_$UnternehmenImpl> get copyWith =>
      __$$UnternehmenImplCopyWithImpl<_$UnternehmenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnternehmenImplToJson(this);
  }
}

abstract class _Unternehmen extends Unternehmen {
  const factory _Unternehmen({
    required final int id,
    required final String name,
    final String branche,
    @JsonKey(name: "mitarbeiter_range") final String? mitarbeiterRange,
    final String? website,
    @JsonKey(name: "created_at") required final DateTime createdAt,
  }) = _$UnternehmenImpl;
  const _Unternehmen._() : super._();

  factory _Unternehmen.fromJson(Map<String, dynamic> json) =
      _$UnternehmenImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get branche;
  @override
  @JsonKey(name: "mitarbeiter_range")
  String? get mitarbeiterRange;
  @override
  String? get website;
  @override
  @JsonKey(name: "created_at")
  DateTime get createdAt;

  /// Create a copy of Unternehmen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnternehmenImplCopyWith<_$UnternehmenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
