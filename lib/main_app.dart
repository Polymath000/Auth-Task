import 'package:auth/core/helper_functions/generate_route.dart';
import 'package:auth/core/utls/app_colors.dart';
import 'package:auth/core/utls/app_text_style.dart';
import 'package:auth/feature/Auth/presentation/login_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});
  @override
  Widget build(BuildContext context) {
    AppTextStyles.init(context);
    AppColors.init(context);
    return MaterialApp(
       builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: const [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      onGenerateRoute: (settings) => onGenerateRoute(settings),
      initialRoute: LoginView.routeName,

      debugShowCheckedModeBanner: false,
    );
  }
}
