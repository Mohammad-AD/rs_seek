import 'package:flutter/material.dart';
import 'package:rs_seek/rs_seek.dart';

class ResponsiveNavigation extends StatelessWidget {
  const ResponsiveNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return rsWhen(
      context: context,
      xs: _buildBottomNavigation(context),
      sm: _buildBottomNavigation(context),
      md: _buildDrawerNavigation(context),
      lg: _buildRailNavigation(context),
      xl: _buildRailNavigation(context),
    );
  }

  Widget _buildBottomNavigation(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    );
  }

  Widget _buildDrawerNavigation(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(top: context.safeTop + RsSpacing.md),
        children: [
          ListTile(leading: Icon(Icons.home), title: Text('Home')),
          ListTile(leading: Icon(Icons.search), title: Text('Search')),
          ListTile(leading: Icon(Icons.person), title: Text('Profile')),
        ],
      ),
    );
  }

  Widget _buildRailNavigation(BuildContext context) {
    return NavigationRail(
      destinations: const [
        NavigationRailDestination(icon: Icon(Icons.home), label: Text('Home')),
        NavigationRailDestination(
          icon: Icon(Icons.search),
          label: Text('Search'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.person),
          label: Text('Profile'),
        ),
      ],
      selectedIndex: 0,
    );
  }
}
