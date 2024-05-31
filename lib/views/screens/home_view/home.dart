import 'package:flutter/material.dart';
import 'package:portfolio/views/screens/home_view/widgets/home_welcome_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        HomeWelcomeView(),
      ],
    );
  }
}
