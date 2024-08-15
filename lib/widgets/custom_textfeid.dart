import 'package:flutter/material.dart';
import 'package:myportfoliowebsite/constants/colors.dart';

class CustomTextfeid extends StatelessWidget {
  const CustomTextfeid({
    super.key,
      this.controller, 
      this.maxLines=1, 
      this.hintText});
  final TextEditingController? controller;
  final int maxLines;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
                            style: TextStyle(color: CustomColor.ScaffoldBg,
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(16),
                            filled: true,
                            fillColor: CustomColor.whiteSeconadary,
                            focusedBorder: getInputBorder,
                            enabledBorder: getInputBorder,
                            border: getInputBorder,
                            hintText: hintText,
                            hintStyle: TextStyle(
                              color: CustomColor.hintDark,
                            )
                          ),
                          );
  }
    OutlineInputBorder get getInputBorder{
    return OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            );
  }
}