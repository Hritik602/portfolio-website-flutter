import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/const.dart';

import '../../model/work_experience.model.dart';
import '../../projects_controller.dart';
import '../../widget/responsive.dart';
import '../projects/components/title_text.dart';

class WorkExperienceScreen extends StatelessWidget {
  final controller = Get.put(ProjectController());

  WorkExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen width to adjust layout based on screen size
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          if (Responsive.isLargeMobile(context))
            SizedBox(
              height: defaultPadding,
            ),
          const TitleText(prefix: 'Work', title: 'Experience'),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal:
                      screenWidth * 0.05), // Add margin for small devices
              child: ListView.builder(
                itemCount: workExperienceList.length,
                itemBuilder: (context, index) {
                  final experience = workExperienceList[index];
                  return Obx(() => AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      margin: EdgeInsets.symmetric(
                          vertical: defaultPadding, horizontal: defaultPadding),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: const LinearGradient(colors: [
                            Colors.pinkAccent,
                            Colors.blue,
                          ]),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.pink,
                              offset: const Offset(-2, 0),
                              blurRadius: controller.hovers[index] ? 20 : 10,
                            ),
                            BoxShadow(
                              color: Colors.blue,
                              offset: const Offset(2, 0),
                              blurRadius: controller.hovers[index] ? 20 : 10,
                            ),
                          ]),
                      child: BuildWorkExperience(
                        experience: experience,
                        screenWidth: screenWidth,
                        index: index,
                      )));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWorkExperienceCard(
      WorkExperience experience, double screenWidth) {
    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.05), // Responsive padding
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                experience.companyName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth > 600
                      ? 18
                      : 16, // Adjust font size based on screen width
                ),
              ),
              Text(
                experience.duration,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.grey,
                  fontSize: screenWidth > 600
                      ? 14
                      : 12, // Adjust font size based on screen width
                ),
              ),
            ],
          ),
          SizedBox(height: screenWidth * 0.02), // Adjust spacing
          Text(
            experience.role,
            style: TextStyle(
              fontSize: screenWidth > 600
                  ? 16
                  : 14, // Adjust font size based on screen width
              color: Colors.blueAccent,
            ),
          ),
          SizedBox(height: screenWidth * 0.02), // Adjust spacing
          Text(
            experience.location,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: screenWidth > 600
                  ? 14
                  : 12, // Adjust font size based on screen width
            ),
          ),
          SizedBox(height: screenWidth * 0.04), // Adjust spacing
          ...experience.jobDescription.map((desc) => Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Text("• $desc"),
              )),
        ],
      ),
    );
  }
}

class BuildWorkExperience extends StatelessWidget {
  final WorkExperience experience;
  final double screenWidth;
  BuildWorkExperience(
      {super.key,
      required this.experience,
      required this.screenWidth,
      required this.index});

  final controller = Get.put(ProjectController());
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        controller.onHover(index, value);
      },
      onTap: () {
        // ImageViewer(context, projectList[index].image);
      },
      borderRadius: BorderRadius.circular(30),
      child: AnimatedContainer(
        padding: EdgeInsets.only(
            left: defaultPadding, right: defaultPadding, top: defaultPadding),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: bgColor),
        duration: const Duration(milliseconds: 500),
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.05), // Responsive padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    experience.companyName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: screenWidth > 600
                          ? 18
                          : 16, // Adjust font size based on screen width
                    ),
                  ),
                  Text(
                    experience.duration,
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.grey,
                      fontSize: screenWidth > 600
                          ? 14
                          : 12, // Adjust font size based on screen width
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenWidth * 0.02), // Adjust spacing
              Text(
                experience.role,
                style: TextStyle(
                  fontSize: screenWidth > 600
                      ? 16
                      : 14, // Adjust font size based on screen width
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(height: screenWidth * 0.01), // Adjust spacing
              Text(
                experience.location,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: screenWidth > 600
                      ? 14
                      : 12, // Adjust font size based on screen width
                ),
              ),
              SizedBox(height: screenWidth * 0.04), // Adjust spacing
              ...experience.jobDescription.map((desc) => Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Text(
                      "• $desc",
                      style: TextStyle(color: Colors.white70),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
