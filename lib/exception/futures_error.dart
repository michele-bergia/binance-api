import 'package:binance_api/exception/binance_error.dart';

abstract class FuturesError extends BinanceError {
  FuturesError(String msg) : super(msg);

  factory FuturesError.fromJson(int code, String msg) {
    switch (code) {
      case 7001:
        return FuturesBadDateRangeException(msg);
      case 7002:
        return FuturesBadTypeException(msg);
      default:
        throw Exception('Not mapped Future exception. Cause: $msg');
    }
  }
}

/// Date range is not supported
class FuturesBadDateRangeException extends FuturesError {
  FuturesBadDateRangeException(String cause) : super(cause);
}

/// Data request type is not supported.
class FuturesBadTypeException extends FuturesError {
  FuturesBadTypeException(String cause) : super(cause);
}
