// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticker_price_statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TickerPriceStatistics _$TickerPriceStatisticsFromJson(
    Map<String, dynamic> json) {
  return TickerPriceStatistics(
    json['symbol'] as String,
    json['priceChange'] as String,
    json['priceChangePercent'] as String,
    json['weightedAvgPrice'] as String,
    json['prevClosePrice'] as String,
    json['lastPrice'] as String,
    json['lastQty'] as String,
    json['bidPrice'] as String,
    json['askPrice'] as String,
    json['openPrice'] as String,
    json['highPrice'] as String,
    json['lowPrice'] as String,
    json['volume'] as String,
    json['quoteVolume'] as String,
    json['openTime'] as int,
    json['closeTime'] as int,
    json['firstId'] as int,
    json['lastId'] as int,
    json['count'] as int,
  );
}

Map<String, dynamic> _$TickerPriceStatisticsToJson(
        TickerPriceStatistics instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'priceChange': instance.priceChange,
      'priceChangePercent': instance.priceChangePercent,
      'weightedAvgPrice': instance.weightedAvgPrice,
      'prevClosePrice': instance.prevClosePrice,
      'lastPrice': instance.lastPrice,
      'lastQty': instance.lastQty,
      'bidPrice': instance.bidPrice,
      'askPrice': instance.askPrice,
      'openPrice': instance.openPrice,
      'highPrice': instance.highPrice,
      'lowPrice': instance.lowPrice,
      'volume': instance.volume,
      'quoteVolume': instance.quoteVolume,
      'openTime': instance.openTime,
      'closeTime': instance.closeTime,
      'firstId': instance.firstId,
      'lastId': instance.lastId,
      'count': instance.count,
    };
