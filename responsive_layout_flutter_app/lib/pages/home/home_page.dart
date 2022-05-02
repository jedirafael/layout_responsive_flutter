import 'package:flutter/material.dart';
import 'package:responsive_layout_flutter_app/breakpoints.dart';
import 'package:responsive_layout_flutter_app/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:responsive_layout_flutter_app/pages/home/widgets/app_bar/web_app_bar.dart';
import 'package:responsive_layout_flutter_app/pages/home/widgets/sections/advantages_sections.dart';
import 'package:responsive_layout_flutter_app/pages/home/widgets/sections/courses_sections.dart';
import 'package:responsive_layout_flutter_app/pages/home/widgets/sections/top_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: constraints.maxWidth < mobileBreakPoint
            ? PreferredSize(
                child: MobileAppBar(), preferredSize: Size(double.infinity, 56))
            : PreferredSize(
                child: WebAppBar(), preferredSize: Size(double.infinity, 56)),
        drawer:  constraints.maxWidth < mobileBreakPoint ?  Drawer() : null,
        body: Align(
          alignment: Alignment.center,
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1400),
            child: ListView(
              children: [
                TopSection(),
                AdvantagesSections(),
                CoursesSections(),

              ],
            ),
          ),
        ),
      );
    });
  }
}
