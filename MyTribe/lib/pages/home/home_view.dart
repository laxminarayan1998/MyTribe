import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: Container(
            child: const Center(
              child: Text('home'),
            ),
          ),
        ),
      );
}
