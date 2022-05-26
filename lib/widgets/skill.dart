import 'package:flutter/material.dart';

class Skill extends StatelessWidget {
  final String title;
  const Skill({required this.title, Key? key}) : super(key: key);

  @override
  Card build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10, right: 10),
      shadowColor: Colors.grey,
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Text(
          title,
          style: const TextStyle(
            color: Color(0XFF444444),
            fontSize: 15,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}
