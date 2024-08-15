import 'package:flutter/material.dart';
import 'package:myportfoliowebsite/constants/colors.dart';
import 'package:myportfoliowebsite/constants/skill_items.dart';

class SkillMobile extends StatelessWidget {
  const SkillMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 500.0,
      ),
      child: Column(
                      children: [
                        for(int i =0; i < platformItems.length;i++)
                        Container(
                          margin: EdgeInsets.only(bottom: 5.0),
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: CustomColor.bgLight2,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                            leading: Image.asset(platformItems[i]["img"],width: 25,),
                            title: Text(platformItems[i]["title"]),
                          ),
                        ),
                        SizedBox(height: 50,),
      
                        Wrap(
                          spacing: 10.0,
                          runSpacing: 10.0,
                                children: [
                                  for(int i=0;i < skillItems.length;i++)
                                  Chip(
                                    padding: EdgeInsets.symmetric(vertical: 12.0,horizontal: 16.0),
                                    backgroundColor: CustomColor.bgLight2,
                                    label: Text(skillItems[i]["title"]),
                                    avatar: Image.asset(skillItems[i]["img"]),
                                    ),
                                ],
                              ),
                      ],
                    ),
    );
  }
}