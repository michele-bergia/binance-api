enum CandlestickChartInterval {
  m1,
  m3,
  m5,
  m15,
  m30,
  h1,
  h2,
  h4,
  h6,
  h8,
  h12,
  d1,
  d3,
  w1,
  M1
}

extension CandlestickChartIntervalExtension on CandlestickChartInterval {
  String get value {
    switch (this) {
      case CandlestickChartInterval.m1:
        return '1m';
      case CandlestickChartInterval.m3:
        return '3m';
      case CandlestickChartInterval.m5:
        return '5m';
      case CandlestickChartInterval.m15:
        return '15m';
      case CandlestickChartInterval.m30:
        return '30m';
      case CandlestickChartInterval.h1:
        return 'h1';
      case CandlestickChartInterval.h2:
        return '2h';
      case CandlestickChartInterval.h4:
        return '4h';
      case CandlestickChartInterval.h6:
        return '6h';
      case CandlestickChartInterval.h8:
        return '8h';
      case CandlestickChartInterval.h12:
        return '12h';
      case CandlestickChartInterval.d1:
        return '1d';
      case CandlestickChartInterval.d3:
        return '3d';
      case CandlestickChartInterval.w1:
        return '1w';
      case CandlestickChartInterval.M1:
        return '1M';
    }
  }
}
