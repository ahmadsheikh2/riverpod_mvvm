import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:riverpod_mvvm/export.dart';

class NetworkHelperImpl extends NetworkHelper {
  NetworkHelperImpl(this.storage);

  final Storage storage;

  @override
  Future<http.Response> get(String url, {Map? headers}) async {
    final header = await appendHeader(
      url,
      headers: headers,
    );
    return http.get(Uri.parse(url), headers: header).then((
      http.Response response,
    ) async {
      return handleResponse(response);
    }).catchError((error) {
      throw (error);
    });
  }

  @override
  Future<http.Response> post(String url, {Map? headers, body, encoding}) async {
    final header = await appendHeader(url, headers: headers);
    return http
        .post(Uri.parse(url),
            body: json.encode(body), headers: header, encoding: encoding)
        .then((http.Response response) {
      return handleResponse(response);
    }).catchError((error) {
      throw (error);
    });
  }

  @override
  Future<http.Response> delete(String url, {Map? headers}) async {
    final header = await appendHeader(url, headers: headers);
    return http
        .delete(Uri.parse(url), headers: header)
        .then((http.Response response) {
      return handleResponse(response);
    }).catchError((error) {
      throw (error);
    });
  }

  @override
  Future<http.Response> put(String url, {Map? headers, body, encoding}) async {
    final header = await appendHeader(url, headers: headers);

    return http
        .put(Uri.parse(url),
            body: json.encode(body), headers: header, encoding: encoding)
        .then(
      (http.Response response) {
        return handleResponse(response);
      },
    ).catchError((error) {
      throw (error);
    });
  }

  @override
  Future<http.Response> patch(String url,
      {Map? headers, body, encoding}) async {
    final header = await appendHeader(url, headers: headers);

    return http
        .patch(Uri.parse(url),
            body: json.encode(body), headers: header, encoding: encoding)
        .then(
      (http.Response response) {
        return handleResponse(response);
      },
    ).catchError((error) {
      throw (error);
    });
  }

  @override
  http.Response handleResponse(http.Response response) {
    return response;
  }

  @override
  Future<Map<String, String>> appendHeader(
    String url, {
    Map? headers,
    bool refresh = false,
  }) async {
    headers ??= <String, String>{};
    headers["Content-Type"] = "application/json";
    final String token = storage.getString(StorageKeys().token).toString();
    // if (!(url.contains('/signup') ||
    //     url.contains('/login') ||
    //     url.contains('forgot-password') ||
    //     url.contains('google') ||
    //     url.contains('reset-password'))) {
       headers["Authorization"] = 'Bearer $token';
    // }

    return headers as Map<String, String>;
  }
}
