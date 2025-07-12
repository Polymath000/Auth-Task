import 'package:auth/core/utls/app_colors.dart';
import 'package:auth/core/utls/app_text_style.dart';
import 'package:auth/feature/Auth/presentation/signup_view.dart';
import 'package:flutter/material.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Don\'t have an account?', style: AppTextStyles.bodyMedium),
            TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
                overlayColor: MaterialStateProperty.all(AppColors.transparent),
                splashFactory: NoSplash.splashFactory,
              ),
              onPressed: () {
                Navigator.pushNamed(context, SignupView.routeName);
              },
              child: Text(
                'Sign Up',
                style: AppTextStyles.bodyMedium?.copyWith(
                  color: AppColors.success,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
