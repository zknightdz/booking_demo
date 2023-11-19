import 'package:booking_demo/presentations/screens/dashboard/ui/widgets/dashboard_pages.dart';
import 'package:booking_demo/presentations/screens/dashboard/ui/widgets/navigation/navigation_bar.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  DateTime? currentBackPressTime;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const DashBoardNavigationBar(),
      body: DashBoardPages(),
    );
  }
}
