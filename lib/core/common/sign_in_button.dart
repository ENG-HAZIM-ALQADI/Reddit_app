import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_tutorial/core/constants/constants.dart';
import 'package:reddit_tutorial/theme/pallete.dart';

import '../../features/auth/controlller/auth_controller.dart';

class SignInButton extends ConsumerWidget {
  // final bool isFromLogin;
  const SignInButton({Key? key}) : super(key: key);

  // void signInWithGoogle(BuildContext context, WidgetRef ref) {
  //   ref.read(authControllerProvider).signInWithGoogle(
  //       context, isFromLogin);
  // }
  void signInWithGoogle( WidgetRef ref) {
    ref.read(authControllerProvider).signInWithGoogle();
  }
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ElevatedButton.icon(
        // onPressed: () => null,
        onPressed: () => signInWithGoogle(ref),
        icon: Image.asset(
          Constants.googlePath,
          width: 35,
        ),
        label: const Text(
          'Continue with Google',
          style: TextStyle(fontSize: 18),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Pallete.greyColor,
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
