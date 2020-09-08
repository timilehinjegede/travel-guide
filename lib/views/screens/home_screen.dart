import 'package:flutter/material.dart';
import 'package:travel_guide/utils/utils.dart';
import 'package:travel_guide/views/widgets/nav_bar/mobile_drawer.dart';
import 'package:travel_guide/views/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      drawer: ResponsiveUtil.isMobile(context) ? MobileDrawer() : null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ResponsiveUtil(
              mobileWidget: MobileIntroHeader(),
            ),
            ResponsiveUtil(
              mobileWidget: MobileBody(),
            ),
          ],
        ),
      ),
    );
  }

}
