import 'package:json_annotation/json_annotation.dart';

part 'order_book_ticker.g.dart';

@JsonSerializable()
class OrderBookTicker {
  final String symbol;
  final String bidPrice;
  final String bidQty;
  final String askPrice;
  final String askQty;

  OrderBookTicker(
      this.symbol, this.bidPrice, this.bidQty, this.askPrice, this.askQty);

  factory OrderBookTicker.fromJson(Map<String, dynamic> json) =>
      _$OrderBookTickerFromJson(json);

  Map<String, dynamic> toJson() => _$OrderBookTickerToJson(this);
}
