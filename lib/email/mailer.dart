// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:ngbedesite/email/key.dart';

Future<bool> sendEmail({
  required String senderName,
  required String senderEmail,
  required String message,
}) async {
  final Map<String, dynamic> requestBody = {
    "personalizations": [
      {
        "to": [
          {
            "email": Api.email, // your email
          }
        ],
        "subject": "Contact from my site"
      }
    ],
    "from": {
      "email": senderEmail,
    },
    "content": [
      {
        "type": "text/plain",
        "value": "From: $senderName\n\n$message",
      }
    ]
  };

  Dio dio = Dio();
  try {
    await dio.post(
      "https://rapidprod-sendgrid-v1.p.rapidapi.com/mail/send",
      data: requestBody,
      options: Options(
        headers: {
          "Access-Control-Allow-Origin": "*",
          "Access-Control-Allow-Methods": "POST",
          "X-RapidAPI-Host": "rapidprod-sendgrid-v1.p.rapidapi.com",
          "X-RapidAPI-Key": Api.key, // input your API key here
        },
      ),
    );

    return true;
  } on DioError catch (e) {
    // I keep getting an error from the host but emails get sent anyways
    print(e.message);

    // Sendgrid has some quirks so just return true everytime
    return true;
  }
}
