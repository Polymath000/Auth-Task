import 'package:auth/core/utls/app_colors.dart';
import 'package:auth/core/utls/app_images.dart';
import 'package:auth/core/utls/app_text_style.dart';
import 'package:auth/feature/Auth/presentation/widgets/custom_button.dart';
import 'package:auth/feature/Auth/presentation/widgets/custom_textfield.dart';
import 'package:auth/feature/Auth/presentation/widgets/login_social_row.dart';
import 'package:auth/feature/Auth/presentation/widgets/no_account_text.dart';
import 'package:auth/feature/Auth/presentation/widgets/or_diviter.dart';
import 'package:auth/feature/Auth/presentation/widgets/social_button.dart';
import 'package:flutter/material.dart';

class LoginPageBody extends StatefulWidget {
  const LoginPageBody({super.key});

  @override
  State<LoginPageBody> createState() => _LoginPageBodyState();
}

class _LoginPageBodyState extends State<LoginPageBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            Text('Welcome!', style: AppTextStyles.titleLarge),
            const SizedBox(height: 20),
            CustomFormTextField(
              hint: 'Email',
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
        
            CustomFormTextField(
              hint: 'Password',
              keyboardType: TextInputType.visiblePassword,
              eyeIconIsVisible: true,
            ),
            const SizedBox(height: 20),
        
            CustomButton(
              text: 'Login',
              onPressed: () 
              {if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                                  ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('Login pressed')));
                } else {
                  setState(() {
                    autovalidateMode = AutovalidateMode.always;
                  });
                }

              },
            ),
            const SizedBox(height: 20),
        
            OrDivider(),
            const SizedBox(height: 20),
            LoginSocialRow(),
            const SizedBox(height: 20),
            NoAccountText(),    
          ],
        ),
      ),
    );
  }
}
