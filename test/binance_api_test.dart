import 'package:binance_api/api/agg_trade.dart';
import 'package:binance_api/api/exchange_information.dart';
import 'package:binance_api/api/order_book.dart';
import 'package:binance_api/api/order_book_ticker.dart';
import 'package:binance_api/api/price.dart';
import 'package:binance_api/api/price_ticker.dart';
import 'package:binance_api/api/recent_trade.dart';
import 'package:binance_api/api/server_time.dart';
import 'package:binance_api/api/ticker_price_statistics.dart';
import 'package:binance_api/binance_client_market.dart';
import 'package:binance_api/enum/candlestick_chart_interval.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late BinanceClientMarket binanceClientMarket;

  setUp(() =>
      binanceClientMarket = BinanceClientMarket.minimum('secret', 'secret'));

  test('check connectivity', () async {
    binanceClientMarket.testConnectivity();
  });

  test('check server time', () async {
    final ServerTime response = await binanceClientMarket.checkServerTime();
    expect(response, isNotNull);
  });

  test('check exchange information - all', () async {
    final ExchangeInformation response =
        await binanceClientMarket.exchangeInformation();
    expect(response, isNotNull);
  });

  test('check exchange information - symbol', () async {
    final ExchangeInformation response =
        await binanceClientMarket.exchangeInformation(['BNBEUR']);
    expect(response, isNotNull);
  });

  test('check exchange information - symbols', () async {
    final ExchangeInformation response =
        await binanceClientMarket.exchangeInformation(['BNBEUR', 'BNBBTC']);
    expect(response, isNotNull);
  });

  test('check order book - null limit', () async {
    final OrderBook response = await binanceClientMarket.orderBook('BNBEUR');
    expect(response, isNotNull);
  });

  test('check recent trade list from recentTradesList - null limit', () async {
    final List<RecentTrade> response =
        await binanceClientMarket.recentTradesList('BNBEUR', limit: 1);
    expect(response, isNotNull);
  });

  test('check recent trade list from oldTradeLookup - null limit', () async {
    final List<RecentTrade> response =
        await binanceClientMarket.oldTradeLookup('BNBEUR', limit: 1);
    expect(response, isNotNull);
  });

  test('check compressedAggregateTradesList - null limit', () async {
    final List<AggTrade> response =
        await binanceClientMarket.compressedAggregateTradesList('BNBEUR');
    expect(response, isNotNull);
  });

  test('check klineCandlestickData - null limit', () async {
    final List<dynamic> response = await binanceClientMarket
        .klineCandlestickData('BNBEUR', CandlestickChartInterval.m15, limit: 3);
    expect(response, isNotNull);
  });

  test('check currentAveragePrice', () async {
    final Price response =
        await binanceClientMarket.currentAveragePrice('BNBEUR');
    expect(response, isNotNull);
  });

  test('check tickerPriceChangeStatistics24hr', () async {
    final List<TickerPriceStatistics> response =
        await binanceClientMarket.tickerPriceChangeStatistics24hr('BNBEUR');
    expect(response, isNotNull);
  });

  test('check symbolPriceTicker', () async {
    final List<PriceTicker> response =
        await binanceClientMarket.symbolPriceTicker('BNBEUR');
    expect(response, isNotNull);
  });

  test('check symbolOrderBookTicker', () async {
    final List<OrderBookTicker> response =
        await binanceClientMarket.symbolOrderBookTicker('BNBEUR');
    expect(response, isNotNull);
  });
}
