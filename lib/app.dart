import 'package:flutter/material.dart';
import 'package:task_manager/pressentation/screens/auth/splsh_screen.dart';
import 'package:task_manager/pressentation/utlis/apps_colors.dart';

class TaskManager extends StatefulWidget {
  const TaskManager({super.key});
  static GlobalKey <NavigatorState>navigatorkey = GlobalKey<NavigatorState>();

  @override
  State<TaskManager> createState() => _TaskManagerState();
}

class _TaskManagerState extends State<TaskManager> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey:TaskManager.navigatorkey ,
      debugShowCheckedModeBanner: false,
      title: 'Task manager',
      home: const SplashScreen(),
      theme: ThemeData(
          inputDecorationTheme: const InputDecorationTheme(
              fillColor: Colors.white,
              filled: true,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              )),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              backgroundColor: AppsColors.themC0lor,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            ),
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
                foregroundColor: AppsColors.themC0lor,
                textStyle:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
          ),
          textTheme: const TextTheme(
            titleLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),


          ),
          chipTheme: ChipThemeData(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)))),
    );
  }
}
