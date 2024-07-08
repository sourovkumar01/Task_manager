import 'package:flutter/material.dart';
import 'package:task_manager/pressentation/screens/cancel_task_screen.dart';
import 'package:task_manager/pressentation/screens/complete_task_screen.dart';
import 'package:task_manager/pressentation/screens/new_task_screen.dart';
import 'package:task_manager/pressentation/screens/progress_task_screen.dart';
import 'package:task_manager/pressentation/utlis/apps_colors.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _cuorrentIndex = 0;
  final List<Widget> _screen = [
    const NewTaskScreen(),
    const CompleteTaskScreen(),
    const ProgressTaskScreen(),
    const CancelTaskScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_cuorrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _cuorrentIndex,
        selectedItemColor: AppsColors.themC0lor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (index) {
          _cuorrentIndex = index;
          if (mounted) {
            setState(() {});
          }
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.file_copy_outlined), label: 'New Task'),
          BottomNavigationBarItem(
              icon: Icon(Icons.done_all), label: 'Completed'),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Progress'),
          BottomNavigationBarItem(
              icon: Icon(Icons.close_rounded), label: 'Cancel'),
        ],
      ),
    );
  }
}
