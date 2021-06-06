import 'package:binance_api/exception/binance_error.dart';

abstract class FuturesCrossCollateralError extends BinanceError {
  FuturesCrossCollateralError(String msg) : super(msg);

  factory FuturesCrossCollateralError.fromJson(int code, String msg) {
    switch (code) {
      case 10017:
        return RepayCheckBeyondLiabilityException(msg);
      default:
        throw Exception(
            'Not mapped Future Cross Collateral exception. Cause: $msg');
    }
  }
}

/// Repay amount should not be larger than liability
class RepayCheckBeyondLiabilityException extends FuturesCrossCollateralError {
  RepayCheckBeyondLiabilityException(String cause) : super(cause);
}
