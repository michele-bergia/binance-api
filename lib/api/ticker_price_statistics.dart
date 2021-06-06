import 'package:json_annotation/json_annotation.dart';

part 'ticker_price_statistics.g.dart';

@JsonSerializable()
class TickerPriceStatistics {
  final String symbol;
  final String priceChange;
  final String priceChangePercent;
  final String weightedAvgPrice;
  final String prevClosePrice;
  final String lastPrice;
  final String lastQty;
  final String bidPrice;
  final String askPrice;
  final String openPrice;
  final String highPrice;
  final String lowPrice;
  final String volume;
  final String quoteVolume;
  final int openTime;
  final int closeTime;
  final int firstId; // First tradeId
  final int lastId; // Last tradeId
  final int count; // Trade count

  TickerPriceStatistics(
      this.symbol,
      this.priceChange,
      this.priceChangePercent,
      this.weightedAvgPrice,
      this.prevClosePrice,
      this.lastPrice,
      this.lastQty,
      this.bidPrice,
      this.askPrice,
      this.openPrice,
      this.highPrice,
      this.lowPrice,
      this.volume,
      this.quoteVolume,
      this.openTime,
      this.closeTime,
      this.firstId,
      this.lastId,
      this.count);

  factory TickerPriceStatistics.fromJson(Map<String, dynamic> json) =>
      _$TickerPriceStatisticsFromJson(json);

  Map<String, dynamic> toJson() => _$TickerPriceStatisticsToJson(this);
}
