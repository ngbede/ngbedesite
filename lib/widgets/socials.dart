import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter_svg/svg.dart';

class Socials extends StatelessWidget {
  final String url;
  final String title;
  final String path;
  const Socials({
    required this.url,
    required this.title,
    required this.path,
    Key? key,
  }) : super(key: key);

  @override
  GestureDetector build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        html.window.open(url, title);
      }),
      child: SvgPicture.asset(
        path,
        width: 35,
      ),
    );
  }
}
