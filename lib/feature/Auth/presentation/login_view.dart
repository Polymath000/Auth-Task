import 'package:auth/feature/Auth/presentation/widgets/login_page_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: Alignment.centerRight,
          child: SingleChildScrollView(child: LoginPageBody()),
        ),
      ),
    );
  }
}
