import 'package:binance_api/api/filter.dart';
import 'package:binance_api/enum/filter_type.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('serialize PriceFilter', () {
    //GIVEN
    final PriceFilter priceFilter = PriceFilter('234', '500', '2');

    //WHEN
    final Map<String, dynamic> priceFilerMap = priceFilter.toJson();

    //THEN
    expect('PRICE_FILTER', equals(priceFilerMap['filterType']));
    expect('234', equals(priceFilerMap['minPrice']));
    expect('500', equals(priceFilerMap['maxPrice']));
    expect('2', equals(priceFilerMap['tickSize']));
  });

  test('deserialize PriceFilter', () {
    //GIVEN
    final Map<String, dynamic> priceFilerMap = {
      'filterType': 'PRICE_FILTER',
      'minPrice': '234',
      'maxPrice': '500',
      'tickSize': '2'
    };

    //WHEN
    final PriceFilter priceFilter =
        Filter.fromJson(priceFilerMap) as PriceFilter;

    //THEN
    expect(FilterType.PRICE_FILTER, equals(priceFilter.filterType));
    expect('234', equals(priceFilter.minPrice));
    expect('500', equals(priceFilter.maxPrice));
    expect('2', equals(priceFilter.tickSize));
  });
}
