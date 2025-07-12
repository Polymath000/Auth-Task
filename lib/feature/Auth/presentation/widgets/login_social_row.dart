import 'package:auth/core/utls/app_images.dart';
import 'package:auth/feature/Auth/presentation/widgets/social_button.dart';
import 'package:flutter/material.dart';

class LoginSocialRow extends StatelessWidget {
  const LoginSocialRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SocialLoginButton(
          image: Assets.assetsImagesGoogleLogo,
          title: 'Google',
          onPressed: () {
            // Handle Google login
          },
        ),
        SocialLoginButton(
          image: Assets.assetsImagesFacebookLogo,
          title: 'Facebook',
          onPressed: () {
            // Handle Facebook login
          },
        ),
      ],
    );
  }
}
