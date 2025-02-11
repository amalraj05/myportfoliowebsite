import 'package:flutter/material.dart';
import 'package:myportfoliowebsite/constants/colors.dart';
import 'package:myportfoliowebsite/utils/projects_utils.dart';
import 'dart:js' as js;

class projectCardWidget extends StatelessWidget {
  const projectCardWidget({
    super.key,
    required this.project
  });
  final ProjectsUtils project;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 280,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // image
    
          Image.asset(project.image,
          height: 140,
          width: 270,
          fit: BoxFit.cover,
          ),
    
          // title
    
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              project.title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: CustomColor.whitePrimary
            ),),
          ),
          // subtitle
    
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              project.subtitle,
            style: TextStyle(
              fontSize: 13,
              color: CustomColor.whiteSeconadary,
            ),),
          ),
          Spacer(),
          // footer
          Container(
            color: CustomColor.bgLight1,
            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
            child: Row(
              children: [
                Text(
                  "Available on:",
                  style: TextStyle(
                  color: CustomColor.yellowSecondary,
                  fontSize: 10,),
                  ),
                  Spacer(),
                  if(project.androidLink!=null)
                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [project.androidLink]); 
                    },
                    child: Image.asset("assets/android.png",width: 17,)),
                    if( project.androidLink!=null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod("open", [project.iosLink]);
                      },
                      child: Image.asset("assets/ios.png",width: 17,)),
                  ),
                  if(project.webLink!=null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod("open", [project.webLink]);
                      },
                      child: Image.asset("assets/web.png",width: 17,)),
                  ),
              ],
            ),
          )
          
        ],
      ),
    );
  }
}