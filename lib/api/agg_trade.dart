import 'package:json_annotation/json_annotation.dart';

part 'agg_trade.g.dart';

@JsonSerializable()
class AggTrade {
  final int a; // Aggregate tradeId
  final String p; // Price
  final String q; // Quantity
  final int f; // First tradeId
  final int l; // Last tradeId
  final int T; // Timestamp
  final bool m; // Was the buyer the maker?
  final bool M; // Was the trade the best price match?

  AggTrade(this.a, this.p, this.q, this.f, this.l, this.T, this.m, this.M);

  factory AggTrade.fromJson(Map<String, dynamic> json) =>
      _$AggTradeFromJson(json);

  Map<String, dynamic> toJson() => _$AggTradeToJson(this);
}
