// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agg_trade.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AggTrade _$AggTradeFromJson(Map<String, dynamic> json) {
  return AggTrade(
    json['a'] as int,
    json['p'] as String,
    json['q'] as String,
    json['f'] as int,
    json['l'] as int,
    json['T'] as int,
    json['m'] as bool,
    json['M'] as bool,
  );
}

Map<String, dynamic> _$AggTradeToJson(AggTrade instance) => <String, dynamic>{
      'a': instance.a,
      'p': instance.p,
      'q': instance.q,
      'f': instance.f,
      'l': instance.l,
      'T': instance.T,
      'm': instance.m,
      'M': instance.M,
    };
