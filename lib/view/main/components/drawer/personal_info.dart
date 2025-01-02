import 'package:flutter/material.dart';

import '../../../../const.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: defaultPadding / 2,
        ),
        const AreaInfoText(title: 'Contact', text: '9813660129'),
        const AreaInfoText(title: 'Email', text: 'shiwamkarn77@.com'),
        const AreaInfoText(title: 'LinkedIn', text: '@shiwam-karn-671630159'),
        const AreaInfoText(title: 'Github', text: '@shiwam77'),
        const SizedBox(
          height: defaultPadding,
        ),
        const Text(
          'Skills',
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
