import 'dart:convert';

import 'package:binance_api/exception/binance_error.dart';
import 'package:http/http.dart';

class BinanceClient {
  final String url;
  final String timestamp;
  final String binaceApiKey;
  final String binaceApiSecret;
  final String? signature;

  static const binance_url = 'api.binance.com';
  static const binance_api_v3 = 'api/v3';

  BinanceClient(this.url, this.timestamp, this.binaceApiKey,
      this.binaceApiSecret, this.signature);

  BinanceClient.minimum(this.binaceApiKey, this.binaceApiSecret)
      : url = binance_url,
        timestamp = DateTime.now().millisecondsSinceEpoch.toString(),
        signature = null;

  Future<Response> getResponse(String endpoint,
      [Map<String, dynamic>? queryParameters]) {
    return get(Uri.https('${this.url}', BinanceClient.binance_api_v3 + endpoint,
        queryParameters));
  }

  Future<Response> getResponseWithHeaders(
      String endpoint, Map<String, String>? headers,
      [Map<String, dynamic>? queryParameters]) {
    return get(
        Uri.https('${this.url}', BinanceClient.binance_api_v3 + endpoint,
            queryParameters),
        headers: headers);
  }

  T getJSONData<T>(
      final Response response, T Function(Map<String, dynamic>) function) {
    if (response.statusCode == 200) {
      return function(jsonDecode(response.body));
    } else {
      throw BinanceError.fromJson(jsonDecode(response.body));
    }
  }

  List<T> getJSONDataAsList<T>(
      final Response response, T Function(dynamic) function) {
    if (response.statusCode == 200) {
      return (jsonDecode(response.body) as List<dynamic>)
          .map((i) => function(i))
          .toList();
    } else {
      throw BinanceError.fromJson(jsonDecode(response.body));
    }
  }
}
