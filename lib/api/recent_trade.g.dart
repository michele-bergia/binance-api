// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_trade.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecentTrade _$RecentTradeFromJson(Map<String, dynamic> json) {
  return RecentTrade(
    json['id'] as int,
    json['price'] as String,
    json['qty'] as String,
    json['quoteQty'] as String,
    json['time'] as int,
    json['isBuyerMaker'] as bool,
    json['isBestMatch'] as bool,
  );
}

Map<String, dynamic> _$RecentTradeToJson(RecentTrade instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'qty': instance.qty,
      'quoteQty': instance.quoteQty,
      'time': instance.time,
      'isBuyerMaker': instance.isBuyerMaker,
      'isBestMatch': instance.isBestMatch,
    };
