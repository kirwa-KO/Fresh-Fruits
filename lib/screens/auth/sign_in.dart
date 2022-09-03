import 'package:flutter/material.dart';
import 'package:freshfruits/screens/auth/create_account.dart';
import 'package:freshfruits/screens/home_screen.dart';
import 'package:freshfruits/styles/colors.dart';
import 'package:freshfruits/widgets/auth/sing_in/sign_in_form.dart';
import 'package:freshfruits/widgets/layout/image_bg_content_card_layout.dart';
import 'package:freshfruits/widgets/ui/buttons/long_button.dart';

class SignIn extends StatelessWidget {
  static const String routeName = "/sign-in";

  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImageBgContentCardLayout(
        imageBg: "assets/images/auth/sign-in.png",
        child: Column(
            children: [
              Text(
                "Sign In",
                style: Theme.of(context).textTheme.headline1,
              ),
              const SignInForm(),
              // const CreateAccountTermCondition(),
              LongButton(
                  label: "SIGN IN",
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
                  }),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  const SizedBox(width: 8),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed(CreateAccount.routeName);
                      },
                      child: const Text(
                        "Create Account",
                        style: TextStyle(
                            color: mainColor, fontWeight: FontWeight.bold),
                      )),
                ],
              )
            ],
          ),
      ),
    );
  }
}
