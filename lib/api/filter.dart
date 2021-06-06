import 'package:binance_api/enum/filter_type.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:json_annotation/json_annotation.dart';

part 'filter.g.dart';

abstract class Filter {
  final FilterType filterType;

  Filter(this.filterType);

  factory Filter.fromJson(Map<String, dynamic> json) {
    final FilterType? filterType =
        EnumToString.fromString(FilterType.values, json['filterType']);

    switch (filterType) {
      case FilterType.PRICE_FILTER:
        return _$PriceFilterFromJson(json);
      case FilterType.PERCENT_PRICE:
        return _$PercentPriceFromJson(json);
      case FilterType.LOT_SIZE:
        return _$LotSizeFromJson(json);
      case FilterType.MIN_NOTIONAL:
        return _$MinNotionalFromJson(json);
      case FilterType.ICEBERG_PARTS:
        return _$IcebergPartsFromJson(json);
      case FilterType.MARKET_LOT_SIZE:
        return _$MarketLotSizeFromJson(json);
      case FilterType.MAX_NUM_ORDERS:
        return _$MaxNumOrdersFromJson(json);
      case FilterType.MAX_NUM_ALGO_ORDERS:
        return _$MaxNumAlgoOrdersFromJson(json);
      case FilterType.MAX_NUM_ICEBERG_ORDERS:
        return _$MaxNumIcebergOrdersFromJson(json);
      case FilterType.MAX_POSITION:
        return _$MaxPositionFromJson(json);
      case FilterType.EXCHANGE_MAX_NUM_ORDERS:
        return _$ExchangeMaxNumOrdersFromJson(json);
      case FilterType.EXCHANGE_MAX_ALGO_ORDERS:
        return _$ExchangeMaxAlgoOrdersFromJson(json);
      default:
        throw Exception();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> mapper = {
      'filterType': EnumToString.convertToString(filterType),
    };

    switch (filterType) {
      case FilterType.PRICE_FILTER:
        mapper.addAll(_$PriceFilterToJson(this as PriceFilter));
        break;
      case FilterType.PERCENT_PRICE:
        mapper.addAll(_$PercentPriceToJson(this as PercentPrice));
        break;
      case FilterType.LOT_SIZE:
        mapper.addAll(_$LotSizeToJson(this as LotSize));
        break;
      case FilterType.MIN_NOTIONAL:
        mapper.addAll(_$MinNotionalToJson(this as MinNotional));
        break;
      case FilterType.ICEBERG_PARTS:
        mapper.addAll(_$IcebergPartsToJson(this as IcebergParts));
        break;
      case FilterType.MARKET_LOT_SIZE:
        mapper.addAll(_$MarketLotSizeToJson(this as MarketLotSize));
        break;
      case FilterType.MAX_NUM_ORDERS:
        mapper.addAll(_$MaxNumOrdersToJson(this as MaxNumOrders));
        break;
      case FilterType.MAX_NUM_ALGO_ORDERS:
        mapper.addAll(_$MaxNumAlgoOrdersToJson(this as MaxNumAlgoOrders));
        break;
      case FilterType.MAX_NUM_ICEBERG_ORDERS:
        mapper.addAll(_$MaxNumIcebergOrdersToJson(this as MaxNumIcebergOrders));
        break;
      case FilterType.MAX_POSITION:
        mapper.addAll(_$MaxPositionToJson(this as MaxPosition));
        break;
      case FilterType.EXCHANGE_MAX_NUM_ORDERS:
        mapper
            .addAll(_$ExchangeMaxNumOrdersToJson(this as ExchangeMaxNumOrders));
        break;
      case FilterType.EXCHANGE_MAX_ALGO_ORDERS:
        mapper.addAll(
            _$ExchangeMaxAlgoOrdersToJson(this as ExchangeMaxAlgoOrders));
        break;
      default:
        throw Exception();
    }
    return mapper;
  }
}

@JsonSerializable()
class PriceFilter extends Filter {
  final String minPrice;
  final String maxPrice;
  final String tickSize;

  PriceFilter(this.minPrice, this.maxPrice, this.tickSize)
      : super(FilterType.PRICE_FILTER);
}

@JsonSerializable()
class PercentPrice extends Filter {
  final String multiplierUp;
  final String multiplierDown;
  final int avgPriceMins;

  PercentPrice(this.multiplierUp, this.multiplierDown, this.avgPriceMins)
      : super(FilterType.PERCENT_PRICE);
}

@JsonSerializable()
class LotSize extends Filter {
  final String minQty;
  final String maxQty;
  final String stepSize;

  LotSize(this.minQty, this.maxQty, this.stepSize) : super(FilterType.LOT_SIZE);
}

@JsonSerializable()
class MinNotional extends Filter {
  final String minNotional;
  final bool applyToMarket;
  final int avgPriceMins;

  MinNotional(this.minNotional, this.applyToMarket, this.avgPriceMins)
      : super(FilterType.MIN_NOTIONAL);
}

@JsonSerializable()
class IcebergParts extends Filter {
  final int limit;

  IcebergParts(this.limit) : super(FilterType.ICEBERG_PARTS);
}

@JsonSerializable()
class MarketLotSize extends Filter {
  final String minQty;
  final String maxQty;
  final String stepSize;

  MarketLotSize(this.minQty, this.maxQty, this.stepSize)
      : super(FilterType.MARKET_LOT_SIZE);
}

@JsonSerializable()
class MaxNumOrders extends Filter {
  final int maxNumOrders;

  MaxNumOrders(this.maxNumOrders) : super(FilterType.MAX_NUM_ORDERS);
}

@JsonSerializable()
class MaxNumAlgoOrders extends Filter {
  final int maxNumAlgoOrders;

  MaxNumAlgoOrders(this.maxNumAlgoOrders)
      : super(FilterType.MAX_NUM_ALGO_ORDERS);
}

@JsonSerializable()
class MaxNumIcebergOrders extends Filter {
  final int maxNumIcebergOrders;

  MaxNumIcebergOrders(this.maxNumIcebergOrders)
      : super(FilterType.MAX_NUM_ICEBERG_ORDERS);
}

@JsonSerializable()
class MaxPosition extends Filter {
  final String maxPosition;

  MaxPosition(this.maxPosition) : super(FilterType.MAX_POSITION);
}

@JsonSerializable()
class ExchangeMaxNumOrders extends Filter {
  final int maxNumOrders;

  ExchangeMaxNumOrders(this.maxNumOrders)
      : super(FilterType.EXCHANGE_MAX_NUM_ORDERS);
}

@JsonSerializable()
class ExchangeMaxAlgoOrders extends Filter {
  final int maxNumAlgoOrders;

  ExchangeMaxAlgoOrders(this.maxNumAlgoOrders)
      : super(FilterType.EXCHANGE_MAX_ALGO_ORDERS);
}
