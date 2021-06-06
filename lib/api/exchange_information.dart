import 'package:binance_api/api/filter.dart';
import 'package:binance_api/api/rate_limit.dart';
import 'package:binance_api/api/symbol.dart';
import 'package:json_annotation/json_annotation.dart';

part 'exchange_information.g.dart';

@JsonSerializable(explicitToJson: true)
class ExchangeInformation {
  final String timezone;
  final int serverTime;
  final List<RateLimit> rateLimits;
  final List<Filter> exchangeFilters;
  final List<Symbol> symbols;

  ExchangeInformation(this.timezone, this.serverTime, this.rateLimits,
      this.exchangeFilters, this.symbols);

  factory ExchangeInformation.fromJson(Map<String, dynamic> json) =>
      _$ExchangeInformationFromJson(json);

  Map<String, dynamic> toJson() => _$ExchangeInformationToJson(this);
}
