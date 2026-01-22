// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bewertung.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BewertungCreate _$BewertungCreateFromJson(Map<String, dynamic> json) {
  return _BewertungCreate.fromJson(json);
}

/// @nodoc
mixin _$BewertungCreate {
  @JsonKey(name: 'unternehmen_id')
  int get unternehmenId => throw _privateConstructorUsedError;
  @JsonKey(name: 'kriterium_id')
  int get kriteriumId => throw _privateConstructorUsedError;
  double get punkte => throw _privateConstructorUsedError;
  String? get kommentar => throw _privateConstructorUsedError;
  String get benutzer => throw _privateConstructorUsedError;

  /// Serializes this BewertungCreate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BewertungCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BewertungCreateCopyWith<BewertungCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BewertungCreateCopyWith<$Res> {
  factory $BewertungCreateCopyWith(
    BewertungCreate value,
    $Res Function(BewertungCreate) then,
  ) = _$BewertungCreateCopyWithImpl<$Res, BewertungCreate>;
  @useResult
  $Res call({
    @JsonKey(name: 'unternehmen_id') int unternehmenId,
    @JsonKey(name: 'kriterium_id') int kriteriumId,
    double punkte,
    String? kommentar,
    String benutzer,
  });
}

/// @nodoc
class _$BewertungCreateCopyWithImpl<$Res, $Val extends BewertungCreate>
    implements $BewertungCreateCopyWith<$Res> {
  _$BewertungCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BewertungCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unternehmenId = null,
    Object? kriteriumId = null,
    Object? punkte = null,
    Object? kommentar = freezed,
    Object? benutzer = null,
  }) {
    return _then(
      _value.copyWith(
            unternehmenId: null == unternehmenId
                ? _value.unternehmenId
                : unternehmenId // ignore: cast_nullable_to_non_nullable
                      as int,
            kriteriumId: null == kriteriumId
                ? _value.kriteriumId
                : kriteriumId // ignore: cast_nullable_to_non_nullable
                      as int,
            punkte: null == punkte
                ? _value.punkte
                : punkte // ignore: cast_nullable_to_non_nullable
                      as double,
            kommentar: freezed == kommentar
                ? _value.kommentar
                : kommentar // ignore: cast_nullable_to_non_nullable
                      as String?,
            benutzer: null == benutzer
                ? _value.benutzer
                : benutzer // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BewertungCreateImplCopyWith<$Res>
    implements $BewertungCreateCopyWith<$Res> {
  factory _$$BewertungCreateImplCopyWith(
    _$BewertungCreateImpl value,
    $Res Function(_$BewertungCreateImpl) then,
  ) = __$$BewertungCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'unternehmen_id') int unternehmenId,
    @JsonKey(name: 'kriterium_id') int kriteriumId,
    double punkte,
    String? kommentar,
    String benutzer,
  });
}

