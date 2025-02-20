import 'package:flutter/material.dart';
import 'package:gofoods/constants/utils.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void httpErrorHandle(
    {required http.Response response,
    required BuildContext context,
    required VoidCallback onSuccess}) {
  switch (response.statusCode) {
    case 200:
      onSuccess();
      break;
    case 400:
      showSnackBar(jsonDecode(response.body)['message']);
      break;
    case 500:
      showSnackBar(jsonDecode(response.body)['error']);
      break;
    default:
      showSnackBar(response.body);
  }
}
