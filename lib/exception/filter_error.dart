import 'binance_error.dart';

abstract class FilterError extends BinanceError {
  FilterError(String msg) : super(msg);

  factory FilterError.fromJson(int code, String msg) {
    switch (code) {
      default:
        throw Exception('Not mapped Filter exception. Cause: $msg');
    }
  }
}
