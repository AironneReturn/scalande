// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'env_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EnvTypeTearOff {
  const _$EnvTypeTearOff();

  Dev dev() {
    return const Dev();
  }

  Rc rc() {
    return const Rc();
  }

  Rd rd() {
    return const Rd();
  }

  Prod prod() {
    return const Prod();
  }
}

/// @nodoc
const $EnvType = _$EnvTypeTearOff();

/// @nodoc
mixin _$EnvType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dev,
    required TResult Function() rc,
    required TResult Function() rd,
    required TResult Function() prod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? dev,
    TResult Function()? rc,
    TResult Function()? rd,
    TResult Function()? prod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dev,
    TResult Function()? rc,
    TResult Function()? rd,
    TResult Function()? prod,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Dev value) dev,
    required TResult Function(Rc value) rc,
    required TResult Function(Rd value) rd,
    required TResult Function(Prod value) prod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Dev value)? dev,
    TResult Function(Rc value)? rc,
    TResult Function(Rd value)? rd,
    TResult Function(Prod value)? prod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Dev value)? dev,
    TResult Function(Rc value)? rc,
    TResult Function(Rd value)? rd,
    TResult Function(Prod value)? prod,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnvTypeCopyWith<$Res> {
  factory $EnvTypeCopyWith(EnvType value, $Res Function(EnvType) then) =
      _$EnvTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$EnvTypeCopyWithImpl<$Res> implements $EnvTypeCopyWith<$Res> {
  _$EnvTypeCopyWithImpl(this._value, this._then);

  final EnvType _value;
  // ignore: unused_field
  final $Res Function(EnvType) _then;
}

/// @nodoc
abstract class $DevCopyWith<$Res> {
  factory $DevCopyWith(Dev value, $Res Function(Dev) then) =
      _$DevCopyWithImpl<$Res>;
}

/// @nodoc
class _$DevCopyWithImpl<$Res> extends _$EnvTypeCopyWithImpl<$Res>
    implements $DevCopyWith<$Res> {
  _$DevCopyWithImpl(Dev _value, $Res Function(Dev) _then)
      : super(_value, (v) => _then(v as Dev));

  @override
  Dev get _value => super._value as Dev;
}

/// @nodoc

class _$Dev implements Dev {
  const _$Dev();

  @override
  String toString() {
    return 'EnvType.dev()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Dev);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dev,
    required TResult Function() rc,
    required TResult Function() rd,
    required TResult Function() prod,
  }) {
    return dev();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? dev,
    TResult Function()? rc,
    TResult Function()? rd,
    TResult Function()? prod,
  }) {
    return dev?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dev,
    TResult Function()? rc,
    TResult Function()? rd,
    TResult Function()? prod,
    required TResult orElse(),
  }) {
    if (dev != null) {
      return dev();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Dev value) dev,
    required TResult Function(Rc value) rc,
    required TResult Function(Rd value) rd,
    required TResult Function(Prod value) prod,
  }) {
    return dev(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Dev value)? dev,
    TResult Function(Rc value)? rc,
    TResult Function(Rd value)? rd,
    TResult Function(Prod value)? prod,
  }) {
    return dev?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Dev value)? dev,
    TResult Function(Rc value)? rc,
    TResult Function(Rd value)? rd,
    TResult Function(Prod value)? prod,
    required TResult orElse(),
  }) {
    if (dev != null) {
      return dev(this);
    }
    return orElse();
  }
}

abstract class Dev implements EnvType {
  const factory Dev() = _$Dev;
}

/// @nodoc
abstract class $RcCopyWith<$Res> {
  factory $RcCopyWith(Rc value, $Res Function(Rc) then) =
      _$RcCopyWithImpl<$Res>;
}

/// @nodoc
class _$RcCopyWithImpl<$Res> extends _$EnvTypeCopyWithImpl<$Res>
    implements $RcCopyWith<$Res> {
  _$RcCopyWithImpl(Rc _value, $Res Function(Rc) _then)
      : super(_value, (v) => _then(v as Rc));

  @override
  Rc get _value => super._value as Rc;
}

/// @nodoc

class _$Rc implements Rc {
  const _$Rc();

