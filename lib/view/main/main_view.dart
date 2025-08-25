import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/controller.dart';
import 'package:flutter_portfolio/view/main/components/drawer/drawer.dart';
import 'package:flutter_portfolio/view/main/components/drawer/drawer2.dart';
import 'package:flutter_portfolio/view/main/components/navigation_bar.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class MainView extends StatelessWidget {
  const MainView({super.key, required this.pages});
  final List<Widget> pages;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: CustomDrawer2(controller: controller),
      endDrawer: const CustomDrawer(),
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
                controller: controller,
                scrollDirection: Axis.vertical,
                children: [...pages],
              ),
            )
          ],
        ),
      ),
    );
  }
}
