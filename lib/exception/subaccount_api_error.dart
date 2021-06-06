import 'package:binance_api/exception/binance_error.dart';

abstract class SubAccountApiError extends BinanceError {
  SubAccountApiError(String msg) : super(msg);

  factory SubAccountApiError.fromJson(int code, String msg) {
    switch (code) {
      case 3000:
        return InnerException(msg);
      case 3001:
        return NeedEnable2FAException(msg);
      case 3002:
        return AssetDeficiencyException(msg);
      case 3003:
        return MarginAccountNotOpenedException(msg);
      case 3004:
        return TradeNotAllowedException(msg);
      case 3005:
        return TransferringOutNotAllowedException(msg);
      case 3006:
        return MaxBorrowableExceededException(msg);
      case 3007:
        return HasPendingTransactionException(msg);
      case 3008:
        return BorrowNotAllowedException(msg);
      case 3009:
        return AssetNotMortgageableException(msg);
      case 3010:
        return RepayNotAllowedException(msg);
      case 3011:
        return BadDateRateException(msg);
      case 3012:
        return AssetAdminBanBorrowException(msg);
      case 3013:
        return LessThanMinimumBorrowableException(msg);
      case 3014:
        return AccountBanBorrowException(msg);
      case 3015:
        return RepayExceedLiabilityException(msg);
      case 3016:
        return LessThanMinimumRepayException(msg);
      case 3017:
        return AssetAdminBanMortgageException(msg);
      case 3018:
        return AccountBanMortgageException(msg);
      case 3019:
        return AccountBanRolloutException(msg);
      case 3020:
        return ExceedMaxRolloutException(msg);
      case 3021:
        return PairAdminBanTradeException(msg);
      case 3022:
        return AccountBanTradeException(msg);
      case 3023:
        return WarningMarginLevelException(msg);
      case 3024:
        return FewLiabilityLeftException(msg);
      case 3025:
        return InvalidEffectiveTimeException(msg);
      case 3026:
        return ValidationFailedException(msg);
      case 3027:
        return MarginAssetNotValidException(msg);
      case 3028:
        return MarginPairNotValidException(msg);
      case 3029:
        return TransferFailedException(msg);
      case 3036:
        return AccountBanRepayException(msg);
      case 3037:
        return PnlClearingException(msg);
      case 3038:
        return ListenKeyNotFoundException(msg);
      case 3041:
        return BalanceNotClearedException(msg);
      case 3042:
        return PriceIndexNotFoundException(msg);
      case 3043:
        return TransferInNotAllowedException(msg);
      case 3044:
        return SystemBusyException(msg);
      case 3999:
        return NotWhitelistUserException(msg);
      case 4001:
        return CapitalInvalidException(msg);
      case 4002:
        return CapitalIgException(msg);
      case 4003:
        return CapitalIevException(msg);
      case 4004:
        return CapitalUaException(msg);
      case 4005:
        return CapitalTooManyRequestException(msg);
      case 4006:
        return CapitalOnlySupportPrimaryAccountException(msg);
      case 4007:
        return CapitalAddressVerificationNotPassedException(msg);
      case 4008:
        return CapitalAddressTagVerificationNotPassedException(msg);
      case 4010:
        return CapitalWhitelistEmailConfirmException(msg);
      case 4011:
        return CapitalWhitelistEmailExpiredException(msg);
      case 4012:
        return CapitalWhitelistCloseException(msg);
      case 4013:
        return CapitalWithdraw2FaVerifyException(msg);
      case 4014:
        return CapitalWithdrawLoginDelayException(msg);
      case 4015:
        return CapitalWithdrawRestrictedMinuteException(msg);
      case 4016:
        return CapitalWithdrawRestrictedPasswordException(msg);
      case 4017:
        return CapitalWithdrawRestrictedUnbind2FaException(msg);
      case 4018:
        return CapitalWithdrawAssetNotExistException(msg);
      case 4019:
        return CapitalWithdrawAssetProhibitException(msg);
      case 4021:
        return CapitalWithdrawAmountMultipleException(msg);
      case 4022:
        return CapitalWithdrawMinAmountException(msg);
      case 4023:
        return CapitalWithdrawMaxAmountException(msg);
      case 4024:
        return CapitalWithdrawUserNoAssetException(msg);
      case 4025:
        return CapitalWithdrawUserAssetLessThanZeroException(msg);
      case 4026:
        return CapitalWithdrawUserAssetNotEnoughException(msg);
      case 4027:
        return CapitalWithdrawGetTranIdFailureException(msg);
      case 4028:
        return CapitalWithdrawMoreThanFeeException(msg);
      case 4029:
        return CapitalWithdrawNotExistException(msg);
      case 4030: //TODO Shouldn't be exception (to verify)
        return CapitalWithdrawConfirmSuccessException(msg);
      case 4031:
        return CapitalWithdrawCancelFailureException(msg);
      case 4032:
        return CapitalWithdrawChecksumVerifyFailureException(msg);
      case 4033:
        return CapitalWithdrawIllegalAddressException(msg);
      case 4034:
        return CapitalWithdrawAddressCheatException(msg);
      case 4035:
        return CapitalWithdrawNotWhiteAddressException(msg);
      case 4036:
        return CapitalWithdrawNewAddressException(msg);
      case 4037:
        return CapitalWithdrawResendMailFailException(msg);
      case 4038:
        return CapitalWithdrawResendMailTimeOutException(msg);
      case 4039:
        return CapitalUserEmptyException(msg);
      case 4040:
        return CapitalNoChargeException(msg);
      case 4041:
        return CapitalMinuteTooSmallException(msg);
      case 4042:
        return CapitalChargeNotResetException(msg);
      case 4043:
        return CapitalAddressTooMuchException(msg);
      case 4044:
        return CapitalBlackListCountryGetAddressException(msg);
      case 4045:
        return CapitalGetAssetErrorException(msg);
      case 4046:
        return CapitalAgreementNotConfirmedException(msg);
      case 4047:
        return CapitalDateIntervalLimitException(msg);
      case 5001:
        return AssetDribbletConvertSwitchOffException(msg);
      case 5002:
        return AssetNotEnoughException(msg);
      case 5003:
        return AssetUserHasNoAssetException(msg);
      case 5004:
        return UserOutOfTransferFloatException(msg);
      case 5005:
        return UserAssetAmountIsTooLowException(msg);
      case 5006:
        return UserCanNotRequestIn24HoursException(msg);
      case 5007:
        return AmountOverZeroException(msg);
      case 5008:
        return AssetWithdrawingNotEnoughException(msg);
      case 5009:
        return ProductNotExistException(msg);
      case 5010:
        return TransferFailException(msg);
      case 5011:
        return FutureAccountNotExistingException(msg);
      case 5012:
        return TransferPendingException(msg);
      case 5021:
        return ParentSubHaveNoRelationException(msg);
      case 5022: //????
        return FutureAccountOrSubRelationNotExistException(msg);
      default:
        throw Exception('Not mapped sub-account exception. Cause: $msg');
    }
  }
}

