import 'package:flutter/material.dart';
import 'package:travel_guide/utils/utils.dart';

class MobileIntroHeader extends StatelessWidget {
  const MobileIntroHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 20.0,
      ),
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
          Spacer(),
          Text(
            TravelGuideStrings.heading,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: TravelGuideColors.whiteColor,
            ),
            textAlign: TextAlign.center,
          ),
          YBox(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildInfo(
                imgSrc: TravelGuideStrings.web,
                data: TravelGuideStrings.travelGuide,
              ),
              XBox(50),
              _buildInfo(
                imgSrc: TravelGuideStrings.topic,
                data: TravelGuideStrings.worldNews,
              ),
            ],
          ),
          Spacer(),
          _buildNextStory(),
        ],
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
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: TravelGuideColors.whiteColor,
          ),
        ),
      ],
    );
  }

  Widget _buildNextStory() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
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
          TravelGuideStrings.nextStory,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: TravelGuideColors.pinkColor,
          ),
        ),
        XBox(5),
        Icon(
          Icons.arrow_forward_ios,
          size: 14,
          color: TravelGuideColors.whiteColor,
        ),
      ],
    );
  }
}
