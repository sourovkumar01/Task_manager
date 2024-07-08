import 'package:flutter/material.dart';
import 'package:task_manager/pressentation/utlis/apps_colors.dart';
import 'package:task_manager/pressentation/widgets/background_widget.dart';
import 'package:task_manager/pressentation/widgets/profil_bar.dart';
import 'package:task_manager/pressentation/widgets/task_card.dart';

import '../widgets/task_counter_card.dart';

class ProgressTaskScreen extends StatefulWidget {
  const ProgressTaskScreen({super.key});

  @override
  State<ProgressTaskScreen> createState() => _ProgressTaskScreenState();
}

class _ProgressTaskScreenState extends State<ProgressTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppBar,
      body: BackgroundWidget(
          child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const TaskCard();
        },
      )),
    );
  }
}
