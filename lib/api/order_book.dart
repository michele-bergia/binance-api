import 'package:json_annotation/json_annotation.dart';

part 'order_book.g.dart';

@JsonSerializable()
class OrderBook {
  final int lastUpdateId;
  final List<List<String>> bids;
  final List<List<String>> asks;

  OrderBook(this.lastUpdateId, this.bids, this.asks);

  factory OrderBook.fromJson(Map<String, dynamic> json) =>
      _$OrderBookFromJson(json);

  Map<String, dynamic> toJson() => _$OrderBookToJson(this);
}