/// Internal server error
class InnerException extends SubAccountApiError {
  InnerException(String cause) : super(cause);
}

/// Please enable 2FA first.
class NeedEnable2FAException extends SubAccountApiError {
  NeedEnable2FAException(String cause) : super(cause);
}

/// We don't have this asset.
class AssetDeficiencyException extends SubAccountApiError {
  AssetDeficiencyException(String cause) : super(cause);
}

/// Margin account does not exist.
class MarginAccountNotOpenedException extends SubAccountApiError {
  MarginAccountNotOpenedException(String cause) : super(cause);
}

/// Trade not allowed.
class TradeNotAllowedException extends SubAccountApiError {
  TradeNotAllowedException(String cause) : super(cause);
}

/// Transferring out not allowed.
class TransferringOutNotAllowedException extends SubAccountApiError {
  TransferringOutNotAllowedException(String cause) : super(cause);
}

/// Your borrow amount has exceed maximum borrow amount.
class MaxBorrowableExceededException extends SubAccountApiError {
  MaxBorrowableExceededException(String cause) : super(cause);
}

/// You have pending transaction, please try again later.
class HasPendingTransactionException extends SubAccountApiError {
  HasPendingTransactionException(String cause) : super(cause);
}

/// Borrow not allowed.
class BorrowNotAllowedException extends SubAccountApiError {
  BorrowNotAllowedException(String cause) : super(cause);
}

