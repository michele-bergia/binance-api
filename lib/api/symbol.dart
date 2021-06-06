import 'package:binance_api/api/filter.dart';
import 'package:binance_api/enum/order_type.dart';
import 'package:binance_api/enum/permission.dart';
import 'package:json_annotation/json_annotation.dart';

part 'symbol.g.dart';

@JsonSerializable(explicitToJson: true)
class Symbol {
  final String symbol;
  final String status;
  final String baseAsset;
  final int baseAssetPrecision;
  final String quoteAsset;
  final int quotePrecision;
  final int quoteAssetPrecision;
  final List<OrderType> orderTypes;
  final bool icebergAllowed;
  final bool ocoAllowed;
  final bool isSpotTradingAllowed;
  final bool isMarginTradingAllowed;
  final List<Filter> filters;
  final List<Permission> permissions;

  Symbol(
      this.symbol,
      this.status,
      this.baseAsset,
      this.baseAssetPrecision,
      this.quoteAsset,
      this.quotePrecision,
      this.quoteAssetPrecision,
      this.orderTypes,
      this.icebergAllowed,
      this.ocoAllowed,
      this.isSpotTradingAllowed,
      this.isMarginTradingAllowed,
      this.filters,
      this.permissions);

  factory Symbol.fromJson(Map<String, dynamic> json) => _$SymbolFromJson(json);

  Map<String, dynamic> toJson() => _$SymbolToJson(this);
}
