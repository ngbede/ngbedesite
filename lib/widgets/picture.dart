import 'package:flutter/material.dart';

class Picture extends StatelessWidget {
  const Picture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: const Color(0XFFF6F7F8),
      radius: 200,
      child: SizedBox(
        height: 240,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), border: Border.all()),
          // borderRadius:
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              "assets/image0.jpeg",
            ),
          ),
        ),
      ),
    );
  }
}
