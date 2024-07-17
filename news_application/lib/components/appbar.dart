import 'package:flutter/material.dart';
import 'package:news_application/utils/colors.dart';
import 'package:news_application/utils/text.dart';

class appbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  // TODO: implement preferredSize
  Size get preferredSize {
    return Size.fromHeight(50);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.black,
      title: Container(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              boldTexts(text: 'Newz', size: 20, color: AppColors.primary),
              modifiedTexts(
                  text: 'Sphere', size: 20, color: AppColors.lightwhite),
            ],
          )),
      centerTitle: true,
    );
  }
}
