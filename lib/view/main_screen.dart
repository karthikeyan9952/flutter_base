import 'package:flutter/material.dart';
import 'package:flutter_base/common/widgets/bottom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required this.child});
  final Widget child;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My App")),
      bottomNavigationBar: const BottomNavBar(),
      body: widget.child,
    );
  }
}
