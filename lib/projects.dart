import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:ngbedesite/widgets/tool.dart';
import '../utils/my_projects.dart';
// ignore: avoid_web_libraries_in_flutter
//import 'dart:html' as html;

class Projects extends StatelessWidget {
  final bool normalLayout; // screen size
  const Projects({required this.normalLayout, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Projects\n\n",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 280,
            child: Swiper(
              autoplayDisableOnInteraction: true,
              itemCount: projectList.length,
              autoplay: true,
              autoplayDelay: 8000,
              curve: Curves.linear,
              control: const SwiperControl(
                  color: Color(0XFF93B5ED),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  )),
              itemBuilder: (context, index) {
                return SizedBox(
                  child: Card(
                    color: const Color(0XFFFFE79B),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 30,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                onPressed: (() {
                                  // html.window.open(
                                  //   projectList[index].url,
                                  //   projectList[index].title,
                                  // );
                                }),
                                icon: const Icon(Icons.link),
                              ),
                              Text(projectList[index].title),
                            ],
                          ),
                          Wrap(
                            spacing: 5,
                            runSpacing: 7,
                            children: projectList[index]
                                .topics
                                .map((e) => Tool(title: e))
                                .toList(),
                          ),
                          Text(
                            projectList[index].description,
                            style:
                                const TextStyle(wordSpacing: 1, fontSize: 16),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
