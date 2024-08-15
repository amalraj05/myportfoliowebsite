import 'package:flutter/material.dart';
import 'package:myportfoliowebsite/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0,),
              height: screenHeight/1.2,
              constraints: BoxConstraints(minHeight: 350.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Hello,\nI am Amalraj,\nA flutter Developer",
                      style: TextStyle(fontSize: 24.0,
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary,
                      ),
                      ),
                      SizedBox(height: 20,),
                      SizedBox(
                        width: 200,
                        height: 50,
                        child: ElevatedButton(onPressed: () {},
                         child: Text("Get in touch"),),
                      )
                    ],
                  ),
                  Image.asset("assets/avatarimg.png",
                  width: screenWidth/2,
                  )
                ],
              ),
             );
  }
}