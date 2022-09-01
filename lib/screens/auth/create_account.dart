import 'dart:math';

import 'package:confetti/confetti.dart';
import "package:flutter/material.dart";
import 'package:freshfruits/widgets/auth/create_account/create_account_form.dart';
import 'package:freshfruits/widgets/auth/create_account/create_account_term_condition.dart';
import 'package:freshfruits/widgets/layout/image_bg_content_card_layout.dart';
import 'package:freshfruits/widgets/ui/buttons/long_button.dart';

class CreateAccount extends StatefulWidget {
  static const String routeName = "/create-account";

  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  late ConfettiController _controllerCenter;

  @override
  void initState() {
    super.initState();
    _controllerCenter =
        ConfettiController(duration: const Duration(seconds: 3));
  }

  @override
  void dispose() {
    _controllerCenter.dispose();
    super.dispose();
  }

  void runCongratAnimation() {
    _controllerCenter.play();
  }

  Future<void> _openCongratDialog(BuildContext context) {
    runCongratAnimation();
    return showDialog(
        context: context,
        builder: (BuildContext ctx) => AlertDialog(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
              title: const Text(
                "CONGRATULATIONS",
                style: TextStyle(color: Colors.green),
                textAlign: TextAlign.center,
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                const Text("Account Created Successfully"),
                const SizedBox(height: 28),
                ConfettiWidget(
                  confettiController: _controllerCenter,
                  blastDirectionality: BlastDirectionality
                      .explosive, // don't specify a direction, blast randomly
                  shouldLoop:
                      false, // start again as soon as the animation is finished
                  colors: const [
                    Color.fromRGBO(88, 165, 92, 1),
                    Color.fromRGBO(81, 134, 242, 1),
                    Color.fromRGBO(217, 80, 63, 1),
                    Color.fromRGBO(241, 189, 66, 1),
                    Color.fromRGBO(122, 30, 118, 1)
                  ], // manually specify the colors to be used
                  createParticlePath: drawStar, // define a custom shape/path.
                ),
                const Icon(Icons.handshake_outlined, size: 80, color: Colors.green,),
                const SizedBox(height: 28),
                const LongButton(
                  label: "SIGN IN",
                )
              ]),
            ));
  }

  Path drawStar(Size size) {
    // Method to convert degree to radians
    double degToRad(double deg) => deg * (pi / 180.0);

    const numberOfPoints = 5;
    final halfWidth = size.width / 2;
    final externalRadius = halfWidth;
    final internalRadius = halfWidth / 2.5;
    final degreesPerStep = degToRad(360 / numberOfPoints);
    final halfDegreesPerStep = degreesPerStep / 2;
    final path = Path();
    final fullAngle = degToRad(360);
    path.moveTo(size.width, halfWidth);

    for (double step = 0; step < fullAngle; step += degreesPerStep) {
      path.lineTo(halfWidth + externalRadius * cos(step),
          halfWidth + externalRadius * sin(step));
      path.lineTo(halfWidth + internalRadius * cos(step + halfDegreesPerStep),
          halfWidth + internalRadius * sin(step + halfDegreesPerStep));
    }
    
    path.close();
    return path;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImageBgContentCardLayout(
        imageBg: "assets/images/auth/create-account.png",
        child: Column(
          children: [
            Text(
              "Create your account",
              style: Theme.of(context).textTheme.headline1,
            ),
            const CreateAccountForm(),
            const CreateAccountTermCondition(),
            LongButton(
              label: "Create an account",
              onPressed: () => _openCongratDialog(context),
            )
          ],
        ),
      ),
    );
  }
}
