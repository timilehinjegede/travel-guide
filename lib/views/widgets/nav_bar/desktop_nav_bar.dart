import 'package:flutter/material.dart';
import 'package:travel_guide/utils/utils.dart';

class DesktopNavBar extends StatefulWidget implements PreferredSizeWidget {
  DesktopNavBar({Key key}) : super(key: key);

  @override
  _DesktopNavBarState createState() => _DesktopNavBarState();

  @override
  Size get preferredSize => Size.fromHeight(60);
}

class _DesktopNavBarState extends State<DesktopNavBar> {
  bool isInRegion = false;
  int _index = -1;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: TravelGuideColors.whiteColor,
      elevation: 0.0,
      flexibleSpace: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'LOGO',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: TravelGuideColors.pinkColor,
                ),
              ),
              Spacer(),
              ...List.generate(
                4,
                (index) {
                  return MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        isInRegion = true;
                        _index = index;
                        print('inside $isInRegion $_index');
                      });
                    },
                    onExit: (event) {
                      setState(() {
                        isInRegion = false;
                        _index = -1;
                        print('outside $isInRegion $_index');
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        TravelGuideStrings.mobileDrawerTextList[index],
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          decoration: isInRegion && (index == _index)
                              ? TextDecoration.underline
                              : TextDecoration.none,
                          color: index == 0
                              ? TravelGuideColors.darkGreyColor
                              : TravelGuideColors.darkGreyColor
                                  .withOpacity(0.5),
                        ),
                      ),
                    ),
                  );
                },
              ),
              XBox(20),
              Image(
                height: 25,
                width: 25,
                image: AssetImage(
                  TravelGuideStrings.avatar,
                ),
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
