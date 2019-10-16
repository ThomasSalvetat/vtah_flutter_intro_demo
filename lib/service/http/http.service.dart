import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:quiver/core.dart';
import 'package:vtah_flutter_intro_demo/model/error.model.dart';
import 'package:vtah_flutter_intro_demo/service/http/http.model.dart';

class HttpService {
  static const _TIMEOUT = Duration(seconds: 10);

  static HttpError _handleError(int statusCode) {
    switch (statusCode) {
      case 401:
        return HttpError.UNAUTHORIZED;
      case 404:
        return HttpError.NOT_FOUND;
      case 422:
        return HttpError.UNPROCESSABLE;
      default:
        return HttpError.UNKNOWN;
    }
  }

  static Future<T> _handleResponse<S, T>(
      BaseResponse response, Optional<ComputeCallback<S, T>> callback) async {
    if (response.statusCode == 200) {
      if (response is Response) {
        try {
          var body = json.decode(utf8.decode(response.bodyBytes));
          return callback.isPresent
              ? compute(callback.value, body as S)
              : body as T;
        } catch (e) {
          throw LogicalException.just(HttpError.PARSING);
        }
      } else {
        return null;
      }
    } else if (response.statusCode == 204) {
      return null;
    } else {
      throw LogicalException.just(_handleError(response.statusCode));
    }
  }

  static Future<T> fetch<S, T>(
      {@required final String url,
      @required ComputeCallback<S, T> deserializer}) async {
    var response = await http.get(url).timeout(_TIMEOUT);
    return _handleResponse(response, Optional.of(deserializer));
  }
}
