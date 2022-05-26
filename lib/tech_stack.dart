import 'package:flutter/material.dart';
import 'package:ngbedesite/widgets/skill.dart';

class TechStack extends StatelessWidget {
  const TechStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      color: const Color(0XFFF6FAFF), // #F6FAFF
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 50,
          horizontal: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Tech Stack",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            const Text(
              "App Dev\n\n",
              style: TextStyle(
                //fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            Wrap(
              alignment: WrapAlignment.center,
              //  runAlignment: WrapAlignment.spaceEvenly,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: const [
                Skill(title: "Flutter"),
                Skill(title: "Dart"),
                Skill(title: "Riverpod"),
                Skill(title: "Provider"),
              ],
            ),
            const SizedBox(height: 40),
            const Text(
              "Backend\n\n",
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            Wrap(
              alignment: WrapAlignment.center,
              children: const [
                Skill(title: "Node.js"),
                Skill(title: "Express"),
                Skill(title: "Firebase"),
                Skill(title: "MongoDB"),
                Skill(title: "MySQL"),
                Skill(title: "Heroku"),
                Skill(title: "CircleCI"),
                Skill(title: "DigitalOcean"),
              ],
            ),
            const SizedBox(height: 40),
            const Text(
              "Dev Tools\n\n",
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            Wrap(
              alignment: WrapAlignment.center,
              children: const [
                Skill(title: "Postman"),
                Skill(title: "VsCode"),
                Skill(title: "Git"),
                Skill(title: "PGAdmin")
              ],
            )
          ],
        ),
      ),
    );
  }
}
