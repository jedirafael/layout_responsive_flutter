import 'package:flutter/material.dart';
import 'package:responsive_layout_flutter_app/breakpoints.dart';
import 'package:responsive_layout_flutter_app/pages/home/widgets/course_item.dart';

class CoursesSections extends StatelessWidget {
  const CoursesSections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GridView.builder(
          itemCount: 20,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1
          ),
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: constraints.maxWidth >= tabletBreakPoint ? 0 : 16),
          itemBuilder: (context, index) {
            return CourseItem();
          },
        );
      },
    );
  }
}
