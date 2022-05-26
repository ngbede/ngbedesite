import 'package:flutter/material.dart';

class Tool extends StatelessWidget {
  final String title;
  const Tool({required this.title, Key? key}) : super(key: key);

  @override
  Container build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 5,
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0XFF444444),
        ),
      ),
    );
  }
}
