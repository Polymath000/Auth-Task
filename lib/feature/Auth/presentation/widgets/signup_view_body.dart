import 'package:auth/core/utls/app_colors.dart';
import 'package:auth/core/utls/app_text_style.dart';
import 'package:auth/feature/Auth/presentation/widgets/custom_button.dart';
import 'package:auth/feature/Auth/presentation/widgets/custom_textfield.dart';
import 'package:auth/feature/Auth/presentation/widgets/login_social_row.dart';
import 'package:auth/feature/Auth/presentation/widgets/no_account_text.dart';
import 'package:auth/feature/Auth/presentation/widgets/or_diviter.dart';
import 'package:auth/feature/Auth/presentation/widgets/there_is_an_account.dart';
import 'package:flutter/material.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({
    super.key,
  });

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? password;
  String? confirmPassword;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            Text('Welcome Back!', style: AppTextStyles.titleLarge),
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
              onSaved: (value) {
                setState(() {
                  password = value;
                });
              },
            ),
                        const SizedBox(height: 20),
        
            CustomFormTextField(
              hint: 'Confirm Password',
              keyboardType: TextInputType.visiblePassword,
              eyeIconIsVisible: true,
              onSaved: (value){
                setState(() {
                  confirmPassword = value;
                });
              },
            ),
            const SizedBox(height: 20),
        
            CustomButton(
              text: 'Sign Up',
              onPressed: () 
              {if (formKey.currentState!.validate() && password == confirmPassword) {
                  formKey.currentState!.save();
                                  ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('Signup pressed')));
                } else if (password != confirmPassword) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Passwords do not match')),
                  );
                }
                else {
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
            ThereIsAnAccount()
          ],
        ),
      ),
    );
  }
}