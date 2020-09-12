import 'package:flutter/material.dart';
import 'package:travel_guide/utils/utils.dart';

class MobileNavBar extends StatelessWidget implements PreferredSizeWidget {
  const MobileNavBar({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: TravelGuideColors.whiteColor,
      elevation: 0.0,
      iconTheme: IconThemeData(
        color: TravelGuideColors.darkGreyColor,
      ),
      title: Text(
        'LOGO',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: TravelGuideColors.lighGreyColor,
        ),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            right: 10.0,
          ),
          child: Image(
            height: 25,
            width: 25,
            image: AssetImage(
              TravelGuideStrings.avatar,
            ),
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56);
}
