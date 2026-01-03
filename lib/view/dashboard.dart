import 'package:flutter/material.dart';
import 'package:ownback/components/home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(controller: _controller, children: [
        Home(),
        Center(child: Text('Settings Page')),
      ]),
      bottomNavigationBar: TabBar(
        tabs: const [
          Tab(icon: Icon(Icons.home_outlined), text: 'Home'),
          Tab(icon: Icon(Icons.person_outline), text: 'Profile'),
        ],
        controller: _controller,
      ),
    );
  }
}
