import 'package:flutter/material.dart';
import 'package:travel_guide/utils/utils.dart';
import 'package:travel_guide/views/widgets/nav_bar/mobile_drawer.dart';
import 'package:travel_guide/views/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          ResponsiveUtil.isMobile(context) ? MobileNavBar() : DesktopNavBar(),
      drawer: ResponsiveUtil.isMobile(context) ? MobileDrawer() : null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ResponsiveUtil(
              mobileWidget: MobileIntroHeader(),
              tabletWidget: DesktopIntroHeader(),
              desktopWidget: DesktopIntroHeader(),
            ),
            ResponsiveUtil(
              mobileWidget: MobileBody(),
              tabletWidget: SizedBox(),
              desktopWidget: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
