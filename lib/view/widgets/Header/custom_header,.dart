import 'package:flutter/material.dart';
import '../../../utils/colors.dart';

class HeaderTitle extends StatelessWidget {
  final String title1;
  final String title2;

  const HeaderTitle({
    Key? key,
    required this.title1,
    required this.title2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title1,
          style: Theme.of(context).textTheme.headline4?.copyWith(
            color: colorDarkBlue,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          title2,
          style: Theme.of(context).textTheme.bodyText2?.copyWith(
            color: colorDarkBlue,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

