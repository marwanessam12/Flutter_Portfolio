import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/controller.dart';
import 'package:flutter_portfolio/view/main/components/drawer/drawer2.dart';
import 'package:flutter_portfolio/view/main/components/navigation_bar.dart';

class MainView extends StatelessWidget {
  const MainView({super.key, required this.pages});
  final List<Widget> pages;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer2(controller: controller),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
              child: TopNavigationBar(),
            ),
            Expanded(
              flex: 9,
              child: PageView(
                scrollDirection: Axis.vertical,
                // physics: const NeverScrollableScrollPhysics(),
                controller: controller,
                children: [...pages],
              ),
            )
          ],
        ),
      ),
    );
  }
}
