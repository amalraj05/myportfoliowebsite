import 'package:flutter/material.dart';
import 'package:myportfoliowebsite/constants/colors.dart';
import 'package:myportfoliowebsite/utils/projects_utils.dart';
import 'package:myportfoliowebsite/widgets/project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth=MediaQuery.of(context).size.width;
    return Container(
                width: screenWidth,
                padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                child: Column(
                  children: [
                    Text(
                      "Work Projects",
                      style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary,
                    ),),
                    SizedBox(height: 50,),

                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 900),
                      child: Wrap(
                        spacing: 25,
                        runSpacing: 25,
                        children: [
                          for(int i=0; i < workProjectUtils.length; i++)
                          projectCardWidget(project: workProjectUtils[i]),
                        ],
                      ),
                    )
                  ],
                ),
              );
  }
}