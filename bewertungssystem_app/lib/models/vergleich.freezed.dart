// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vergleich.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

VergleichEntry _$VergleichEntryFromJson(Map<String, dynamic> json) {
  return _VergleichEntry.fromJson(json);
}

/// @nodoc
mixin _$VergleichEntry {
  String get name => throw _privateConstructorUsedError;
  double get gesamtScore => throw _privateConstructorUsedError;
  bool get bestanden => throw _privateConstructorUsedError;
  Map<String, KategorieScore> get kategorieScores =>
      throw _privateConstructorUsedError;

  /// Serializes this VergleichEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VergleichEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VergleichEntryCopyWith<VergleichEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VergleichEntryCopyWith<$Res> {
  factory $VergleichEntryCopyWith(
    VergleichEntry value,
    $Res Function(VergleichEntry) then,
  ) = _$VergleichEntryCopyWithImpl<$Res, VergleichEntry>;
  @useResult
  $Res call({
    String name,
    double gesamtScore,
    bool bestanden,
    Map<String, KategorieScore> kategorieScores,
  });
}

/// @nodoc
class _$VergleichEntryCopyWithImpl<$Res, $Val extends VergleichEntry>
    implements $VergleichEntryCopyWith<$Res> {
  _$VergleichEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VergleichEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? gesamtScore = null,
    Object? bestanden = null,
    Object? kategorieScores = null,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VergleichEntryImplCopyWith<$Res>
    implements $VergleichEntryCopyWith<$Res> {
  factory _$$VergleichEntryImplCopyWith(
    _$VergleichEntryImpl value,
    $Res Function(_$VergleichEntryImpl) then,
  ) = __$$VergleichEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    double gesamtScore,
    bool bestanden,
    Map<String, KategorieScore> kategorieScores,
  });
}

/// @nodoc
class __$$VergleichEntryImplCopyWithImpl<$Res>
    extends _$VergleichEntryCopyWithImpl<$Res, _$VergleichEntryImpl>
    implements _$$VergleichEntryImplCopyWith<$Res> {
  __$$VergleichEntryImplCopyWithImpl(
    _$VergleichEntryImpl _value,
    $Res Function(_$VergleichEntryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VergleichEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? gesamtScore = null,
    Object? bestanden = null,
    Object? kategorieScores = null,
  }) {
    return _then(
      _$VergleichEntryImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VergleichEntryImpl implements _VergleichEntry {
  const _$VergleichEntryImpl({
    required this.name,
    required this.gesamtScore,
    required this.bestanden,
    required final Map<String, KategorieScore> kategorieScores,
  }) : _kategorieScores = kategorieScores;

  factory _$VergleichEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$VergleichEntryImplFromJson(json);

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
  String toString() {
    return 'VergleichEntry(name: $name, gesamtScore: $gesamtScore, bestanden: $bestanden, kategorieScores: $kategorieScores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VergleichEntryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gesamtScore, gesamtScore) ||
                other.gesamtScore == gesamtScore) &&
            (identical(other.bestanden, bestanden) ||
                other.bestanden == bestanden) &&
            const DeepCollectionEquality().equals(
              other._kategorieScores,
              _kategorieScores,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    gesamtScore,
    bestanden,
    const DeepCollectionEquality().hash(_kategorieScores),
  );

  /// Create a copy of VergleichEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VergleichEntryImplCopyWith<_$VergleichEntryImpl> get copyWith =>
      __$$VergleichEntryImplCopyWithImpl<_$VergleichEntryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$VergleichEntryImplToJson(this);
  }
}

abstract class _VergleichEntry implements VergleichEntry {
  const factory _VergleichEntry({
    required final String name,
    required final double gesamtScore,
    required final bool bestanden,
    required final Map<String, KategorieScore> kategorieScores,
  }) = _$VergleichEntryImpl;

  factory _VergleichEntry.fromJson(Map<String, dynamic> json) =
      _$VergleichEntryImpl.fromJson;

  @override
  String get name;
  @override
  double get gesamtScore;
  @override
  bool get bestanden;
  @override
  Map<String, KategorieScore> get kategorieScores;

  /// Create a copy of VergleichEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VergleichEntryImplCopyWith<_$VergleichEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
