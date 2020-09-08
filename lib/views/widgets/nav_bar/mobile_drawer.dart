import 'package:flutter/material.dart';
import 'package:travel_guide/utils/utils.dart';

class MobileDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: NavHeading(),
          ),
          Expanded(
            flex: 1,
            child: NavFooter(),
          ),
        ],
      ),
    );
  }
}

class NavHeading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 50.0,
        top: 40.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TravelGuideStrings.logo,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: TravelGuideColors.pinkColor,
            ),
          ),
          YBox(60),
          ...List.generate(
            5,
            (index) => NavItem(index: index),
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final int index;

  const NavItem({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      child: Row(
        children: [
          Image(
            height: 20,
            width: 20,
            image: AssetImage(
              TravelGuideStrings.mobileDrawerImgList[index],
            ),
            fit: BoxFit.contain,
          ),
          XBox(20),
          Text(
            TravelGuideStrings.mobileDrawerTextList[index],
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: index == 0
                  ? TravelGuideColors.darkGreyColor
                  : TravelGuideColors.darkGreyColor.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}

class NavFooter extends StatelessWidget {
  final TextStyle _footerItemsTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: TravelGuideColors.whiteColor,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff000000).withOpacity(0.23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...List.generate(
                    4,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5.0,
                      ),
                      child: Text(
                        TravelGuideStrings.footerItemsList.sublist(0, 4)[index],
                        style: _footerItemsTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    4,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5.0,
                      ),
                      child: Text(
                        TravelGuideStrings.footerItemsList.sublist(4)[index],
                        style: _footerItemsTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          YBox(40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...List.generate(
                4,
                (index) => Image(
                  image: AssetImage(
                    TravelGuideStrings.logosList[index],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
