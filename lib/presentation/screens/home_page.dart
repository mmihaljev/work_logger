import 'package:flutter/material.dart';
import 'package:work_logger/presentation/screens/projects_body.dart';

import '../shared/bottom_nav_bar.dart';
import 'home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Scaffold(
        body: ProjectsBody(),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}