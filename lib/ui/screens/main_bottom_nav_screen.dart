import 'package:flutter/material.dart';
import 'package:task_manager_app/ui/screens/new_task_list_screen.dart';
import 'package:task_manager_app/ui/utils/assets_path.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {

  int _selectedIndex = 0;

  final List<Widget> _screens = [
    NewTaskListScreen(),
    NewTaskListScreen(),
    NewTaskListScreen(),
    NewTaskListScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
          indicatorColor: Colors.green,
          onDestinationSelected: (int index) {
              _selectedIndex = index;
              setState(() {});
          },
          destinations: const [
            NavigationDestination(icon: Icon(Icons.new_label_outlined), label: 'New'),
            NavigationDestination(icon: Icon(Icons.refresh), label: 'Progress'),
            NavigationDestination(icon: Icon(Icons.done), label: 'Completed'),
            NavigationDestination(icon: Icon(Icons.cancel_outlined), label: 'Cancelled'),
          ],
      ),
    );
  }
}