/// This asset are not allowed to transfer into margin account currently.
class AssetNotMortgageableException extends SubAccountApiError {
  AssetNotMortgageableException(String cause) : super(cause);
}

/// Repay not allowed.
class RepayNotAllowedException extends SubAccountApiError {
  RepayNotAllowedException(String cause) : super(cause);
}

/// Your input date is invalid.
class BadDateRateException extends SubAccountApiError {
  BadDateRateException(String cause) : super(cause);
}

/// Borrow is banned for this asset.
class AssetAdminBanBorrowException extends SubAccountApiError {
  AssetAdminBanBorrowException(String cause) : super(cause);
}

/// Borrow amount less than minimum borrow amount.
class LessThanMinimumBorrowableException extends SubAccountApiError {
  LessThanMinimumBorrowableException(String cause) : super(cause);
}

/// Borrow is banned for this account.
class AccountBanBorrowException extends SubAccountApiError {
  AccountBanBorrowException(String cause) : super(cause);
}

/// Repay amount exceeds borrow amount.
class RepayExceedLiabilityException extends SubAccountApiError {
  RepayExceedLiabilityException(String cause) : super(cause);
}

/// Repay amount less than minimum repay amount.
class LessThanMinimumRepayException extends SubAccountApiError {
  LessThanMinimumRepayException(String cause) : super(cause);
}

/// This asset are not allowed to transfer into margin account currently.
class AssetAdminBanMortgageException extends SubAccountApiError {
  AssetAdminBanMortgageException(String cause) : super(cause);
}

/// Transferring in has been banned for this account.
class AccountBanMortgageException extends SubAccountApiError {
  AccountBanMortgageException(String cause) : super(cause);
}

/// Transferring out has been banned for this account.
class AccountBanRolloutException extends SubAccountApiError {
  AccountBanRolloutException(String cause) : super(cause);
}

/// Transfer out amount exceeds max amount.
class ExceedMaxRolloutException extends SubAccountApiError {
  ExceedMaxRolloutException(String cause) : super(cause);
}

/// Margin account are not allowed to trade this trading pair.
class PairAdminBanTradeException extends SubAccountApiError {
  PairAdminBanTradeException(String cause) : super(cause);
}

/// You account's trading is banned.
class AccountBanTradeException extends SubAccountApiError {
  AccountBanTradeException(String cause) : super(cause);
}

/// You can't transfer out/place order under current margin level.
class WarningMarginLevelException extends SubAccountApiError {
  WarningMarginLevelException(String cause) : super(cause);
}

/// The unpaid debt is too small after this repayment.
class FewLiabilityLeftException extends SubAccountApiError {
  FewLiabilityLeftException(String cause) : super(cause);
}

/// Your input date is invalid.
class InvalidEffectiveTimeException extends SubAccountApiError {
  InvalidEffectiveTimeException(String cause) : super(cause);
}

/// Your input param is invalid.
class ValidationFailedException extends SubAccountApiError {
  ValidationFailedException(String cause) : super(cause);
}

/// Not a valid margin asset.
class MarginAssetNotValidException extends SubAccountApiError {
  MarginAssetNotValidException(String cause) : super(cause);
}

/// Not a valid margin pair.
class MarginPairNotValidException extends SubAccountApiError {
  MarginPairNotValidException(String cause) : super(cause);
}

/// Transfer failed.
class TransferFailedException extends SubAccountApiError {
  TransferFailedException(String cause) : super(cause);
}

/// This account is not allowed to repay.
class AccountBanRepayException extends SubAccountApiError {
  AccountBanRepayException(String cause) : super(cause);
}

