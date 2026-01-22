// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kriterium.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Kriterium _$KriteriumFromJson(Map<String, dynamic> json) {
  return _Kriterium.fromJson(json);
}

/// @nodoc
mixin _$Kriterium {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get beschreibung => throw _privateConstructorUsedError;

  /// Wertigkeit des Kriteriums (z. B. "k.o.", "wichtig", "mindestanforderung", "extra")
  String get wertigkeit => throw _privateConstructorUsedError;

  /// Faktor zur Berechnung der gewichteten Punkte
  double get faktor => throw _privateConstructorUsedError;

  /// Maximale Punkte, die für dieses Kriterium vergeben werden können
  @JsonKey(name: "max_punkte")
  int get maxPunkte => throw _privateConstructorUsedError;

  /// Ob das Kriterium aktiv genutzt wird
  bool get aktiv => throw _privateConstructorUsedError;

  /// Serializes this Kriterium to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Kriterium
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KriteriumCopyWith<Kriterium> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KriteriumCopyWith<$Res> {
  factory $KriteriumCopyWith(Kriterium value, $Res Function(Kriterium) then) =
      _$KriteriumCopyWithImpl<$Res, Kriterium>;
  @useResult
  $Res call({
    int id,
    String name,
    String? beschreibung,
    String wertigkeit,
    double faktor,
    @JsonKey(name: "max_punkte") int maxPunkte,
    bool aktiv,
  });
}

/// @nodoc
class _$KriteriumCopyWithImpl<$Res, $Val extends Kriterium>
    implements $KriteriumCopyWith<$Res> {
  _$KriteriumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Kriterium
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? beschreibung = freezed,
    Object? wertigkeit = null,
    Object? faktor = null,
    Object? maxPunkte = null,
    Object? aktiv = null,
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
            beschreibung: freezed == beschreibung
                ? _value.beschreibung
                : beschreibung // ignore: cast_nullable_to_non_nullable
                      as String?,
            wertigkeit: null == wertigkeit
                ? _value.wertigkeit
                : wertigkeit // ignore: cast_nullable_to_non_nullable
                      as String,
            faktor: null == faktor
                ? _value.faktor
                : faktor // ignore: cast_nullable_to_non_nullable
                      as double,
            maxPunkte: null == maxPunkte
                ? _value.maxPunkte
                : maxPunkte // ignore: cast_nullable_to_non_nullable
                      as int,
            aktiv: null == aktiv
                ? _value.aktiv
                : aktiv // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$KriteriumImplCopyWith<$Res>
    implements $KriteriumCopyWith<$Res> {
  factory _$$KriteriumImplCopyWith(
    _$KriteriumImpl value,
    $Res Function(_$KriteriumImpl) then,
  ) = __$$KriteriumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String? beschreibung,
    String wertigkeit,
    double faktor,
    @JsonKey(name: "max_punkte") int maxPunkte,
    bool aktiv,
  });
}

/// @nodoc
class __$$KriteriumImplCopyWithImpl<$Res>
    extends _$KriteriumCopyWithImpl<$Res, _$KriteriumImpl>
    implements _$$KriteriumImplCopyWith<$Res> {
  __$$KriteriumImplCopyWithImpl(
    _$KriteriumImpl _value,
    $Res Function(_$KriteriumImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Kriterium
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? beschreibung = freezed,
    Object? wertigkeit = null,
    Object? faktor = null,
    Object? maxPunkte = null,
    Object? aktiv = null,
  }) {
    return _then(
      _$KriteriumImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        beschreibung: freezed == beschreibung
            ? _value.beschreibung
            : beschreibung // ignore: cast_nullable_to_non_nullable
                  as String?,
        wertigkeit: null == wertigkeit
            ? _value.wertigkeit
            : wertigkeit // ignore: cast_nullable_to_non_nullable
                  as String,
        faktor: null == faktor
            ? _value.faktor
            : faktor // ignore: cast_nullable_to_non_nullable
                  as double,
        maxPunkte: null == maxPunkte
            ? _value.maxPunkte
            : maxPunkte // ignore: cast_nullable_to_non_nullable
                  as int,
        aktiv: null == aktiv
            ? _value.aktiv
            : aktiv // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$KriteriumImpl extends _Kriterium {
  const _$KriteriumImpl({
    required this.id,
    required this.name,
    this.beschreibung,
    required this.wertigkeit,
    required this.faktor,
    @JsonKey(name: "max_punkte") this.maxPunkte = 20,
    this.aktiv = true,
  }) : super._();

  factory _$KriteriumImpl.fromJson(Map<String, dynamic> json) =>
      _$$KriteriumImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? beschreibung;

  /// Wertigkeit des Kriteriums (z. B. "k.o.", "wichtig", "mindestanforderung", "extra")
  @override
  final String wertigkeit;

  /// Faktor zur Berechnung der gewichteten Punkte
  @override
  final double faktor;

  /// Maximale Punkte, die für dieses Kriterium vergeben werden können
  @override
  @JsonKey(name: "max_punkte")
  final int maxPunkte;

  /// Ob das Kriterium aktiv genutzt wird
  @override
  @JsonKey()
  final bool aktiv;

  @override
  String toString() {
    return 'Kriterium(id: $id, name: $name, beschreibung: $beschreibung, wertigkeit: $wertigkeit, faktor: $faktor, maxPunkte: $maxPunkte, aktiv: $aktiv)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KriteriumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.beschreibung, beschreibung) ||
                other.beschreibung == beschreibung) &&
            (identical(other.wertigkeit, wertigkeit) ||
                other.wertigkeit == wertigkeit) &&
            (identical(other.faktor, faktor) || other.faktor == faktor) &&
            (identical(other.maxPunkte, maxPunkte) ||
                other.maxPunkte == maxPunkte) &&
            (identical(other.aktiv, aktiv) || other.aktiv == aktiv));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    beschreibung,
    wertigkeit,
    faktor,
    maxPunkte,
    aktiv,
  );

  /// Create a copy of Kriterium
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KriteriumImplCopyWith<_$KriteriumImpl> get copyWith =>
      __$$KriteriumImplCopyWithImpl<_$KriteriumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KriteriumImplToJson(this);
  }
}

abstract class _Kriterium extends Kriterium {
  const factory _Kriterium({
    required final int id,
    required final String name,
    final String? beschreibung,
    required final String wertigkeit,
    required final double faktor,
    @JsonKey(name: "max_punkte") final int maxPunkte,
    final bool aktiv,
  }) = _$KriteriumImpl;
  const _Kriterium._() : super._();

  factory _Kriterium.fromJson(Map<String, dynamic> json) =
      _$KriteriumImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get beschreibung;

  /// Wertigkeit des Kriteriums (z. B. "k.o.", "wichtig", "mindestanforderung", "extra")
  @override
  String get wertigkeit;

  /// Faktor zur Berechnung der gewichteten Punkte
  @override
  double get faktor;

  /// Maximale Punkte, die für dieses Kriterium vergeben werden können
  @override
  @JsonKey(name: "max_punkte")
  int get maxPunkte;

  /// Ob das Kriterium aktiv genutzt wird
  @override
  bool get aktiv;

  /// Create a copy of Kriterium
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KriteriumImplCopyWith<_$KriteriumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
