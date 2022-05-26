import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final void Function() function;
  final bool spin;
  const AppButton({
    required this.function,
    this.spin = false,
    Key? key,
  }) : super(key: key);

  @override
  ElevatedButton build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        maximumSize: const Size(150, 60),
        primary: const Color(0XFF93B5ED),
        padding: const EdgeInsets.all(10),
      ),
      onPressed: function,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          spin
              ? const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: CircularProgressIndicator(
                    color: Colors.lightBlue,
                  ),
                )
              : Container(),
          const Text(
            "SUBMIT",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 0.8,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
