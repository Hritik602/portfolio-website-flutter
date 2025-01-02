import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../const.dart';
import 'drawer_image.dart';

class About extends StatelessWidget {
  final bool? fromDwawer;
  const About({super.key, this.fromDwawer = false});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        color: bgColor,
        child: Column(
          children: [
            const Spacer(flex: 2),

            // Profile Image (Make sure to add an image or use a placeholder)
            const DrawerImage(),

            const Spacer(),

            // Name
            Text(
              'Shiwam Karn',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: Colors.white70),
            ),

            const SizedBox(
              height: defaultPadding / 4,
            ),

            // Role
            const Text(
              'Flutter Developer SDE-2',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w200,
                  height: 1.5,
                  color: Colors.white70),
            ),

            // Short Introduction or Bio about yourself
            const SizedBox(
              height: defaultPadding,
            ),
            if (fromDwawer == false)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Text(
                  "Passionate Flutter Developer building high-quality apps with clean code and excellent user experiences. Skilled in modern technologies for mobile and desktop development.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    height: 1.5,
                  ),
                ),
              ),

            const SizedBox(height: defaultPadding),

            // Social or contact buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.email, color: Colors.white70),
                  onPressed: () {
                    launchEmail();
                  },
                ),
                IconButton(
                  icon: Icon(FontAwesomeIcons.linkedin, color: Colors.white70),
                  onPressed: () {
                    launchUrl(Uri.parse(
                        'https://www.linkedin.com/in/shiwam-karn-671630159'));
                  },
                ),
                IconButton(
                  icon: Icon(Icons.code, color: Colors.white70),
                  onPressed: () {
                    launchUrl(Uri.parse('https://github.com/shiwam77'));
                  },
                ),
              ],
            ),

            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}

void launchEmail() async {
  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'shiwamkarn77@gmail.com', // Add your email here
    queryParameters: {
      'subject': 'Subject of the email', // Optional
      'body': 'Body of the email' // Optional
    },
  );

  if (await canLaunch(emailLaunchUri.toString())) {
    await launch(emailLaunchUri.toString());
  } else {
    throw 'Could not launch $emailLaunchUri';
  }
}
