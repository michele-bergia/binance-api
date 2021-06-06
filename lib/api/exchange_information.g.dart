// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExchangeInformation _$ExchangeInformationFromJson(Map<String, dynamic> json) {
  return ExchangeInformation(
    json['timezone'] as String,
    json['serverTime'] as int,
    (json['rateLimits'] as List<dynamic>)
        .map((e) => RateLimit.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['exchangeFilters'] as List<dynamic>)
        .map((e) => Filter.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['symbols'] as List<dynamic>)
        .map((e) => Symbol.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ExchangeInformationToJson(
        ExchangeInformation instance) =>
    <String, dynamic>{
      'timezone': instance.timezone,
      'serverTime': instance.serverTime,
      'rateLimits': instance.rateLimits.map((e) => e.toJson()).toList(),
      'exchangeFilters':
          instance.exchangeFilters.map((e) => e.toJson()).toList(),
      'symbols': instance.symbols.map((e) => e.toJson()).toList(),
    };
