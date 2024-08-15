import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myportfoliowebsite/constants/colors.dart';
import 'package:myportfoliowebsite/constants/size.dart';
import 'package:myportfoliowebsite/utils/projects_utils.dart';
import 'package:myportfoliowebsite/widgets/contact_sec.dart';
import 'package:myportfoliowebsite/widgets/custom_textfeid.dart';
import 'package:myportfoliowebsite/widgets/drawer_mobile.dart';
import 'package:myportfoliowebsite/widgets/footer.dart';
import 'package:myportfoliowebsite/widgets/header_desktop.dart';
import 'package:myportfoliowebsite/widgets/header_mobile.dart';
import 'package:myportfoliowebsite/widgets/main_desktop.dart';
import 'package:myportfoliowebsite/widgets/main_mobile.dart';
import 'package:myportfoliowebsite/widgets/project_card.dart';
import 'package:myportfoliowebsite/widgets/projects_section.dart';
import 'package:myportfoliowebsite/widgets/skill_desktop.dart';
import 'package:myportfoliowebsite/widgets/skill_mobile.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(
      builder: (context,Constraints) {
        return Scaffold(
          key: ScaffoldKey,
          backgroundColor: CustomColor.ScaffoldBg,
          endDrawer: Constraints.maxWidth>= ARminDesktopWidth ? null : DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // main
              if(Constraints.maxWidth>= ARminDesktopWidth )
              const HeaderDesktop() else
             HeaderMobile(
              onLogoTap: () {},
              onMenuTap: () {
                ScaffoldKey.currentState?.openEndDrawer();
              },
             ),

             if(Constraints.maxWidth>= ARminDesktopWidth )
             MainDesktop() else
              MainMobile(),

              // skills
        
              Container(
                width: screenWidth,
                padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: CustomColor.bgLight1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("What I Can do",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary,
                    ),),

                    SizedBox(height: 50,),

                    if(Constraints.maxWidth>=ARmedDesktopWidth)
                  SkillDesktop()else
                  SkillMobile()

                  ],
                ),
              ),

              SizedBox(height: 30,),
        
              // projects
        
              ProjectsSection(),
            
              // contact
        
             ContactSec(),
        
              //footer
        
              Footer(),
            ],
          ),
        );
      }
    );
  }


}

