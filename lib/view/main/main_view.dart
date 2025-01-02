import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

import '../../const.dart';
import '../../widget/responsive.dart';
import '../intro/introduction.dart';
import '../projects/project_view.dart';
import '../work_experience/work_experience_view.dart';
import 'components/drawer/about.dart';
import 'components/drawer/drawer.dart';
import 'components/navigation_bar.dart';

class MainView extends StatelessWidget {
  final String selectedPage;

  MainView({super.key, required this.selectedPage});

  final Map<String, Widget> pages = {
    'Home': Center(child: const Introduction()),
    'Projects': Center(child: ProjectsView()),
    'Experience': Center(child: WorkExperienceScreen()),
    'About': Center(child: About()),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: Center(
        child: Column(
          children: [
            kIsWeb && !Responsive.isLargeMobile(context)
                ? SizedBox(
                    height: defaultPadding * 2,
                  )
                : SizedBox(
                    height: defaultPadding / 2,
                  ),
            const SizedBox(
              height: 80,
              child: TopNavigationBar(),
            ),
            Expanded(
              child:
                  pages[selectedPage] ?? Center(child: Text('Page Not Found')),
            ),
          ],
        ),
      ),
    );
  }
}
