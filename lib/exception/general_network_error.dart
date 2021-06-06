import 'package:binance_api/exception/binance_error.dart';

abstract class GeneralNetworkError extends BinanceError {
  GeneralNetworkError(String msg) : super(msg);

  factory GeneralNetworkError.fromJson(int code, String msg) {
    switch (code) {
      case 1000:
        return UnknownException(msg);
      case 1001:
        return DisconnectedException(msg);
      case 1002:
        return UnauthorizedException(msg);
      case 1003:
        return TooManyRequestsException(msg);
      case 1004:
        return ServerBusyException(msg);
      case 1006:
        return UnexpectedResponseException(msg);
      case 1007:
        return TimeoutException(msg);
      case 1014:
        return UnknownOrderCompositionException(msg);
      case 1015:
        return TooManyOrdersException(msg);
      case 1016:
        return ServiceShuttingDownException(msg);
      case 1020:
        return UnsupportedOperationException(msg);
      case 1021:
        return InvalidTimestampException(msg);
      case 1022:
        return InvalidSignatureException(msg);
      case 1099:
        return NotFoundAuthenticatedOrAuthorizedException(msg);
      default:
        throw Exception(
            'Not mapped General Server or Network exception. Cause: $msg');
    }
  }
}

/// An unknown error occurred while processing the request.
/// An unknown error occurred while processing the request.[%s]
class UnknownException extends GeneralNetworkError {
  UnknownException(String cause) : super(cause);
}

/// Internal error; unable to process your request. Please try again.
class DisconnectedException extends GeneralNetworkError {
  DisconnectedException(String cause) : super(cause);
}

/// You are not authorized to execute this request.
class UnauthorizedException extends GeneralNetworkError {
  UnauthorizedException(String cause) : super(cause);
}

/// Too many requests queued.
/// Too much request weight used; please use the websocket for live updates to avoid polling the API.
/// Too much request weight used; current limit is %s request weight per %s %s. Please use the websocket for live updates to avoid polling the API.
/// Way too much request weight used; IP banned until %s. Please use the websocket for live updates to avoid bans.
class TooManyRequestsException extends GeneralNetworkError {
  TooManyRequestsException(String cause) : super(cause);
}

/// Server is busy, please wait and try again
class ServerBusyException extends GeneralNetworkError {
  ServerBusyException(String cause) : super(cause);
}

/// An unexpected response was received from the message bus. Execution status unknown.
class UnexpectedResponseException extends GeneralNetworkError {
  UnexpectedResponseException(String cause) : super(cause);
}

/// Timeout waiting for response from backend server. Send status unknown; execution status unknown.
class TimeoutException extends GeneralNetworkError {
  TimeoutException(String cause) : super(cause);
}

/// Unsupported order combination.
class UnknownOrderCompositionException extends GeneralNetworkError {
  UnknownOrderCompositionException(String cause) : super(cause);
}

/// Too many new orders.
/// Too many new orders; current limit is %s orders per %s.
class TooManyOrdersException extends GeneralNetworkError {
  TooManyOrdersException(String cause) : super(cause);
}

/// This service is no longer available.
class ServiceShuttingDownException extends GeneralNetworkError {
  ServiceShuttingDownException(String cause) : super(cause);
}

/// This operation is not supported.
class UnsupportedOperationException extends GeneralNetworkError {
  UnsupportedOperationException(String cause) : super(cause);
}

/// Timestamp for this request is outside of the recvWindow.
/// Timestamp for this request was 1000ms ahead of the server's time.
class InvalidTimestampException extends GeneralNetworkError {
  InvalidTimestampException(String cause) : super(cause);
}

/// Signature for this request is not valid.
class InvalidSignatureException extends GeneralNetworkError {
  InvalidSignatureException(String cause) : super(cause);
}

/// This replaces error code -1999
class NotFoundAuthenticatedOrAuthorizedException extends GeneralNetworkError {
  NotFoundAuthenticatedOrAuthorizedException(String cause) : super(cause);
}
