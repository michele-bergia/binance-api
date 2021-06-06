import 'package:binance_api/enum/rate_limit_interval.dart';
import 'package:binance_api/enum/rate_limit_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rate_limit.g.dart';

@JsonSerializable()
class RateLimit {
  final RateLimitType rateLimitType;
  final RateLimitInterval interval;
  final int intervalNum;
  final int limit;

  RateLimit(this.rateLimitType, this.interval, this.intervalNum, this.limit);

  factory RateLimit.fromJson(Map<String, dynamic> json) =>
      _$RateLimitFromJson(json);

  Map<String, dynamic> toJson() => _$RateLimitToJson(this);
}
