import 'package:flutter/material.dart';
import 'package:task_manager/pressentation/widgets/background_widget.dart';

import '../widgets/profil_bar.dart';

class AddTaskNewScreen extends StatefulWidget {
  const AddTaskNewScreen({super.key});

  @override
  State<AddTaskNewScreen> createState() => _AddTaskNewScreenState();
}

class _AddTaskNewScreenState extends State<AddTaskNewScreen> {
  final TextEditingController _titletecontolar = TextEditingController();
  final TextEditingController _descriptioncontolar = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppBar,
      body: BackgroundWidget(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 48,
                ),
                Text(
                  'Add New Task',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontSize: 24),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: _titletecontolar,
                  decoration: const InputDecoration(hintText: 'Title'),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _descriptioncontolar,
                  decoration: const InputDecoration(hintText: 'Description'),
                ),
                const SizedBox(height: 16),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_circle_right_outlined))),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _titletecontolar.dispose();
    _descriptioncontolar.dispose();
  }
}
