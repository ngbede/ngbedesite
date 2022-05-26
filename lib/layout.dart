// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:ngbedesite/about.dart';
import 'package:ngbedesite/contact_me.dart';
import 'package:ngbedesite/projects.dart';
import 'package:ngbedesite/tech_stack.dart';
import 'package:ngbedesite/widgets/nav_button.dart';

class Layout extends StatefulWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  State<Layout> createState() => _LayoutState();
}

final ScrollController _scrollController = ScrollController();
int _view = 0;
double? _maxLength;

class _LayoutState extends State<Layout> {
  void scrollTo(double position, int index) {
    _scrollController.position.animateTo(
      position,
      duration: const Duration(seconds: 1),
      curve: Curves.linear,
    );
    setState(() {
      _view = index;
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

// 1756= linux
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFF6F7F8),
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(left: 33),
          child: Text(
            "NGBEDE",
            style: TextStyle(
              fontFamily: "Koulen",
              color: Colors.black,
              fontSize: 20,
              letterSpacing: 1,
            ),
          ),
        ),
        actions: [
          NavButton(
            title: "About me",
            function: () => scrollTo(0, 0),
            color: _view == 0 ? null : Colors.grey,
          ),
          NavButton(
            title: "Tech stack",
            function: () => scrollTo(650, 1),
            color: _view == 1 ? null : Colors.grey,
          ),
          NavButton(
            title: "Portfolio",
            function: () => scrollTo(1000, 2),
            color: _view == 2 ? null : Colors.grey,
          ),
          NavButton(
            title: "Contact me",
            function: () => scrollTo(1259, 3),
            color: _view == 3 ? null : Colors.grey,
          )
        ],
      ),
      // rebuilds anytime the layout around it changes
      body: LayoutBuilder(builder: (context, constraints) {
        bool normalLayout;
        // if widthe is greater than 500 we have a wide screen else smaller screen
        if (constraints.maxWidth >= 600) {
          normalLayout = false;
        } else {
          normalLayout = true;
        }
        print("normal layout: $normalLayout\n${constraints.maxWidth}");

        return NotificationListener(
          onNotification: (UserScrollNotification notification) {
            double position = notification.metrics.extentBefore;
            _maxLength = notification.metrics.maxScrollExtent;

            if (position < 650) {
              setState(() {
                _view = 0;
              });
            } else if (position >= 650 && position <= 1259) {
              setState(() {
                _view = 1;
              });
            } else {
              setState(() {
                _view = 2;
              });
            }
            return true;
          },
          child: Scrollbar(
            controller: _scrollController,
            thumbVisibility: true,
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  AboutMe(normalLayout: normalLayout),
                  const TechStack(),
                  Projects(normalLayout: normalLayout),
                  const ContactMe(),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
