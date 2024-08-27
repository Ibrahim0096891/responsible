import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rsa/presentation/widght/_deshboard_card.dart';
import 'package:rsa/presentation/widght/responsibe_builder.dart';

import '../widght/nav_menu.dart';
import '../widght/responsibe_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsibeBuilder(
      mobile: _buildMobileLayout(),
      tablet: _buildTabletLayout(),
      desktop: _buildDesktopLayout(),
    );
  }

  Widget _buildMobileLayout() {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.pink,
      ),
      drawer: const NavMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _getSummerySection(crossAxisCount: 1, ratio: 2.4),
          ],
        ),
      ),
    );
  }

  Widget _buildTabletLayout() {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.pink,
      ),
      drawer: const NavMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _getSummerySection(crossAxisCount: 2, ratio: 2),
          ],
        ),
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return Scaffold(
      body: Row(
        children: [
          const NavMenu(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _getSummerySection(crossAxisCount: 3, ratio: 1.2),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getSummerySection({required int crossAxisCount, required double ratio}) {
    return GridView(
      shrinkWrap: true,
      primary: false,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
        // childAspectRatio: ratio,
        mainAxisExtent: 180
      ),
      children: [
        DashboardCard(),
        DashboardCard(),
        DashboardCard(),
        DashboardCard(),
      ],
    );
  }
}
