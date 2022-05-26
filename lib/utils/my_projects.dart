// A List of my portfolio projects
import '../models/project.dart';

final List<Project> projectList = [
  Project(
    title: "Hoop",
    url: "https://github.com/ngbede/hoop",
    topics: ["Flutter", "Dart", "APIs"],
    description:
        "An NBA sporting app that provides users with info on the latest conference standings, upcoming games, team & player info, etc...",
  ),
  Project(
    title: "Poultry",
    url: "https://github.com/ngbede/poultry",
    topics: ["Flutter", "Dart", "Firebase", "Farm management"],
    description:
        "I built a poultry farm management software as part of my final year project. It provides basic features such as stock inventory management, an ordering module, basic farm metrics",
  ),
  Project(
    title: "Shelf Life UI clone",
    url: "https://github.com/ngbede/shelflife",
    topics: ["Flutter", "Riverpod", "Null safety", "Clean architecture"],
    description:
        "A UI clone of the retail pharmacy PWA called Shelf Life. I was able to implement all the relevant screens using the latest flutter standards",
  ),
  Project(
    title: "Quizler",
    url: "https://github.com/ngbede/quizler",
    topics: ["REST APIs", "Node", "Express", "MongoDB"],
    description:
        "A quiz taking application that allows any registered user to upload a quiz and then share the quiz code to any user to begin answering questions and receiving results in minutes",
  ),
];