/// @nodoc
class __$$BewertungCreateImplCopyWithImpl<$Res>
    extends _$BewertungCreateCopyWithImpl<$Res, _$BewertungCreateImpl>
    implements _$$BewertungCreateImplCopyWith<$Res> {
  __$$BewertungCreateImplCopyWithImpl(
    _$BewertungCreateImpl _value,
    $Res Function(_$BewertungCreateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BewertungCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unternehmenId = null,
    Object? kriteriumId = null,
    Object? punkte = null,
    Object? kommentar = freezed,
    Object? benutzer = null,
  }) {
    return _then(
      _$BewertungCreateImpl(
        unternehmenId: null == unternehmenId
            ? _value.unternehmenId
            : unternehmenId // ignore: cast_nullable_to_non_nullable
                  as int,
        kriteriumId: null == kriteriumId
            ? _value.kriteriumId
            : kriteriumId // ignore: cast_nullable_to_non_nullable
                  as int,
        punkte: null == punkte
            ? _value.punkte
            : punkte // ignore: cast_nullable_to_non_nullable
                  as double,
        kommentar: freezed == kommentar
            ? _value.kommentar
            : kommentar // ignore: cast_nullable_to_non_nullable
                  as String?,
        benutzer: null == benutzer
            ? _value.benutzer
            : benutzer // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BewertungCreateImpl implements _BewertungCreate {
  const _$BewertungCreateImpl({
    @JsonKey(name: 'unternehmen_id') required this.unternehmenId,
    @JsonKey(name: 'kriterium_id') required this.kriteriumId,
    required this.punkte,
    this.kommentar,
    this.benutzer = "System",
  });

  factory _$BewertungCreateImpl.fromJson(Map<String, dynamic> json) =>
      _$$BewertungCreateImplFromJson(json);

  @override
  @JsonKey(name: 'unternehmen_id')
  final int unternehmenId;
  @override
  @JsonKey(name: 'kriterium_id')
  final int kriteriumId;
  @override
  final double punkte;
  @override
  final String? kommentar;
  @override
  @JsonKey()
  final String benutzer;

  @override
  String toString() {
    return 'BewertungCreate(unternehmenId: $unternehmenId, kriteriumId: $kriteriumId, punkte: $punkte, kommentar: $kommentar, benutzer: $benutzer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BewertungCreateImpl &&
            (identical(other.unternehmenId, unternehmenId) ||
                other.unternehmenId == unternehmenId) &&
            (identical(other.kriteriumId, kriteriumId) ||
                other.kriteriumId == kriteriumId) &&
            (identical(other.punkte, punkte) || other.punkte == punkte) &&
            (identical(other.kommentar, kommentar) ||
                other.kommentar == kommentar) &&
            (identical(other.benutzer, benutzer) ||
                other.benutzer == benutzer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    unternehmenId,
    kriteriumId,
    punkte,
    kommentar,
    benutzer,
  );

  /// Create a copy of BewertungCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BewertungCreateImplCopyWith<_$BewertungCreateImpl> get copyWith =>
      __$$BewertungCreateImplCopyWithImpl<_$BewertungCreateImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BewertungCreateImplToJson(this);
  }
}

abstract class _BewertungCreate implements BewertungCreate {
  const factory _BewertungCreate({
    @JsonKey(name: 'unternehmen_id') required final int unternehmenId,
    @JsonKey(name: 'kriterium_id') required final int kriteriumId,
    required final double punkte,
    final String? kommentar,
    final String benutzer,
  }) = _$BewertungCreateImpl;

  factory _BewertungCreate.fromJson(Map<String, dynamic> json) =
      _$BewertungCreateImpl.fromJson;

  @override
  @JsonKey(name: 'unternehmen_id')
  int get unternehmenId;
  @override
  @JsonKey(name: 'kriterium_id')
  int get kriteriumId;
  @override
  double get punkte;
  @override
  String? get kommentar;
  @override
  String get benutzer;

  /// Create a copy of BewertungCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BewertungCreateImplCopyWith<_$BewertungCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Bewertung _$BewertungFromJson(Map<String, dynamic> json) {
  return _Bewertung.fromJson(json);
}

/// @nodoc
mixin _$Bewertung {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'unternehmen_id')
  int get unternehmenId => throw _privateConstructorUsedError;
  @JsonKey(name: 'kriterium_id')
  int get kriteriumId => throw _privateConstructorUsedError;
  double get punkte => throw _privateConstructorUsedError;
  String? get kommentar => throw _privateConstructorUsedError;
  String get benutzer => throw _privateConstructorUsedError;
  @JsonKey(name: 'bewertet_am')
  DateTime get bewertetAm => throw _privateConstructorUsedError;

  /// Serializes this Bewertung to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Bewertung
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BewertungCopyWith<Bewertung> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BewertungCopyWith<$Res> {
  factory $BewertungCopyWith(Bewertung value, $Res Function(Bewertung) then) =
      _$BewertungCopyWithImpl<$Res, Bewertung>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'unternehmen_id') int unternehmenId,
    @JsonKey(name: 'kriterium_id') int kriteriumId,
    double punkte,
    String? kommentar,
    String benutzer,
    @JsonKey(name: 'bewertet_am') DateTime bewertetAm,
  });
}

