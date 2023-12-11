import 'package:custom_paint_playground/line_painter_screen.dart';
import 'package:custom_paint_playground/rect_painter.dart';
import 'package:custom_paint_playground/rounded_rect.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  late PageController pageController;

  List<Widget> screens = [
    const LinePainterScreen(),
    const RRectPainterScreen(),
    const RRectPainterScreen(),
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: switch (currentIndex) {
          1 => Text("Rectangle painter"),
          2 => Text("RRect painter"),
          _ => Text("Line painter"),
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: PageView(
              physics: const BouncingScrollPhysics(),
              controller: pageController,
              children: screens,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...screens.map(
                (screen) => AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  margin: const EdgeInsets.all(5),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      color: screens[currentIndex] == screen
                          ? Colors.grey
                          : Colors.grey[800],
                      shape: BoxShape.circle),
                ),
              )
            ],
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
