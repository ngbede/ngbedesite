import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final String title;
  final Color? color;
  final void Function()? function;
  const NavButton({
    required this.title,
    required this.function,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Padding build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextButton(
        style: TextButton.styleFrom(
          elevation: 0,
          primary: Colors.transparent,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
        ),
        onPressed: function,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            color: color ?? const Color(0XFF93B5ED),
          ),
        ),
      ),
    );
  }
}
