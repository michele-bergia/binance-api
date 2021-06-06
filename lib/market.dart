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

abstract class Market {
  Future<void> testConnectivity();

  Future<ServerTime> checkServerTime();

  Future<ExchangeInformation> exchangeInformation([List<String>? symbols]);

  Future<OrderBook> orderBook(String symbol, {int limit = 100});

  Future<List<RecentTrade>> recentTradesList(String symbol, {int limit = 500});

  Future<List<RecentTrade>> oldTradeLookup(String symbol,
      {int limit = 500, int? fromId});

  Future<List<AggTrade>> compressedAggregateTradesList(String symbol,
      {int? fromId, int? startTime, int? endTime, int limit = 500});

  Future<List<dynamic>> klineCandlestickData(
      String symbol, CandlestickChartInterval interval,
      {int? startTime, int? endTime, int limit = 500});

  Future<Price> currentAveragePrice(String symbol);

  Future<List<TickerPriceStatistics>> tickerPriceChangeStatistics24hr(
      [String? symbol]);

  Future<List<PriceTicker>> symbolPriceTicker([String? symbol]);

  Future<List<OrderBookTicker>> symbolOrderBookTicker([String? symbol]);
}
