import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:task_manager/pressentation/widgets/background_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text(
                'Get Started With',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Email',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    )),
              ),
              const SizedBox(height: 8,),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Password',
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
