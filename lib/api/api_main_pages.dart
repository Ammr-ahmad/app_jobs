import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'api_key_main.dart';

class CallApiServices {
  static String baseUrl = '${ApiKey.baseApi}';
  Future<dynamic> serviceCall(
      {required String url,
      required String methodType,
      dynamic body,
      dynamic headers,
      bool returnfailureData = false}) async {
    String urlParamas = "";

    print("$baseUrl/$url$urlParamas");
    var response;
    try {
      switch (methodType) {
        case "get":
          {
            response = await http
                .get(Uri.parse("$baseUrl/$url"), headers: headers)
                .timeout(
              const Duration(seconds: 60),
              onTimeout: () {
                throw Exception('Mo Exception');
              },
            );
          }
          break;
        case "post":
          {
            response = await http
                .post(Uri.parse("$baseUrl/$url$urlParamas"),
                    body: body, headers: headers)
                .timeout(
              const Duration(seconds: 30),
              onTimeout: () {
                throw Exception('Mo Exception');
              },
            );
            print(response.statusCode.toString());
          }
          break;
        case "delete":
          {
            response = await http
                .delete(Uri.parse("$baseUrl/$url$urlParamas"),
                    headers: headers, body: body)
                .timeout(
              const Duration(seconds: 30),
              onTimeout: () {
                throw Exception('Mo Exception');
              },
            );
            print(response.statusCode.toString());
          }
          break;
        default:
      }
      print(response.statusCode);
      if (response.statusCode == 200 || response.statusCode == 201) {
        var data = json.decode(response.body);
        print(json.decode(response.body));
        return data;
      } else if (response.statusCode == 400) {
        print(json.decode(response.body));
        if (returnfailureData) {
          var data = json.decode(response.body);
          return data;
        }
        return "wrong data";
      } else if (response.statusCode == 401) {
        print("un auth");
      } else {
        print("bad request ${response.statusCode} at $url/$urlParamas");
        return null;
      }
    } catch (e) {
      if (e is SocketException) {
        print("Socket exception: ${e.toString()}");
      } else if (e is TimeoutException) {
        print("Timeout exception: ${e.toString()}");
      } else
        print("Unhandled exception: ${e.toString()}");
    }
  }
}

CallApiServices serviceCall = CallApiServices();