/// @nodoc
class _$BewertungCopyWithImpl<$Res, $Val extends Bewertung>
    implements $BewertungCopyWith<$Res> {
  _$BewertungCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Bewertung
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? unternehmenId = null,
    Object? kriteriumId = null,
    Object? punkte = null,
    Object? kommentar = freezed,
    Object? benutzer = null,
    Object? bewertetAm = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            unternehmenId: null == unternehmenId
                ? _value.unternehmenId
                : unternehmenId // ignore: cast_nullable_to_non_nullable
                      as int,
            kriteriumId: null == kriteriumId
                ? _value.kriteriumId
                : kriteriumId // ignore: cast_nullable_to_non_nullable
                      as int,
            punkte: null == punkte
                ? _value.punkte
                : punkte // ignore: cast_nullable_to_non_nullable
                      as double,
            kommentar: freezed == kommentar
                ? _value.kommentar
                : kommentar // ignore: cast_nullable_to_non_nullable
                      as String?,
            benutzer: null == benutzer
                ? _value.benutzer
                : benutzer // ignore: cast_nullable_to_non_nullable
                      as String,
            bewertetAm: null == bewertetAm
                ? _value.bewertetAm
                : bewertetAm // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BewertungImplCopyWith<$Res>
    implements $BewertungCopyWith<$Res> {
  factory _$$BewertungImplCopyWith(
    _$BewertungImpl value,
    $Res Function(_$BewertungImpl) then,
  ) = __$$BewertungImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'unternehmen_id') int unternehmenId,
    @JsonKey(name: 'kriterium_id') int kriteriumId,
    double punkte,
    String? kommentar,
    String benutzer,
    @JsonKey(name: 'bewertet_am') DateTime bewertetAm,
  });
}

/// @nodoc
class __$$BewertungImplCopyWithImpl<$Res>
    extends _$BewertungCopyWithImpl<$Res, _$BewertungImpl>
    implements _$$BewertungImplCopyWith<$Res> {
  __$$BewertungImplCopyWithImpl(
    _$BewertungImpl _value,
    $Res Function(_$BewertungImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Bewertung
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? unternehmenId = null,
    Object? kriteriumId = null,
    Object? punkte = null,
    Object? kommentar = freezed,
    Object? benutzer = null,
    Object? bewertetAm = null,
  }) {
    return _then(
      _$BewertungImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        unternehmenId: null == unternehmenId
            ? _value.unternehmenId
            : unternehmenId // ignore: cast_nullable_to_non_nullable
                  as int,
        kriteriumId: null == kriteriumId
            ? _value.kriteriumId
            : kriteriumId // ignore: cast_nullable_to_non_nullable
                  as int,
        punkte: null == punkte
            ? _value.punkte
            : punkte // ignore: cast_nullable_to_non_nullable
                  as double,
        kommentar: freezed == kommentar
            ? _value.kommentar
            : kommentar // ignore: cast_nullable_to_non_nullable
                  as String?,
        benutzer: null == benutzer
            ? _value.benutzer
            : benutzer // ignore: cast_nullable_to_non_nullable
                  as String,
        bewertetAm: null == bewertetAm
            ? _value.bewertetAm
            : bewertetAm // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BewertungImpl implements _Bewertung {
  const _$BewertungImpl({
    required this.id,
    @JsonKey(name: 'unternehmen_id') required this.unternehmenId,
    @JsonKey(name: 'kriterium_id') required this.kriteriumId,
    required this.punkte,
    this.kommentar,
    this.benutzer = "System",
    @JsonKey(name: 'bewertet_am') required this.bewertetAm,
  });

  factory _$BewertungImpl.fromJson(Map<String, dynamic> json) =>
      _$$BewertungImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'unternehmen_id')
  final int unternehmenId;
  @override
  @JsonKey(name: 'kriterium_id')
  final int kriteriumId;
  @override
  final double punkte;
  @override
  final String? kommentar;
  @override
  @JsonKey()
  final String benutzer;
  @override
  @JsonKey(name: 'bewertet_am')
  final DateTime bewertetAm;

  @override
  String toString() {
    return 'Bewertung(id: $id, unternehmenId: $unternehmenId, kriteriumId: $kriteriumId, punkte: $punkte, kommentar: $kommentar, benutzer: $benutzer, bewertetAm: $bewertetAm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BewertungImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.unternehmenId, unternehmenId) ||
                other.unternehmenId == unternehmenId) &&
            (identical(other.kriteriumId, kriteriumId) ||
                other.kriteriumId == kriteriumId) &&
            (identical(other.punkte, punkte) || other.punkte == punkte) &&
            (identical(other.kommentar, kommentar) ||
                other.kommentar == kommentar) &&
            (identical(other.benutzer, benutzer) ||
                other.benutzer == benutzer) &&
            (identical(other.bewertetAm, bewertetAm) ||
                other.bewertetAm == bewertetAm));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    unternehmenId,
    kriteriumId,
    punkte,
    kommentar,
    benutzer,
    bewertetAm,
  );

  /// Create a copy of Bewertung
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BewertungImplCopyWith<_$BewertungImpl> get copyWith =>
      __$$BewertungImplCopyWithImpl<_$BewertungImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BewertungImplToJson(this);
  }
}

