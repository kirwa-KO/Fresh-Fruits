import 'package:flutter/material.dart';
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
            const LongButton(label: "SIGN IN")
          ],
        ),
      ),
    );
  }
}
