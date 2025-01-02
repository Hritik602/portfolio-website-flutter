import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../model/project_model.dart';

class ProjectLinks extends StatelessWidget {
  final int index;
  final bool? isGithub;
  const ProjectLinks({super.key, required this.index, this.isGithub = false});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            // InkWell(
            //   onTap: () {
            //     launchUrl(Uri.parse(projectList[index].link));
            //   },
            //   child: const Text('Please Visit',
            //       style: TextStyle(color: Colors.white),
            //       overflow: TextOverflow.ellipsis),
            // ),
            // IconButton(
            //     onPressed: () {
            //       launchUrl(Uri.parse(projectList[index].link));
            //     },
            //     icon: isGithub == false? Icon(FontAwesomeIcons.googlePlay): SvgPicture.asset('assets/icons/github.svg'),)
          ],
        ),
        const Spacer(),
        TextButton(
            onPressed: () {
              if (projectList[index].link.isNotEmpty) {
                launchUrl(Uri.parse(projectList[index].link));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('This app is not published on any store.'),
                  ),
                );
              }
            },
            child: const Text(
              'Read More>>',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: 10),
            ))
      ],
    );
  }
}