/// PNL is clearing. Wait a second.
class PnlClearingException extends SubAccountApiError {
  PnlClearingException(String cause) : super(cause);
}

/// Listen key not found.
class ListenKeyNotFoundException extends SubAccountApiError {
  ListenKeyNotFoundException(String cause) : super(cause);
}

/// Balance is not enough
class BalanceNotClearedException extends SubAccountApiError {
  BalanceNotClearedException(String cause) : super(cause);
}

/// PriceIndex not available for this margin pair.
class PriceIndexNotFoundException extends SubAccountApiError {
  PriceIndexNotFoundException(String cause) : super(cause);
}

/// Transferring in not allowed.
class TransferInNotAllowedException extends SubAccountApiError {
  TransferInNotAllowedException(String cause) : super(cause);
}

/// System busy.
class SystemBusyException extends SubAccountApiError {
  SystemBusyException(String cause) : super(cause);
}

/// This function is only available for invited users.
class NotWhitelistUserException extends SubAccountApiError {
  NotWhitelistUserException(String cause) : super(cause);
}

/// Invalid operation.
class CapitalInvalidException extends SubAccountApiError {
  CapitalInvalidException(String cause) : super(cause);
}

/// Invalid get.
class CapitalIgException extends SubAccountApiError {
  CapitalIgException(String cause) : super(cause);
}

/// Your input email is invalid.
class CapitalIevException extends SubAccountApiError {
  CapitalIevException(String cause) : super(cause);
}

/// You don't login or auth.
class CapitalUaException extends SubAccountApiError {
  CapitalUaException(String cause) : super(cause);
}

/// Too many new requests.
class CapitalTooManyRequestException extends SubAccountApiError {
  CapitalTooManyRequestException(String cause) : super(cause);
}

/// Support main account only.
class CapitalOnlySupportPrimaryAccountException extends SubAccountApiError {
  CapitalOnlySupportPrimaryAccountException(String cause) : super(cause);
}

/// Address validation is not passed.
class CapitalAddressVerificationNotPassedException extends SubAccountApiError {
  CapitalAddressVerificationNotPassedException(String cause) : super(cause);
}

/// Address tag validation is not passed.
class CapitalAddressTagVerificationNotPassedException
    extends SubAccountApiError {
  CapitalAddressTagVerificationNotPassedException(String cause) : super(cause);
}

/// White list mail has been confirmed.
class CapitalWhitelistEmailConfirmException extends SubAccountApiError {
  CapitalWhitelistEmailConfirmException(String cause) : super(cause);
}

/// White list mail is invalid.
class CapitalWhitelistEmailExpiredException extends SubAccountApiError {
  CapitalWhitelistEmailExpiredException(String cause) : super(cause);
}

/// White list is not opened.
class CapitalWhitelistCloseException extends SubAccountApiError {
  CapitalWhitelistCloseException(String cause) : super(cause);
}

/// 2FA is not opened.
class CapitalWithdraw2FaVerifyException extends SubAccountApiError {
  CapitalWithdraw2FaVerifyException(String cause) : super(cause);
}

/// Withdraw is not allowed within 2 min login.
class CapitalWithdrawLoginDelayException extends SubAccountApiError {
  CapitalWithdrawLoginDelayException(String cause) : super(cause);
}

/// Withdraw is limited.
class CapitalWithdrawRestrictedMinuteException extends SubAccountApiError {
  CapitalWithdrawRestrictedMinuteException(String cause) : super(cause);
}

/// Within 24 hours after password modification, withdrawal is prohibited.
class CapitalWithdrawRestrictedPasswordException extends SubAccountApiError {
  CapitalWithdrawRestrictedPasswordException(String cause) : super(cause);
}

/// Within 24 hours after the release of 2FA, withdrawal is prohibited.
class CapitalWithdrawRestrictedUnbind2FaException extends SubAccountApiError {
  CapitalWithdrawRestrictedUnbind2FaException(String cause) : super(cause);
}

