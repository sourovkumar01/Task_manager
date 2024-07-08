import 'package:flutter/material.dart';
import 'package:task_manager/app.dart';
import 'package:task_manager/pressentation/screens/auth/sign_in_screen.dart';
import 'package:task_manager/pressentation/utlis/apps_colors.dart';

PreferredSizeWidget get profileAppBar {
  return AppBar(
    backgroundColor: AppsColors.themC0lor,
    title: Row(
      children: [
        const CircleAvatar(),
        const SizedBox(
          width: 8,
        ),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sourov kumar',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text('sourovkumarshisir@gmail.com',
                  style: TextStyle(fontSize: 12, color: Colors.white))
            ],
          ),
        ),
        IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  TaskManager.navigatorkey.currentState!.context,
                  MaterialPageRoute(builder: (context) => const SignInScreen()),
                  (route) => false);
            },
            icon: const Icon(Icons.exit_to_app))
      ],
    ),
  );
}
