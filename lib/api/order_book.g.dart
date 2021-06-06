// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderBook _$OrderBookFromJson(Map<String, dynamic> json) {
  return OrderBook(
    json['lastUpdateId'] as int,
    (json['bids'] as List<dynamic>)
        .map((e) => (e as List<dynamic>).map((e) => e as String).toList())
        .toList(),
    (json['asks'] as List<dynamic>)
        .map((e) => (e as List<dynamic>).map((e) => e as String).toList())
        .toList(),
  );
}

Map<String, dynamic> _$OrderBookToJson(OrderBook instance) => <String, dynamic>{
      'lastUpdateId': instance.lastUpdateId,
      'bids': instance.bids,
      'asks': instance.asks,
    };
