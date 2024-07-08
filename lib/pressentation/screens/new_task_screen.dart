import 'package:flutter/material.dart';
import 'package:task_manager/pressentation/screens/add_task_new_screen.dart';
import 'package:task_manager/pressentation/utlis/apps_colors.dart';
import 'package:task_manager/pressentation/widgets/background_widget.dart';
import 'package:task_manager/pressentation/widgets/profil_bar.dart';
import 'package:task_manager/pressentation/widgets/task_card.dart';

import '../widgets/task_counter_card.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppBar,
      body: BackgroundWidget(
          child: Column(
        children: [
          taskCounterSection,
          Expanded(child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return  const TaskCard();


          },),),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddTaskNewScreen()));
        },
        backgroundColor: AppsColors.themC0lor,

        child:  const Icon(Icons.add,color: Colors.white,),
      ),
    );
  }

  Widget get taskCounterSection {
    return SizedBox(
      height: 110,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView.separated(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (contex, index) {
              return const TaskCounterCard(
                title: 'New',
                amount: 23,
              );
            },
            separatorBuilder: (_, __) {
              return const SizedBox(
                width: 8,
              );
            }),
      ),
    );
  }
}