abstract class _Bewertung implements Bewertung {
  const factory _Bewertung({
    required final int id,
    @JsonKey(name: 'unternehmen_id') required final int unternehmenId,
    @JsonKey(name: 'kriterium_id') required final int kriteriumId,
    required final double punkte,
    final String? kommentar,
    final String benutzer,
    @JsonKey(name: 'bewertet_am') required final DateTime bewertetAm,
  }) = _$BewertungImpl;

  factory _Bewertung.fromJson(Map<String, dynamic> json) =
      _$BewertungImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'unternehmen_id')
  int get unternehmenId;
  @override
  @JsonKey(name: 'kriterium_id')
  int get kriteriumId;
  @override
  double get punkte;
  @override
  String? get kommentar;
  @override
  String get benutzer;
  @override
  @JsonKey(name: 'bewertet_am')
  DateTime get bewertetAm;

  /// Create a copy of Bewertung
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BewertungImplCopyWith<_$BewertungImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BewertungDetail _$BewertungDetailFromJson(Map<String, dynamic> json) {
  return _BewertungDetail.fromJson(json);
}

/// @nodoc
mixin _$BewertungDetail {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'unternehmen_id')
  int get unternehmenId => throw _privateConstructorUsedError;
  @JsonKey(name: 'kriterium_id')
  int get kriteriumId => throw _privateConstructorUsedError;
  double get punkte => throw _privateConstructorUsedError;
  String? get kommentar => throw _privateConstructorUsedError;
  String get benutzer => throw _privateConstructorUsedError;
  @JsonKey(name: 'bewertet_am')
  DateTime get bewertetAm => throw _privateConstructorUsedError;
  @JsonKey(name: 'kriterium_name')
  String get kriteriumName => throw _privateConstructorUsedError;
  @JsonKey(name: 'kriterium_wertigkeit')
  String get kriteriumWertigkeit => throw _privateConstructorUsedError;
  @JsonKey(name: 'kriterium_faktor')
  double get kriteriumFaktor => throw _privateConstructorUsedError;

  /// Serializes this BewertungDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BewertungDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BewertungDetailCopyWith<BewertungDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BewertungDetailCopyWith<$Res> {
  factory $BewertungDetailCopyWith(
    BewertungDetail value,
    $Res Function(BewertungDetail) then,
  ) = _$BewertungDetailCopyWithImpl<$Res, BewertungDetail>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'unternehmen_id') int unternehmenId,
    @JsonKey(name: 'kriterium_id') int kriteriumId,
    double punkte,
    String? kommentar,
    String benutzer,
    @JsonKey(name: 'bewertet_am') DateTime bewertetAm,
    @JsonKey(name: 'kriterium_name') String kriteriumName,
    @JsonKey(name: 'kriterium_wertigkeit') String kriteriumWertigkeit,
    @JsonKey(name: 'kriterium_faktor') double kriteriumFaktor,
  });
}

