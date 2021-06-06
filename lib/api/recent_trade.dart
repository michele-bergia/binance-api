import 'package:json_annotation/json_annotation.dart';

part 'recent_trade.g.dart';

@JsonSerializable()
class RecentTrade {
  final int id;
  final String price;
  final String qty;
  final String quoteQty;
  final int time;
  final bool isBuyerMaker;
  final bool isBestMatch;

  RecentTrade(this.id, this.price, this.qty, this.quoteQty, this.time,
      this.isBuyerMaker, this.isBestMatch);

  factory RecentTrade.fromJson(Map<String, dynamic> json) =>
      _$RecentTradeFromJson(json);

  Map<String, dynamic> toJson() => _$RecentTradeToJson(this);
}
