import 'package:flutter/material.dart';
import 'package:myportfoliowebsite/constants/colors.dart';
import 'package:myportfoliowebsite/constants/nav_items.dart';
import 'package:myportfoliowebsite/styles/style.dart';
import 'package:myportfoliowebsite/widgets/site_logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
            height: 60,
            margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
            width: double.maxFinite,
            decoration: KHeaderDecoration,
            child: Row(
              children: [ 
                SiteLogo(onTap: () {},),
                Spacer(),

                for (int i = 0; i < navTitles.length; i++)
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: TextButton(
                    onPressed: (){}, child: Text(navTitles[i],
                    style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: CustomColor.whitePrimary),),
                  ),
                )
              ],
            ),
          );
  }
}