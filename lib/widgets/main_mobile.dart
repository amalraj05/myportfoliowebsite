import 'package:flutter/material.dart';
import 'package:myportfoliowebsite/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    
    return Container(
              margin: EdgeInsets.symmetric(horizontal: 40.0,vertical: 30.0),
              height: screenHeight,
              constraints: BoxConstraints(
                minHeight: 560.0,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShaderMask(
                    shaderCallback: (bounds) {
                      return LinearGradient(colors: [
                        CustomColor.ScaffoldBg.withOpacity(0.6),
                        CustomColor.ScaffoldBg.withOpacity(0.6),
                      ]).createShader(bounds);
                    },
                    blendMode: BlendMode.srcATop,
                    child: Image.asset("assets/avatarimg.png",
                    width: screenWidth,
                    ),),
                    SizedBox(height: 5,),

                  Text("Hello,\nI am Amalraj,\nA flutter Developer",
                      style: TextStyle(fontSize: 20.0,
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary,
                      ),
                      ),
                      SizedBox(height: 20,),
                      SizedBox(
                        width: 170,
                        height: 40,
                        child: ElevatedButton(onPressed: () {},
                         child: Text("Get in touch"),),
                      )
                ],
              ),
             );
  }
}