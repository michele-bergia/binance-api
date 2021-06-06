import 'package:binance_api/exception/binance_error.dart';

abstract class BlvtError extends BinanceError {
  BlvtError(String msg) : super(msg);

  factory BlvtError.fromJson(int code, String msg) {
    switch (code) {
      case 13000:
        return BlvtForbidRedeemException(msg);
      case 13001:
        return BlvtExceedDailyLimitException(msg);
      case 13002:
        return BlvtExceedTokenDailyLimitException(msg);
      case 13003:
        return BlvtForbidPurchaseException(msg);
      case 13004:
        return BlvtExceedDailyPurchaseLimitException(msg);
      case 13005:
        return BlvtForbidRedeemExceedTokenDailyPurchaseLimitException(msg);
      case 13006:
        return BlvtPurchaseLessMinimumAmountException(msg);
      case 13007:
        return BlvtPurchaseAgreementNotSignException(msg);
      default:
        throw Exception('Not mapped BLVT exception. Cause: $msg');
    }
  }
}

/// Redemption of the token is forbidden now
class BlvtForbidRedeemException extends BlvtError {
  BlvtForbidRedeemException(String cause) : super(cause);
}

/// Exceeds individual 24h redemption limit of the token
class BlvtExceedDailyLimitException extends BlvtError {
  BlvtExceedDailyLimitException(String cause) : super(cause);
}

/// Exceeds total 24h redemption limit of the token
class BlvtExceedTokenDailyLimitException extends BlvtError {
  BlvtExceedTokenDailyLimitException(String cause) : super(cause);
}

/// Subscription of the token is forbidden now
class BlvtForbidPurchaseException extends BlvtError {
  BlvtForbidPurchaseException(String cause) : super(cause);
}

/// Exceeds individual 24h subscription limit of the token
class BlvtExceedDailyPurchaseLimitException extends BlvtError {
  BlvtExceedDailyPurchaseLimitException(String cause) : super(cause);
}

/// Exceeds total 24h subscription limit of the token
class BlvtForbidRedeemExceedTokenDailyPurchaseLimitException extends BlvtError {
  BlvtForbidRedeemExceedTokenDailyPurchaseLimitException(String cause)
      : super(cause);
}

/// Subscription amount is too small
class BlvtPurchaseLessMinimumAmountException extends BlvtError {
  BlvtPurchaseLessMinimumAmountException(String cause) : super(cause);
}

/// The Agreement is not signed
class BlvtPurchaseAgreementNotSignException extends BlvtError {
  BlvtPurchaseAgreementNotSignException(String cause) : super(cause);
}
