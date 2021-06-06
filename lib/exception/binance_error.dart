import 'package:binance_api/exception/blvt_error.dart';
import 'package:binance_api/exception/filter_error.dart';
import 'package:binance_api/exception/futures_cross_collateral_error.dart';
import 'package:binance_api/exception/futures_error.dart';
import 'package:binance_api/exception/general_network_error.dart';
import 'package:binance_api/exception/request_error.dart';
import 'package:binance_api/exception/savings_error.dart';
import 'package:binance_api/exception/subaccount_api_error.dart';

abstract class BinanceError implements Exception {
  final String cause;

  BinanceError(this.cause);

  factory BinanceError.fromJson(Map<String, dynamic> json) {
    final int code = (json['code'] as int).abs();
    final String msg = json['msg'] as String;

    if (code >= -1000 && code < 1100) {
      return GeneralNetworkError.fromJson(code, msg);
    } else if (code >= 1100 && code < 3000) {
      return RequestError.fromJson(code, msg);
    } else if (code >= 3000 && code < 6000) {
      return SubAccountApiError.fromJson(code, msg);
    } else if (code >= 6000 && code < 7000) {
      return SavingsError.fromJson(code, msg);
    } else if (code >= 7000 && code < 7100) {
      return FuturesError.fromJson(code, msg);
    } else if (code >= 9000 && code < 10000) {
      return FilterError.fromJson(code, msg);
    } else if (code >= 10000 && code < 11000) {
      return FuturesCrossCollateralError.fromJson(code, msg);
    } else if (code >= 13000 && code < 14000) {
      return BlvtError.fromJson(code, msg);
    } else {
      throw Exception('Not mapped exception. Cause: $msg');
    }
  }

  @override
  String toString() {
    final String type = this.runtimeType.toString();
    return '$type: $cause';
  }
}