/// @nodoc
class _$BewertungDetailCopyWithImpl<$Res, $Val extends BewertungDetail>
    implements $BewertungDetailCopyWith<$Res> {
  _$BewertungDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BewertungDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? unternehmenId = null,
    Object? kriteriumId = null,
    Object? punkte = null,
    Object? kommentar = freezed,
    Object? benutzer = null,
    Object? bewertetAm = null,
    Object? kriteriumName = null,
    Object? kriteriumWertigkeit = null,
    Object? kriteriumFaktor = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            unternehmenId: null == unternehmenId
                ? _value.unternehmenId
                : unternehmenId // ignore: cast_nullable_to_non_nullable
                      as int,
            kriteriumId: null == kriteriumId
                ? _value.kriteriumId
                : kriteriumId // ignore: cast_nullable_to_non_nullable
                      as int,
            punkte: null == punkte
                ? _value.punkte
                : punkte // ignore: cast_nullable_to_non_nullable
                      as double,
            kommentar: freezed == kommentar
                ? _value.kommentar
                : kommentar // ignore: cast_nullable_to_non_nullable
                      as String?,
            benutzer: null == benutzer
                ? _value.benutzer
                : benutzer // ignore: cast_nullable_to_non_nullable
                      as String,
            bewertetAm: null == bewertetAm
                ? _value.bewertetAm
                : bewertetAm // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            kriteriumName: null == kriteriumName
                ? _value.kriteriumName
                : kriteriumName // ignore: cast_nullable_to_non_nullable
                      as String,
            kriteriumWertigkeit: null == kriteriumWertigkeit
                ? _value.kriteriumWertigkeit
                : kriteriumWertigkeit // ignore: cast_nullable_to_non_nullable
                      as String,
            kriteriumFaktor: null == kriteriumFaktor
                ? _value.kriteriumFaktor
                : kriteriumFaktor // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BewertungDetailImplCopyWith<$Res>
    implements $BewertungDetailCopyWith<$Res> {
  factory _$$BewertungDetailImplCopyWith(
    _$BewertungDetailImpl value,
    $Res Function(_$BewertungDetailImpl) then,
  ) = __$$BewertungDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'unternehmen_id') int unternehmenId,
    @JsonKey(name: 'kriterium_id') int kriteriumId,
    double punkte,
    String? kommentar,
    String benutzer,
    @JsonKey(name: 'bewertet_am') DateTime bewertetAm,
    @JsonKey(name: 'kriterium_name') String kriteriumName,
    @JsonKey(name: 'kriterium_wertigkeit') String kriteriumWertigkeit,
    @JsonKey(name: 'kriterium_faktor') double kriteriumFaktor,
  });
}

/// @nodoc
class __$$BewertungDetailImplCopyWithImpl<$Res>
    extends _$BewertungDetailCopyWithImpl<$Res, _$BewertungDetailImpl>
    implements _$$BewertungDetailImplCopyWith<$Res> {
  __$$BewertungDetailImplCopyWithImpl(
    _$BewertungDetailImpl _value,
    $Res Function(_$BewertungDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BewertungDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? unternehmenId = null,
    Object? kriteriumId = null,
    Object? punkte = null,
    Object? kommentar = freezed,
    Object? benutzer = null,
    Object? bewertetAm = null,
    Object? kriteriumName = null,
    Object? kriteriumWertigkeit = null,
    Object? kriteriumFaktor = null,
  }) {
    return _then(
      _$BewertungDetailImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        unternehmenId: null == unternehmenId
            ? _value.unternehmenId
            : unternehmenId // ignore: cast_nullable_to_non_nullable
                  as int,
        kriteriumId: null == kriteriumId
            ? _value.kriteriumId
            : kriteriumId // ignore: cast_nullable_to_non_nullable
                  as int,
        punkte: null == punkte
            ? _value.punkte
            : punkte // ignore: cast_nullable_to_non_nullable
                  as double,
        kommentar: freezed == kommentar
            ? _value.kommentar
            : kommentar // ignore: cast_nullable_to_non_nullable
                  as String?,
        benutzer: null == benutzer
            ? _value.benutzer
            : benutzer // ignore: cast_nullable_to_non_nullable
                  as String,
        bewertetAm: null == bewertetAm
            ? _value.bewertetAm
            : bewertetAm // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        kriteriumName: null == kriteriumName
            ? _value.kriteriumName
            : kriteriumName // ignore: cast_nullable_to_non_nullable
                  as String,
        kriteriumWertigkeit: null == kriteriumWertigkeit
            ? _value.kriteriumWertigkeit
            : kriteriumWertigkeit // ignore: cast_nullable_to_non_nullable
                  as String,
        kriteriumFaktor: null == kriteriumFaktor
            ? _value.kriteriumFaktor
            : kriteriumFaktor // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BewertungDetailImpl extends _BewertungDetail {
  const _$BewertungDetailImpl({
    required this.id,
    @JsonKey(name: 'unternehmen_id') required this.unternehmenId,
    @JsonKey(name: 'kriterium_id') required this.kriteriumId,
    required this.punkte,
    this.kommentar,
    this.benutzer = "System",
    @JsonKey(name: 'bewertet_am') required this.bewertetAm,
    @JsonKey(name: 'kriterium_name') required this.kriteriumName,
    @JsonKey(name: 'kriterium_wertigkeit') required this.kriteriumWertigkeit,
    @JsonKey(name: 'kriterium_faktor') required this.kriteriumFaktor,
  }) : super._();

  factory _$BewertungDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$BewertungDetailImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'unternehmen_id')
  final int unternehmenId;
  @override
  @JsonKey(name: 'kriterium_id')
  final int kriteriumId;
  @override
  final double punkte;
  @override
  final String? kommentar;
  @override
  @JsonKey()
  final String benutzer;
  @override
  @JsonKey(name: 'bewertet_am')
  final DateTime bewertetAm;
  @override
  @JsonKey(name: 'kriterium_name')
  final String kriteriumName;
  @override
  @JsonKey(name: 'kriterium_wertigkeit')
  final String kriteriumWertigkeit;
  @override
  @JsonKey(name: 'kriterium_faktor')
  final double kriteriumFaktor;

  @override
  String toString() {
    return 'BewertungDetail(id: $id, unternehmenId: $unternehmenId, kriteriumId: $kriteriumId, punkte: $punkte, kommentar: $kommentar, benutzer: $benutzer, bewertetAm: $bewertetAm, kriteriumName: $kriteriumName, kriteriumWertigkeit: $kriteriumWertigkeit, kriteriumFaktor: $kriteriumFaktor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BewertungDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.unternehmenId, unternehmenId) ||
                other.unternehmenId == unternehmenId) &&
            (identical(other.kriteriumId, kriteriumId) ||
                other.kriteriumId == kriteriumId) &&
            (identical(other.punkte, punkte) || other.punkte == punkte) &&
            (identical(other.kommentar, kommentar) ||
                other.kommentar == kommentar) &&
            (identical(other.benutzer, benutzer) ||
                other.benutzer == benutzer) &&
            (identical(other.bewertetAm, bewertetAm) ||
                other.bewertetAm == bewertetAm) &&
            (identical(other.kriteriumName, kriteriumName) ||
                other.kriteriumName == kriteriumName) &&
            (identical(other.kriteriumWertigkeit, kriteriumWertigkeit) ||
                other.kriteriumWertigkeit == kriteriumWertigkeit) &&
            (identical(other.kriteriumFaktor, kriteriumFaktor) ||
                other.kriteriumFaktor == kriteriumFaktor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    unternehmenId,
    kriteriumId,
    punkte,
    kommentar,
    benutzer,
    bewertetAm,
    kriteriumName,
    kriteriumWertigkeit,
    kriteriumFaktor,
  );

  /// Create a copy of BewertungDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BewertungDetailImplCopyWith<_$BewertungDetailImpl> get copyWith =>
      __$$BewertungDetailImplCopyWithImpl<_$BewertungDetailImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BewertungDetailImplToJson(this);
  }
}

