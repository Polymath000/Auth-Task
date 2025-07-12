import 'package:auth/feature/Auth/presentation/widgets/signup_view_body.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const String routeName = 'signup';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Align(
          alignment: Alignment.centerRight,
          child: SingleChildScrollView(child: SignupViewBody()),
        ),
      ),
    );
  }
}
