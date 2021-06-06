import 'dart:convert';

import 'package:binance_api/api/agg_trade.dart';
import 'package:binance_api/api/exchange_information.dart';
import 'package:binance_api/api/order_book.dart';
import 'package:binance_api/api/order_book_ticker.dart';
import 'package:binance_api/api/price.dart';
import 'package:binance_api/api/price_ticker.dart';
import 'package:binance_api/api/recent_trade.dart';
import 'package:binance_api/api/server_time.dart';
import 'package:binance_api/api/ticker_price_statistics.dart';
import 'package:binance_api/enum/candlestick_chart_interval.dart';
import 'package:binance_api/market.dart';
import 'package:http/http.dart';

import 'binance_client.dart';

class BinanceClientMarket extends BinanceClient with Market {
  BinanceClientMarket.minimum(String binaceApiKey, String binaceApiSecret)
      : super.minimum(binaceApiKey, binaceApiSecret);

  @override
  Future<void> testConnectivity() async {
    final Response response = await getResponse('/ping');

    return getJSONData(response, (value) => value);
  }

  @override
  Future<ServerTime> checkServerTime() async {
    final Response response = await getResponse('/time');

    return getJSONData(response, (value) => ServerTime.fromJson(value));
  }

  @override
  Future<ExchangeInformation> exchangeInformation(
      [List<String>? symbols]) async {
    final Response response;

    if (symbols == null) {
      response = await getResponse('/exchangeInfo');
    } else if (symbols.length == 1) {
      response = await getResponse(
          '/exchangeInfo', <String, String>{'symbol': symbols.first});
    } else if (symbols.length > 1) {
      response = await getResponse(
          '/exchangeInfo', <String, String>{'symbols': jsonEncode(symbols)});
    } else {
      throw Exception('Wrong input');
    }

    return getJSONData(
        response, (value) => ExchangeInformation.fromJson(value));
  }

  @override
  Future<OrderBook> orderBook(String symbol, {int limit = 100}) async {
    final Map<String, String> queryParameters = <String, String>{
      'symbol': symbol,
      'limit': limit.toString(),
    };

    final Response response = await getResponse('/depth', queryParameters);

    return getJSONData(response, (value) => OrderBook.fromJson(value));
  }

  @override
  Future<List<RecentTrade>> recentTradesList(String symbol,
      {int limit = 500}) async {
    final Map<String, String> queryParameters = <String, String>{
      'symbol': symbol,
      'limit': limit.toString(),
    };

    final Response response = await getResponse('/trades', queryParameters);

    return getJSONDataAsList(response, (value) => RecentTrade.fromJson(value));
  }

  @override
  Future<List<RecentTrade>> oldTradeLookup(String symbol,
      {int limit = 500, int? fromId}) async {
    final Map<String, String> queryParameters = <String, String>{
      'symbol': symbol,
      'limit': limit.toString(),
    };
    if (fromId != null) {
      queryParameters['fromId'] = fromId.toString();
    }

    final Map<String, String> headers = <String, String>{
      'X-MBX-APIKEY': this.binaceApiKey
    };

    final Response response = await getResponseWithHeaders(
        '/historicalTrades', headers, queryParameters);

    return getJSONDataAsList(response, (value) => RecentTrade.fromJson(value));
  }

  @override
  Future<List<AggTrade>> compressedAggregateTradesList(String symbol,
      {int? fromId, int? startTime, int? endTime, int limit = 500}) async {
    final Map<String, String> queryParameters = <String, String>{
      'symbol': symbol,
      'limit': limit.toString(),
    };
    if (fromId != null) {
      queryParameters['fromId'] = fromId.toString();
    }
    if (startTime != null) {
      queryParameters['startTime'] = startTime.toString();
    }
    if (endTime != null) {
      queryParameters['endTime'] = endTime.toString();
    }

    final Response response = await getResponse('/aggTrades', queryParameters);

    return getJSONDataAsList(response, (value) => AggTrade.fromJson(value));
  }

  @override
  Future<List<dynamic>> klineCandlestickData(
      String symbol, CandlestickChartInterval interval,
      {int? startTime, int? endTime, int limit = 500}) async {
    final Map<String, String> queryParameters = <String, String>{
      'symbol': symbol,
      'interval': interval.value,
      'limit': limit.toString()
    };
    if (startTime != null) {
      queryParameters['startTime'] = startTime.toString();
    }
    if (endTime != null) {
      queryParameters['endTime'] = endTime.toString();
    }

    final Response response = await getResponse('/klines', queryParameters);

    return getJSONDataAsList(response, (value) => value);
  }

  @override
  Future<Price> currentAveragePrice(String symbol) async {
    final Map<String, String> queryParameters = <String, String>{
      'symbol': symbol
    };

    final Response response = await getResponse('/avgPrice', queryParameters);

    return getJSONData(response, (value) => Price.fromJson(value));
  }

  @override
  Future<List<TickerPriceStatistics>> tickerPriceChangeStatistics24hr(
      [String? symbol]) async {
    final Response response;
    if (symbol == null) {
      response = await getResponse('/ticker/24hr');

      return getJSONDataAsList(
          response, (value) => TickerPriceStatistics.fromJson(value));
    } else {
      response =
          await getResponse('/ticker/24hr', <String, String>{'symbol': symbol});

      return [
        getJSONData(response, (value) => TickerPriceStatistics.fromJson(value))
      ];
    }
  }

  @override
  Future<List<PriceTicker>> symbolPriceTicker([String? symbol]) async {
    final Response response;
    if (symbol == null) {
      response = await getResponse('/ticker/price');

      return getJSONDataAsList(
          response, (value) => PriceTicker.fromJson(value));
    } else {
      response = await getResponse(
          '/ticker/price', <String, String>{'symbol': symbol});

      return [getJSONData(response, (value) => PriceTicker.fromJson(value))];
    }
  }

  @override
  Future<List<OrderBookTicker>> symbolOrderBookTicker([String? symbol]) async {
    final Response response;
    if (symbol == null) {
      response = await getResponse('/ticker/bookTicker');

      return getJSONDataAsList(
          response, (value) => OrderBookTicker.fromJson(value));
    } else {
      response = await getResponse(
          '/ticker/bookTicker', <String, String>{'symbol': symbol});

      return [
        getJSONData(response, (value) => OrderBookTicker.fromJson(value))
      ];
    }
  }
}
