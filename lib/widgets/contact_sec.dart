import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myportfoliowebsite/constants/colors.dart';
import 'package:myportfoliowebsite/constants/size.dart';
import 'package:myportfoliowebsite/constants/sns_links.dart';
import 'package:myportfoliowebsite/widgets/custom_textfeid.dart';
import 'dart:js' as js;

class ContactSec extends StatelessWidget {
  const ContactSec({super.key});

  @override
  Widget build(BuildContext context) {
    return               Container(
                padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: CustomColor.bgLight1,
                child: Column(
                  children: [
                    Text("Get in touch",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: CustomColor.whitePrimary,)
                    ),

                    SizedBox(height: 50,),

                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: 700,
                        maxHeight: 100),
                      child: LayoutBuilder(builder: (context, Constraints) {
                        if(Constraints.maxWidth>=ARmedDesktopWidth) {
                          return buildNameEmailFieldDesktop();
                        }
                        // else
                        return buildNameEmailFieldMobile();
                        
                      })
                    ),

                    SizedBox(height: 15,),

                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 700),
                      child: CustomTextfeid(
                        hintText: "your message",
                        maxLines: 16,
                      ),
                    ),
                    SizedBox(height: 25,),

                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 700,
                    ),
                    child: SizedBox(
                      width: double.maxFinite,
                      child: ElevatedButton(onPressed: () {},
                       child: Text("Get in touch",
                       )
                       ),
                    ),
                  ),

                  SizedBox(height: 30,),

                   ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 300,
                    ),
                    child: Divider()),

                    SizedBox(height: 30,),

                    Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      alignment: WrapAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            js.context.callMethod("open", [SnsLinks.github]);
                          },
                          child: Image.asset("assets/github.png",width: 28,)),
                        InkWell(
                          onTap: () {
                            js.context.callMethod("open", [SnsLinks.linkedIn]);
                          },
                          child: Image.asset("assets/linkedIn.png",width: 28,)),
                        InkWell(
                          onTap: () {
                            js.context.callMethod("open", [SnsLinks.instagram]);
                          },
                          child: Image.asset("assets/instagram.png",width: 28,)),
                        InkWell(
                          onTap: () {
                            js.context.callMethod("open", [SnsLinks.facebook]);
                          },
                          child: Image.asset("assets/facebook.png",width: 28,)),
                        InkWell(
                          onTap: () {
                            js.context.callMethod("open", [SnsLinks.telegram]);
                          },
                          child: Image.asset("assets/telegram.png",width: 28,)),
                      ],
                    )

                  ],
                ),
              );
  }

  Row buildNameEmailFieldDesktop () {
    return Row(
                        children: [
                          Flexible(
                            child: CustomTextfeid(
                              hintText: "your name",
                            )
                          ),
                      
                          SizedBox(width: 15,),
                          Flexible(
                            child: CustomTextfeid(
                              hintText: "your email",
                            )
                          ),
                        ],
                      );
  }

  Column buildNameEmailFieldMobile () {
    return Column(
                        children: [
                          Flexible(
                            child: CustomTextfeid(
                              hintText: "your name",
                            )
                          ),
                      
                          SizedBox(height: 15,),
                          Flexible(
                            child: CustomTextfeid(
                              hintText: "your email",
                            )
                          ),
                        ],
                      );
  }
}