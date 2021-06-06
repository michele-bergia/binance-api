import 'package:binance_api/exception/binance_error.dart';

abstract class RequestError extends BinanceError {
  RequestError(String msg) : super(msg);

  factory RequestError.fromJson(int code, String msg) {
    switch (code) {
      case 1100:
        return IllegalCharsException(msg);
      case 1101:
        return TooManyParametersException(msg);
      case 1102:
        return MandatoryParameterEmptyOrMalformedException(msg);
      case 1103:
        return UnknownParameterException(msg);
      case 1104:
        return UnreadParametersException(msg);
      case 1105:
        return EmptyParameterException(msg);
      case 1106:
        return NotRequiredParameterException(msg);
      case 1111:
        return BadPrecisionException(msg);
      case 1112:
        return NoDepthException(msg);
      case 1114:
        return TimeInForceNotRequiredException(msg);
      case 1115:
        return TimeInForceInvalidException(msg);
      case 1116:
        return OrderTypeInvalidException(msg);
      case 1117:
        return InvalidSideException(msg);
      case 1118:
        return NewClientOrderIdEmptyException(msg);
      case 1119:
        return OriginalClientOrderIdEmptyException(msg);
      case 1120:
        return BadIntervalException(msg);
      case 1121:
        return BadSymbolException(msg);
      case 1125:
        return ListenKeyInvalidException(msg);
      case 1127:
        return MoreThanXXHoursException(msg);
      case 1128:
        return BadComboOptionalParamsException(msg);
      case 1130:
        return InvalidParameterException(msg);
      case 1131:
        return BadWindowRecvException(msg);
      case 2010:
        return NewOrderRejectedException(msg);
      case 2011:
        return CancelRejectedException(msg);
      case 2013:
        return NoSuchOrderException(msg);
      case 2014:
        return BadApiKeyFormatException(msg);
      case 2015:
        return MbxKeyRejectedException(msg);
      case 2016:
        return NoTradingWindowException(msg);
      default:
        throw Exception('Not mapped Request exception. Cause: $msg');
    }
  }
}

/// Illegal characters found in a parameter.
/// Illegal characters found in a parameter. %s
/// Illegal characters found in parameter %s; legal range is %
class IllegalCharsException extends RequestError {
  IllegalCharsException(String cause) : super(cause);
}

/// Too many parameters sent for this endpoint.
/// Too many parameters; expected %s and received %s.
/// Duplicate values for a parameter detected.
class TooManyParametersException extends RequestError {
  TooManyParametersException(String cause) : super(cause);
}

/// A mandatory parameter was not sent, was empty/null, or malformed.
/// Mandatory parameter %s was not sent, was empty/null, or malformed.
/// Param %s or %s must be sent, but both were empty/null!
class MandatoryParameterEmptyOrMalformedException extends RequestError {
  MandatoryParameterEmptyOrMalformedException(String cause) : super(cause);
}

/// An unknown parameter was sent.
class UnknownParameterException extends RequestError {
  UnknownParameterException(String cause) : super(cause);
}

/// Not all sent parameters were read.
/// Not all sent parameters were read; read %s parameter(s) but was sent %s.
class UnreadParametersException extends RequestError {
  UnreadParametersException(String cause) : super(cause);
}

/// A parameter was empty.
/// Parameter %s was empty.
class EmptyParameterException extends RequestError {
  EmptyParameterException(String cause) : super(cause);
}

/// A parameter was sent when not required.
/// Parameter %s sent when not required.
class NotRequiredParameterException extends RequestError {
  NotRequiredParameterException(String cause) : super(cause);
}

/// Precision is over the maximum defined for this asset.
class BadPrecisionException extends RequestError {
  BadPrecisionException(String cause) : super(cause);
}

/// No orders on book for symbol.
class NoDepthException extends RequestError {
  NoDepthException(String cause) : super(cause);
}

/// TimeInForce parameter sent when not required.
class TimeInForceNotRequiredException extends RequestError {
  TimeInForceNotRequiredException(String cause) : super(cause);
}

/// Invalid timeInForce.
class TimeInForceInvalidException extends RequestError {
  TimeInForceInvalidException(String cause) : super(cause);
}

/// Invalid orderType.
class OrderTypeInvalidException extends RequestError {
  OrderTypeInvalidException(String cause) : super(cause);
}

/// Invalid side.
class InvalidSideException extends RequestError {
  InvalidSideException(String cause) : super(cause);
}

/// New client order ID was empty.
class NewClientOrderIdEmptyException extends RequestError {
  NewClientOrderIdEmptyException(String cause) : super(cause);
}

/// Original client order ID was empty.
class OriginalClientOrderIdEmptyException extends RequestError {
  OriginalClientOrderIdEmptyException(String cause) : super(cause);
}

/// Invalid interval.
class BadIntervalException extends RequestError {
  BadIntervalException(String cause) : super(cause);
}

/// An unknown error occurred while processing the request.
class BadSymbolException extends RequestError {
  BadSymbolException(String cause) : super(cause);
}

/// This listenKey does not exist.
class ListenKeyInvalidException extends RequestError {
  ListenKeyInvalidException(String cause) : super(cause);
}

/// Lookup interval is too big.
/// More than %s hours between startTime and endTime.
class MoreThanXXHoursException extends RequestError {
  MoreThanXXHoursException(String cause) : super(cause);
}

/// Combination of optional parameters invalid.
class BadComboOptionalParamsException extends RequestError {
  BadComboOptionalParamsException(String cause) : super(cause);
}

/// Invalid data sent for a parameter.
///  Data sent for paramter %s is not valid.
class InvalidParameterException extends RequestError {
  InvalidParameterException(String cause) : super(cause);
}

/// recvWindow must be less than 60000
class BadWindowRecvException extends RequestError {
  BadWindowRecvException(String cause) : super(cause);
}

/// NEW_ORDER_REJECTED
class NewOrderRejectedException extends RequestError {
  NewOrderRejectedException(String cause) : super(cause);
}

/// CANCEL_REJECTED
class CancelRejectedException extends RequestError {
  CancelRejectedException(String cause) : super(cause);
}

/// Order does not exist.
class NoSuchOrderException extends RequestError {
  NoSuchOrderException(String cause) : super(cause);
}

/// API-key format invalid.
class BadApiKeyFormatException extends RequestError {
  BadApiKeyFormatException(String cause) : super(cause);
}

/// Invalid API-key, IP, or permissions for action.
class MbxKeyRejectedException extends RequestError {
  MbxKeyRejectedException(String cause) : super(cause);
}

/// No trading window could be found for the symbol. Try ticker/24hrs instead.
class NoTradingWindowException extends RequestError {
  NoTradingWindowException(String cause) : super(cause);
}