abstract class _BewertungDetail extends BewertungDetail {
  const factory _BewertungDetail({
    required final int id,
    @JsonKey(name: 'unternehmen_id') required final int unternehmenId,
    @JsonKey(name: 'kriterium_id') required final int kriteriumId,
    required final double punkte,
    final String? kommentar,
    final String benutzer,
    @JsonKey(name: 'bewertet_am') required final DateTime bewertetAm,
    @JsonKey(name: 'kriterium_name') required final String kriteriumName,
    @JsonKey(name: 'kriterium_wertigkeit')
    required final String kriteriumWertigkeit,
    @JsonKey(name: 'kriterium_faktor') required final double kriteriumFaktor,
  }) = _$BewertungDetailImpl;
  const _BewertungDetail._() : super._();

  factory _BewertungDetail.fromJson(Map<String, dynamic> json) =
      _$BewertungDetailImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'unternehmen_id')
  int get unternehmenId;
  @override
  @JsonKey(name: 'kriterium_id')
  int get kriteriumId;
  @override
  double get punkte;
  @override
  String? get kommentar;
  @override
  String get benutzer;
  @override
  @JsonKey(name: 'bewertet_am')
  DateTime get bewertetAm;
  @override
  @JsonKey(name: 'kriterium_name')
  String get kriteriumName;
  @override
  @JsonKey(name: 'kriterium_wertigkeit')
  String get kriteriumWertigkeit;
  @override
  @JsonKey(name: 'kriterium_faktor')
  double get kriteriumFaktor;

  /// Create a copy of BewertungDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BewertungDetailImplCopyWith<_$BewertungDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
