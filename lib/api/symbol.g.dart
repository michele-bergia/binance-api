// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symbol.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Symbol _$SymbolFromJson(Map<String, dynamic> json) {
  return Symbol(
    json['symbol'] as String,
    json['status'] as String,
    json['baseAsset'] as String,
    json['baseAssetPrecision'] as int,
    json['quoteAsset'] as String,
    json['quotePrecision'] as int,
    json['quoteAssetPrecision'] as int,
    (json['orderTypes'] as List<dynamic>)
        .map((e) => _$enumDecode(_$OrderTypeEnumMap, e))
        .toList(),
    json['icebergAllowed'] as bool,
    json['ocoAllowed'] as bool,
    json['isSpotTradingAllowed'] as bool,
    json['isMarginTradingAllowed'] as bool,
    (json['filters'] as List<dynamic>)
        .map((e) => Filter.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['permissions'] as List<dynamic>)
        .map((e) => _$enumDecode(_$PermissionEnumMap, e))
        .toList(),
  );
}

Map<String, dynamic> _$SymbolToJson(Symbol instance) => <String, dynamic>{
      'symbol': instance.symbol,
      'status': instance.status,
      'baseAsset': instance.baseAsset,
      'baseAssetPrecision': instance.baseAssetPrecision,
      'quoteAsset': instance.quoteAsset,
      'quotePrecision': instance.quotePrecision,
      'quoteAssetPrecision': instance.quoteAssetPrecision,
      'orderTypes':
          instance.orderTypes.map((e) => _$OrderTypeEnumMap[e]).toList(),
      'icebergAllowed': instance.icebergAllowed,
      'ocoAllowed': instance.ocoAllowed,
      'isSpotTradingAllowed': instance.isSpotTradingAllowed,
      'isMarginTradingAllowed': instance.isMarginTradingAllowed,
      'filters': instance.filters.map((e) => e.toJson()).toList(),
      'permissions':
          instance.permissions.map((e) => _$PermissionEnumMap[e]).toList(),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$OrderTypeEnumMap = {
  OrderType.LIMIT: 'LIMIT',
  OrderType.LIMIT_MAKER: 'LIMIT_MAKER',
  OrderType.MARKET: 'MARKET',
  OrderType.STOP_LOSS: 'STOP_LOSS',
  OrderType.STOP_LOSS_LIMIT: 'STOP_LOSS_LIMIT',
  OrderType.TAKE_PROFIT: 'TAKE_PROFIT',
  OrderType.TAKE_PROFIT_LIMIT: 'TAKE_PROFIT_LIMIT',
};

const _$PermissionEnumMap = {
  Permission.SPOT: 'SPOT',
  Permission.MARGIN: 'MARGIN',
  Permission.LEVERAGED: 'LEVERAGED',
};
