import 'package:auth/core/utls/app_colors.dart';
import 'package:auth/core/utls/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({super.key, required this.image, required this.title, this.onPressed});
  final String image;
  final String title;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 3.8,
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: AppColors.white,
          foregroundColor: AppColors.black,
          overlayColor: AppColors.darkGrey,
          shape: RoundedRectangleBorder(
            
            borderRadius: BorderRadius.circular(16.0),
            side: const BorderSide(
              width: .4,
              color: AppColors.black,
            ),
          ),
        ),
        onPressed:onPressed,
        child: 
           SvgPicture.asset(image, height: 25,) ,
      ),
    );
  }
}