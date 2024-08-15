import 'package:flutter/material.dart';
import 'package:myportfoliowebsite/styles/style.dart';
import 'package:myportfoliowebsite/widgets/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 50.0,
          margin: EdgeInsets.fromLTRB(40, 5, 20, 5),
          decoration: KHeaderDecoration,
          child: Row(
            children: [
              SiteLogo(
                onTap: onLogoTap,
              ),
              Spacer(),
              IconButton(
                onPressed: onMenuTap,
                 icon: Icon(Icons.menu)),
              SizedBox(width: 15,)
            ],
          ),
         );
  }
}