import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/Buttons/custom_google_button.dart';
import '../../widgets/Header/custom_header,.dart';
import 'controller/registeration_controller.dart';

class LoginScreen extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  HeaderTitle(
                    title1: 'registration',
                    title2: 'to continue by Google account',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 48),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GoogleLoginButton(
                onTap: () {
                  authController.login();
                },
                svg: 'assets/svgs/Google.svg',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
