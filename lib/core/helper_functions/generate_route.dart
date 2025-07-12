import 'package:auth/feature/Auth/presentation/login_view.dart';
import 'package:auth/feature/Auth/presentation/signup_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(final RouteSettings settings) =>
    switch (settings.name) {
      LoginView.routeName => MaterialPageRoute(
        builder: (_) => const LoginView(),
      ),
            SignupView.routeName => MaterialPageRoute(
        builder: (_) => const SignupView(),
      ),
      
      _ => MaterialPageRoute(
        builder: (_) =>
            const Scaffold(body: Center(child: Text('Page not found'))),
      ),
    };
