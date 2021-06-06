// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate_limit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RateLimit _$RateLimitFromJson(Map<String, dynamic> json) {
  return RateLimit(
    _$enumDecode(_$RateLimitTypeEnumMap, json['rateLimitType']),
    _$enumDecode(_$RateLimitIntervalEnumMap, json['interval']),
    json['intervalNum'] as int,
    json['limit'] as int,
  );
}

Map<String, dynamic> _$RateLimitToJson(RateLimit instance) => <String, dynamic>{
      'rateLimitType': _$RateLimitTypeEnumMap[instance.rateLimitType],
      'interval': _$RateLimitIntervalEnumMap[instance.interval],
      'intervalNum': instance.intervalNum,
      'limit': instance.limit,
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

const _$RateLimitTypeEnumMap = {
  RateLimitType.RAW_REQUEST: 'RAW_REQUEST',
  RateLimitType.REQUEST_WEIGHT: 'REQUEST_WEIGHT',
  RateLimitType.ORDERS: 'ORDERS',
};

const _$RateLimitIntervalEnumMap = {
  RateLimitInterval.SECOND: 'SECOND',
  RateLimitInterval.MINUTE: 'MINUTE',
  RateLimitInterval.DAY: 'DAY',
};
