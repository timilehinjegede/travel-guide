import 'package:flutter/material.dart';
import 'package:travel_guide/models/post.dart';
import 'package:travel_guide/utils/colors.dart';
import 'package:travel_guide/utils/utils.dart';
import 'package:travel_guide/widgets/post.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TravelGuideStrings.bodyHeading,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          YBox(10),
          Text(
            TravelGuideStrings.bodyContent,
            style: TextStyle(
              fontSize: 14,
              color: TravelGuideColors.lighGreyColor,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 30.0,
            ),
            child: Divider(
              color: TravelGuideColors.lighGreyColor,
              height: 2,
            ),
          ),

          PostWidget(
            post: Post.postLists[0],
          ),

          YBox(20),
          
          PostWidget(
            post: Post.postLists[1],
          ),
          // build post
        ],
      ),
    );
  }
}