/// We don't have this asset.
class CapitalWithdrawAssetNotExistException extends SubAccountApiError {
  CapitalWithdrawAssetNotExistException(String cause) : super(cause);
}

/// Current asset is not open for withdrawal.
class CapitalWithdrawAssetProhibitException extends SubAccountApiError {
  CapitalWithdrawAssetProhibitException(String cause) : super(cause);
}

/// Asset withdrawal must be an %s multiple of %s.
class CapitalWithdrawAmountMultipleException extends SubAccountApiError {
  CapitalWithdrawAmountMultipleException(String cause) : super(cause);
}

/// Not less than the minimum pick-up quantity %s.
class CapitalWithdrawMinAmountException extends SubAccountApiError {
  CapitalWithdrawMinAmountException(String cause) : super(cause);
}

/// Within 24 hours, the withdrawal exceeds the maximum amount.
class CapitalWithdrawMaxAmountException extends SubAccountApiError {
  CapitalWithdrawMaxAmountException(String cause) : super(cause);
}

/// You don't have this asset.
class CapitalWithdrawUserNoAssetException extends SubAccountApiError {
  CapitalWithdrawUserNoAssetException(String cause) : super(cause);
}

/// The number of hold asset is less than zero.
class CapitalWithdrawUserAssetLessThanZeroException extends SubAccountApiError {
  CapitalWithdrawUserAssetLessThanZeroException(String cause) : super(cause);
}

/// You have insufficient balance.
class CapitalWithdrawUserAssetNotEnoughException extends SubAccountApiError {
  CapitalWithdrawUserAssetNotEnoughException(String cause) : super(cause);
}

/// Failed to obtain tranId.
class CapitalWithdrawGetTranIdFailureException extends SubAccountApiError {
  CapitalWithdrawGetTranIdFailureException(String cause) : super(cause);
}

/// The amount of withdrawal must be greater than the Commission.
class CapitalWithdrawMoreThanFeeException extends SubAccountApiError {
  CapitalWithdrawMoreThanFeeException(String cause) : super(cause);
}

/// The withdrawal record does not exist.
class CapitalWithdrawNotExistException extends SubAccountApiError {
  CapitalWithdrawNotExistException(String cause) : super(cause);
}

/// Confirmation of successful asset withdrawal.
class CapitalWithdrawConfirmSuccessException extends SubAccountApiError {
  CapitalWithdrawConfirmSuccessException(String cause) : super(cause);
}

/// Cancellation failed.
class CapitalWithdrawCancelFailureException extends SubAccountApiError {
  CapitalWithdrawCancelFailureException(String cause) : super(cause);
}

/// Withdraw verification exception.
class CapitalWithdrawChecksumVerifyFailureException extends SubAccountApiError {
  CapitalWithdrawChecksumVerifyFailureException(String cause) : super(cause);
}

/// Illegal address.
class CapitalWithdrawIllegalAddressException extends SubAccountApiError {
  CapitalWithdrawIllegalAddressException(String cause) : super(cause);
}

/// The address is suspected of fake.
class CapitalWithdrawAddressCheatException extends SubAccountApiError {
  CapitalWithdrawAddressCheatException(String cause) : super(cause);
}

/// This address is not on the whitelist. Please join and try again.
class CapitalWithdrawNotWhiteAddressException extends SubAccountApiError {
  CapitalWithdrawNotWhiteAddressException(String cause) : super(cause);
}

/// The new address needs to be withdrawn in {0} hours.
class CapitalWithdrawNewAddressException extends SubAccountApiError {
  CapitalWithdrawNewAddressException(String cause) : super(cause);
}

/// Re-sending Mail failed.
class CapitalWithdrawResendMailFailException extends SubAccountApiError {
  CapitalWithdrawResendMailFailException(String cause) : super(cause);
}

/// Please try again in 5 minutes.
class CapitalWithdrawResendMailTimeOutException extends SubAccountApiError {
  CapitalWithdrawResendMailTimeOutException(String cause) : super(cause);
}

