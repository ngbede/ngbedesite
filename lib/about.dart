import 'package:flutter/material.dart';
import 'package:ngbedesite/utils/inspiration.dart';
import 'package:ngbedesite/widgets/picture.dart';
import 'utils/icons.dart';
import 'widgets/socials.dart';

// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class AboutMe extends StatelessWidget {
  final bool normalLayout; // screen size
  const AboutMe({required this.normalLayout, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            normalLayout
                ? const Center(
                    child: Picture(),
                  )
                : Container(),
            const Text(
              "Hello",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "I'm Emmanuel",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Mobile Engineer | Backend Dev\n",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            // const SizedBox(height: 10),
            normalLayout
                ? const Text(
                    intro,
                    style: TextStyle(fontSize: 17),
                    textAlign: TextAlign.justify,
                  )
                : Row(
                    children: const [
                      Expanded(
                        flex: 2,
                        child: Text(
                          intro,
                          style: TextStyle(fontSize: 17),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Expanded(
                        child: Picture(),
                      )
                    ],
                  ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Socials(
                    url: profiles["github"]![1],
                    title: "github profile",
                    path: profiles["github"]![0],
                  ),
                  const SizedBox(width: 15),
                  Socials(
                    url: profiles["linkedin"]![1],
                    title: "linkedin profile",
                    path: profiles["linkedin"]![0],
                  ),
                  const SizedBox(width: 15),
                  Socials(
                    url: profiles["twitter"]![1],
                    title: "twitter profile",
                    path: profiles["twitter"]![0],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: const Color(0XFF93B5ED),
                  fixedSize: const Size(210, 50),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(),
                    borderRadius: BorderRadius.circular(30),
                  )),
              onPressed: () {
                html.window.open(profiles["cv"]![0], "cv");
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.download),
                    Text(
                      "DOWNLOAD MY CV",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
