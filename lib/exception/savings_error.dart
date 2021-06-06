import 'package:binance_api/exception/binance_error.dart';

abstract class SavingsError extends BinanceError {
  SavingsError(String msg) : super(msg);

  factory SavingsError.fromJson(int code, String msg) {
    switch (code) {
      case 6001:
        return DailyProductNotExistException(msg);
      case 6003:
        return DailyProductNotAccessibleException(msg);
      case 6004:
        return DailyProductNotPurchasableException(msg);
      case 6005:
        return DailyLowerThanMinimumPurchaseLimitException(msg);
      case 6006:
        return DailyRedeemAmountErrorException(msg);
      case 6007:
        return DailyRedeemTimeErrorException(msg);
      case 6008:
        return DailyProductNotRedeemableException(msg);
      case 6009:
        return RequestFrequencyTooHighException(msg);
      case 6011:
        return ExceedUserPurchaseLimitException(msg);
      case 6012:
        return BalanceNotEnoughException(msg);
      case 6013:
        return PurchasingFailedException(msg);
      case 6014:
        return UpdateFailedException(msg);
      case 6015:
        return EmptyRequestBodyException(msg);
      case 6016:
        return ParameterErrorException(msg);
      case 6017:
        return NotInWhitelistException(msg);
      case 6018:
        return AssetNotEnoughException(msg);
      case 6019:
        return PendingException(msg);
      case 6020:
        return ProjectNotExistException(msg);
      default:
        throw Exception('Not mapped Saving exception. Cause: $msg');
    }
  }
}

/// Daily product not exists.
class DailyProductNotExistException extends SavingsError {
  DailyProductNotExistException(String cause) : super(cause);
}

/// Product not exist or you don't have permission
class DailyProductNotAccessibleException extends SavingsError {
  DailyProductNotAccessibleException(String cause) : super(cause);
}

/// Product not in purchase status
class DailyProductNotPurchasableException extends SavingsError {
  DailyProductNotPurchasableException(String cause) : super(cause);
}

/// Smaller than min purchase limit
class DailyLowerThanMinimumPurchaseLimitException extends SavingsError {
  DailyLowerThanMinimumPurchaseLimitException(String cause) : super(cause);
}

/// Redeem amount error
class DailyRedeemAmountErrorException extends SavingsError {
  DailyRedeemAmountErrorException(String cause) : super(cause);
}

/// Not in redeem time
class DailyRedeemTimeErrorException extends SavingsError {
  DailyRedeemTimeErrorException(String cause) : super(cause);
}

/// Product not in redeem status
class DailyProductNotRedeemableException extends SavingsError {
  DailyProductNotRedeemableException(String cause) : super(cause);
}

/// Request frequency too high
class RequestFrequencyTooHighException extends SavingsError {
  RequestFrequencyTooHighException(String cause) : super(cause);
}

/// Exceeding the maximum num allowed to purchase per user
class ExceedUserPurchaseLimitException extends SavingsError {
  ExceedUserPurchaseLimitException(String cause) : super(cause);
}

/// Balance not enough
class BalanceNotEnoughException extends SavingsError {
  BalanceNotEnoughException(String cause) : super(cause);
}

/// Purchasing failed.
class PurchasingFailedException extends SavingsError {
  PurchasingFailedException(String cause) : super(cause);
}

/// Exceed up-limit allowed to purchased.
class UpdateFailedException extends SavingsError {
  UpdateFailedException(String cause) : super(cause);
}

/// Empty request body.
class EmptyRequestBodyException extends SavingsError {
  EmptyRequestBodyException(String cause) : super(cause);
}

/// Parameter err.
class ParameterErrorException extends SavingsError {
  ParameterErrorException(String cause) : super(cause);
}

/// Not in whitelist.
class NotInWhitelistException extends SavingsError {
  NotInWhitelistException(String cause) : super(cause);
}

/// Asset not enough.
class AssetNotEnoughException extends SavingsError {
  AssetNotEnoughException(String cause) : super(cause);
}

/// Need confirm.
class PendingException extends SavingsError {
  PendingException(String cause) : super(cause);
}

/// Project not exists.
class ProjectNotExistException extends SavingsError {
  ProjectNotExistException(String cause) : super(cause);
}