/// The user does not exist.
class CapitalUserEmptyException extends SubAccountApiError {
  CapitalUserEmptyException(String cause) : super(cause);
}

/// This address not charged.
class CapitalNoChargeException extends SubAccountApiError {
  CapitalNoChargeException(String cause) : super(cause);
}

/// Please try again in one minute.
class CapitalMinuteTooSmallException extends SubAccountApiError {
  CapitalMinuteTooSmallException(String cause) : super(cause);
}

/// This asset cannot get deposit address again.
class CapitalChargeNotResetException extends SubAccountApiError {
  CapitalChargeNotResetException(String cause) : super(cause);
}

/// More than 100 recharge addresses were used in 24 hours.
class CapitalAddressTooMuchException extends SubAccountApiError {
  CapitalAddressTooMuchException(String cause) : super(cause);
}

/// This is a blacklist country.
class CapitalBlackListCountryGetAddressException extends SubAccountApiError {
  CapitalBlackListCountryGetAddressException(String cause) : super(cause);
}

/// Failure to acquire assets.
class CapitalGetAssetErrorException extends SubAccountApiError {
  CapitalGetAssetErrorException(String cause) : super(cause);
}

/// Agreement not confirmed.
class CapitalAgreementNotConfirmedException extends SubAccountApiError {
  CapitalAgreementNotConfirmedException(String cause) : super(cause);
}

/// Time interval must be within 0-90 days
class CapitalDateIntervalLimitException extends SubAccountApiError {
  CapitalDateIntervalLimitException(String cause) : super(cause);
}

/// Don't allow transfer to micro assets.
class AssetDribbletConvertSwitchOffException extends SubAccountApiError {
  AssetDribbletConvertSwitchOffException(String cause) : super(cause);
}

/// You have insufficient balance.
class AssetNotEnoughException extends SubAccountApiError {
  AssetNotEnoughException(String cause) : super(cause);
}

/// You don't have this asset.
class AssetUserHasNoAssetException extends SubAccountApiError {
  AssetUserHasNoAssetException(String cause) : super(cause);
}

/// The residual balances have exceeded 0.001BTC, Please re-choose.
/// The residual balances of %s have exceeded 0.001BTC, Please re-choose.
class UserOutOfTransferFloatException extends SubAccountApiError {
  UserOutOfTransferFloatException(String cause) : super(cause);
}

/// The residual balances of the BTC is too low
/// The residual balances of %s is too low, Please re-choose.
class UserAssetAmountIsTooLowException extends SubAccountApiError {
  UserAssetAmountIsTooLowException(String cause) : super(cause);
}

/// Only transfer once in 24 hours.
class UserCanNotRequestIn24HoursException extends SubAccountApiError {
  UserCanNotRequestIn24HoursException(String cause) : super(cause);
}

/// Quantity must be greater than zero.
class AmountOverZeroException extends SubAccountApiError {
  AmountOverZeroException(String cause) : super(cause);
}

/// Insufficient amount of returnable assets.
class AssetWithdrawingNotEnoughException extends SubAccountApiError {
  AssetWithdrawingNotEnoughException(String cause) : super(cause);
}

/// Product does not exist.
class ProductNotExistException extends SubAccountApiError {
  ProductNotExistException(String cause) : super(cause);
}

/// Asset transfer fail.
class TransferFailException extends SubAccountApiError {
  TransferFailException(String cause) : super(cause);
}

/// Future account not exists.
class FutureAccountNotExistingException extends SubAccountApiError {
  FutureAccountNotExistingException(String cause) : super(cause);
}

/// Asset transfer is in pending.
class TransferPendingException extends SubAccountApiError {
  TransferPendingException(String cause) : super(cause);
}

/// This parent sub have no relation
class ParentSubHaveNoRelationException extends SubAccountApiError {
  ParentSubHaveNoRelationException(String cause) : super(cause);
}

/// Future account or sub relation not exists.
class FutureAccountOrSubRelationNotExistException extends SubAccountApiError {
  FutureAccountOrSubRelationNotExistException(String cause) : super(cause);
}
