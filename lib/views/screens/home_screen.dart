import 'package:flutter/material.dart';
import 'package:travel_guide/utils/utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TravelGuideColors.whiteColor,
        elevation: 0.0,
        leading: Icon(
          Icons.menu,
          color: TravelGuideColors.darkGreyColor,
        ),
        title: Text(
          'LOGO',
          style: TextStyle(
            fontSize: 13,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    TravelGuideStrings.headerImage,
                  ),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.srcATop),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'AMAZING PLACES IN AMERICA TO VISIT',
                  ),
                  YBox(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildInfo(
                        imgSrc: TravelGuideStrings.web,
                        data: 'TRVEL GUIDE',
                      ),
                      XBox(50),
                      _buildInfo(
                        imgSrc: TravelGuideStrings.topic,
                        data: 'WORLD NEWS',
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              TravelGuideStrings.avatar1,
                            ),
                          ),
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 2,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        'NEXT STORY',
                      ),
                      XBox(10),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 14,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfo({String imgSrc, String data}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image(
          image: AssetImage(
            imgSrc,
          ),
        ),
        XBox(10),
        Text(
          data,
        ),
      ],
    );
  }
}