  @override
  String toString() {
    return 'EnvType.rc()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Rc);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dev,
    required TResult Function() rc,
    required TResult Function() rd,
    required TResult Function() prod,
  }) {
    return rc();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? dev,
    TResult Function()? rc,
    TResult Function()? rd,
    TResult Function()? prod,
  }) {
    return rc?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dev,
    TResult Function()? rc,
    TResult Function()? rd,
    TResult Function()? prod,
    required TResult orElse(),
  }) {
    if (rc != null) {
      return rc();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Dev value) dev,
    required TResult Function(Rc value) rc,
    required TResult Function(Rd value) rd,
    required TResult Function(Prod value) prod,
  }) {
    return rc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Dev value)? dev,
    TResult Function(Rc value)? rc,
    TResult Function(Rd value)? rd,
    TResult Function(Prod value)? prod,
  }) {
    return rc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Dev value)? dev,
    TResult Function(Rc value)? rc,
    TResult Function(Rd value)? rd,
    TResult Function(Prod value)? prod,
    required TResult orElse(),
  }) {
    if (rc != null) {
      return rc(this);
    }
    return orElse();
  }
}

abstract class Rc implements EnvType {
  const factory Rc() = _$Rc;
}

/// @nodoc
abstract class $RdCopyWith<$Res> {
  factory $RdCopyWith(Rd value, $Res Function(Rd) then) =
      _$RdCopyWithImpl<$Res>;
}

/// @nodoc
class _$RdCopyWithImpl<$Res> extends _$EnvTypeCopyWithImpl<$Res>
    implements $RdCopyWith<$Res> {
  _$RdCopyWithImpl(Rd _value, $Res Function(Rd) _then)
      : super(_value, (v) => _then(v as Rd));

  @override
  Rd get _value => super._value as Rd;
}

/// @nodoc

class _$Rd implements Rd {
  const _$Rd();

  @override
  String toString() {
    return 'EnvType.rd()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Rd);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dev,
    required TResult Function() rc,
    required TResult Function() rd,
    required TResult Function() prod,
  }) {
    return rd();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? dev,
    TResult Function()? rc,
    TResult Function()? rd,
    TResult Function()? prod,
  }) {
    return rd?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dev,
    TResult Function()? rc,
    TResult Function()? rd,
    TResult Function()? prod,
    required TResult orElse(),
  }) {
    if (rd != null) {
      return rd();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Dev value) dev,
    required TResult Function(Rc value) rc,
    required TResult Function(Rd value) rd,
    required TResult Function(Prod value) prod,
  }) {
    return rd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Dev value)? dev,
    TResult Function(Rc value)? rc,
    TResult Function(Rd value)? rd,
    TResult Function(Prod value)? prod,
  }) {
    return rd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Dev value)? dev,
    TResult Function(Rc value)? rc,
    TResult Function(Rd value)? rd,
    TResult Function(Prod value)? prod,
    required TResult orElse(),
  }) {
    if (rd != null) {
      return rd(this);
    }
    return orElse();
  }
}

abstract class Rd implements EnvType {
  const factory Rd() = _$Rd;
}

/// @nodoc
abstract class $ProdCopyWith<$Res> {
  factory $ProdCopyWith(Prod value, $Res Function(Prod) then) =
      _$ProdCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProdCopyWithImpl<$Res> extends _$EnvTypeCopyWithImpl<$Res>
    implements $ProdCopyWith<$Res> {
  _$ProdCopyWithImpl(Prod _value, $Res Function(Prod) _then)
      : super(_value, (v) => _then(v as Prod));

  @override
  Prod get _value => super._value as Prod;
}

/// @nodoc

class _$Prod implements Prod {
  const _$Prod();

  @override
  String toString() {
    return 'EnvType.prod()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Prod);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dev,
    required TResult Function() rc,
    required TResult Function() rd,
    required TResult Function() prod,
  }) {
    return prod();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? dev,
    TResult Function()? rc,
    TResult Function()? rd,
    TResult Function()? prod,
  }) {
    return prod?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dev,
    TResult Function()? rc,
    TResult Function()? rd,
    TResult Function()? prod,
    required TResult orElse(),
  }) {
    if (prod != null) {
      return prod();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Dev value) dev,
    required TResult Function(Rc value) rc,
    required TResult Function(Rd value) rd,
    required TResult Function(Prod value) prod,
  }) {
    return prod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Dev value)? dev,
    TResult Function(Rc value)? rc,
    TResult Function(Rd value)? rd,
    TResult Function(Prod value)? prod,
  }) {
    return prod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Dev value)? dev,
    TResult Function(Rc value)? rc,
    TResult Function(Rd value)? rd,
    TResult Function(Prod value)? prod,
    required TResult orElse(),
  }) {
    if (prod != null) {
      return prod(this);
    }
    return orElse();
  }
}

abstract class Prod implements EnvType {
  const factory Prod() = _$Prod;
}
