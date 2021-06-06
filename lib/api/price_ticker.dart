import 'package:json_annotation/json_annotation.dart';

part 'price_ticker.g.dart';

@JsonSerializable()
class PriceTicker {
  final String symbol;
  final String price;

  factory PriceTicker.fromJson(Map<String, dynamic> json) =>
      _$PriceTickerFromJson(json);

  PriceTicker(this.symbol, this.price);

  Map<String, dynamic> toJson() => _$PriceTickerToJson(this);
}
