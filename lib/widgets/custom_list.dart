import 'package:flutter/material.dart';

class CustomList extends StatelessWidget {
  final String title;
  const CustomList({required this.title, Key? key}) : super(key: key);

  @override
  Padding build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: RichText(
        text: TextSpan(
          text: "\u2022 ",
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0XFFF87171),
          ),
          children: [
            TextSpan(
              text: title,
              style: const TextStyle(
                fontSize: 23,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
