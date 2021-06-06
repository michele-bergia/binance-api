// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceFilter _$PriceFilterFromJson(Map<String, dynamic> json) {
  return PriceFilter(
    json['minPrice'] as String,
    json['maxPrice'] as String,
    json['tickSize'] as String,
  );
}

Map<String, dynamic> _$PriceFilterToJson(PriceFilter instance) =>
    <String, dynamic>{
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'tickSize': instance.tickSize,
    };

PercentPrice _$PercentPriceFromJson(Map<String, dynamic> json) {
  return PercentPrice(
    json['multiplierUp'] as String,
    json['multiplierDown'] as String,
    json['avgPriceMins'] as int,
  );
}

Map<String, dynamic> _$PercentPriceToJson(PercentPrice instance) =>
    <String, dynamic>{
      'multiplierUp': instance.multiplierUp,
      'multiplierDown': instance.multiplierDown,
      'avgPriceMins': instance.avgPriceMins,
    };

LotSize _$LotSizeFromJson(Map<String, dynamic> json) {
  return LotSize(
    json['minQty'] as String,
    json['maxQty'] as String,
    json['stepSize'] as String,
  );
}

Map<String, dynamic> _$LotSizeToJson(LotSize instance) => <String, dynamic>{
      'minQty': instance.minQty,
      'maxQty': instance.maxQty,
      'stepSize': instance.stepSize,
    };

MinNotional _$MinNotionalFromJson(Map<String, dynamic> json) {
  return MinNotional(
    json['minNotional'] as String,
    json['applyToMarket'] as bool,
    json['avgPriceMins'] as int,
  );
}

Map<String, dynamic> _$MinNotionalToJson(MinNotional instance) =>
    <String, dynamic>{
      'minNotional': instance.minNotional,
      'applyToMarket': instance.applyToMarket,
      'avgPriceMins': instance.avgPriceMins,
    };

IcebergParts _$IcebergPartsFromJson(Map<String, dynamic> json) {
  return IcebergParts(
    json['limit'] as int,
  );
}

Map<String, dynamic> _$IcebergPartsToJson(IcebergParts instance) =>
    <String, dynamic>{
      'limit': instance.limit,
    };

MarketLotSize _$MarketLotSizeFromJson(Map<String, dynamic> json) {
  return MarketLotSize(
    json['minQty'] as String,
    json['maxQty'] as String,
    json['stepSize'] as String,
  );
}

Map<String, dynamic> _$MarketLotSizeToJson(MarketLotSize instance) =>
    <String, dynamic>{
      'minQty': instance.minQty,
      'maxQty': instance.maxQty,
      'stepSize': instance.stepSize,
    };

MaxNumOrders _$MaxNumOrdersFromJson(Map<String, dynamic> json) {
  return MaxNumOrders(
    json['maxNumOrders'] as int,
  );
}

Map<String, dynamic> _$MaxNumOrdersToJson(MaxNumOrders instance) =>
    <String, dynamic>{
      'maxNumOrders': instance.maxNumOrders,
    };

MaxNumAlgoOrders _$MaxNumAlgoOrdersFromJson(Map<String, dynamic> json) {
  return MaxNumAlgoOrders(
    json['maxNumAlgoOrders'] as int,
  );
}

Map<String, dynamic> _$MaxNumAlgoOrdersToJson(MaxNumAlgoOrders instance) =>
    <String, dynamic>{
      'maxNumAlgoOrders': instance.maxNumAlgoOrders,
    };

MaxNumIcebergOrders _$MaxNumIcebergOrdersFromJson(Map<String, dynamic> json) {
  return MaxNumIcebergOrders(
    json['maxNumIcebergOrders'] as int,
  );
}

Map<String, dynamic> _$MaxNumIcebergOrdersToJson(
        MaxNumIcebergOrders instance) =>
    <String, dynamic>{
      'maxNumIcebergOrders': instance.maxNumIcebergOrders,
    };

MaxPosition _$MaxPositionFromJson(Map<String, dynamic> json) {
  return MaxPosition(
    json['maxPosition'] as String,
  );
}

Map<String, dynamic> _$MaxPositionToJson(MaxPosition instance) =>
    <String, dynamic>{
      'maxPosition': instance.maxPosition,
    };

ExchangeMaxNumOrders _$ExchangeMaxNumOrdersFromJson(Map<String, dynamic> json) {
  return ExchangeMaxNumOrders(
    json['maxNumOrders'] as int,
  );
}

Map<String, dynamic> _$ExchangeMaxNumOrdersToJson(
        ExchangeMaxNumOrders instance) =>
    <String, dynamic>{
      'maxNumOrders': instance.maxNumOrders,
    };

ExchangeMaxAlgoOrders _$ExchangeMaxAlgoOrdersFromJson(
    Map<String, dynamic> json) {
  return ExchangeMaxAlgoOrders(
    json['maxNumAlgoOrders'] as int,
  );
}

Map<String, dynamic> _$ExchangeMaxAlgoOrdersToJson(
        ExchangeMaxAlgoOrders instance) =>
    <String, dynamic>{
      'maxNumAlgoOrders': instance.maxNumAlgoOrders,
    };
