import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
class HeadingText extends StatelessWidget {
  const HeadingText({
    super.key, required this.showTextButton,
  });
final bool showTextButton;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          Constants.heading1,
          style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      showTextButton?TextButton(
          onPressed: () {},
          child: const Text("See All"),
        ):const Text(""),
      ],
    );
  }
}
