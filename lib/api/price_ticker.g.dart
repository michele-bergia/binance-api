// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_ticker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceTicker _$PriceTickerFromJson(Map<String, dynamic> json) {
  return PriceTicker(
    json['symbol'] as String,
    json['price'] as String,
  );
}

Map<String, dynamic> _$PriceTickerToJson(PriceTicker instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'price': instance.price,
    };
