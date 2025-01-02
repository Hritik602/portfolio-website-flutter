import 'package:flutter/material.dart';

import 'knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Knowledge',
            style: TextStyle(color: Colors.white),
          ),
        ),
        KnowledgeText(knowledge: 'Flutter, Dart'),
        KnowledgeText(knowledge: 'Native Android with Jetpack Compose'),
        KnowledgeText(knowledge: 'Express Js'),
        KnowledgeText(knowledge: 'ServerPod'),
        KnowledgeText(knowledge: 'React Js (Only Business Logic)'),
        KnowledgeText(knowledge: 'Git, Github'),
      ],
    );
  }
}
