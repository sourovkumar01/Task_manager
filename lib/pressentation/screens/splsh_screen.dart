import 'package:flutter/material.dart';
import 'package:task_manager/pressentation/screens/sign_in_screen.dart';
import 'package:task_manager/pressentation/widgets/background_widget.dart';
import '../widgets/aoop_logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    moveToSignin();
  }

  Future<void> moveToSignin() async {
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const SignInScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BackgroundWidget(
          child: Center(
        child: AppLogo(),
      )),
    );
  }
}
