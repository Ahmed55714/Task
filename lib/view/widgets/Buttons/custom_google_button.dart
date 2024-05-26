import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/colors.dart';


class GoogleLoginButton extends StatelessWidget {
  final VoidCallback onTap;
  final String svg;

  const GoogleLoginButton({
    Key? key,
    required this.onTap,
    required this.svg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: grey50,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center
            ,
            children: [
              Text('Sign up with Google',
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: colorDarkBlue,
                  fontWeight: FontWeight.w700,
                  fontSize: 16
                ),
              ),
              const SizedBox(width: 16),
              SvgPicture.asset(svg
                ,width: 32,
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
