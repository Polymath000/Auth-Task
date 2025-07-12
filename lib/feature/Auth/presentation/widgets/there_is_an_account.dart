import 'package:auth/core/utls/app_colors.dart';
import 'package:auth/core/utls/app_text_style.dart';
import 'package:flutter/material.dart';

class ThereIsAnAccount extends StatelessWidget {
  const ThereIsAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Are you have an account?',
              style: AppTextStyles.bodyMedium,
            ),
            TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.zero),
                overlayColor: MaterialStateProperty.all(AppColors.transparent),
                splashFactory: NoSplash.splashFactory,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Login',
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
