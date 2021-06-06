// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_book_ticker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderBookTicker _$OrderBookTickerFromJson(Map<String, dynamic> json) {
  return OrderBookTicker(
    json['symbol'] as String,
    json['bidPrice'] as String,
    json['bidQty'] as String,
    json['askPrice'] as String,
    json['askQty'] as String,
  );
}

Map<String, dynamic> _$OrderBookTickerToJson(OrderBookTicker instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'bidPrice': instance.bidPrice,
      'bidQty': instance.bidQty,
      'askPrice': instance.askPrice,
      'askQty': instance.askQty,
    };
