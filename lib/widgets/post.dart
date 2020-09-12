import 'package:flutter/material.dart';
import 'package:travel_guide/models/post.dart';
import 'package:travel_guide/utils/utils.dart';

class PostWidget extends StatelessWidget {
  final Post post;

  const PostWidget({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 17,
              backgroundImage: AssetImage(
                post.imgSrc,
              ),
            ),
            XBox(15),
            Text(
              post.posterName,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        YBox(15),
        Text(
          post.postBody,
          style: TextStyle(
            fontSize: 14,
            height: 1.3,
          ),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        YBox(8),
        Row(
          children: [
            Icon(
              Icons.access_time,
              size: 16,
              color: TravelGuideColors.lighGreyColor,
            ),
            XBox(3),
            Text(
              post.timePosted,
              style: TextStyle(
                fontSize: 12,
                color: TravelGuideColors.lighGreyColor,
              ),
            ),
          ],
        ),
        YBox(20),
        post.hasAttachments
            ? Container(
                height: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      post.attachmentSrc,
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                child: Center(
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 2,
                        color: TravelGuideColors.whiteColor,
                      ),
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      color: TravelGuideColors.whiteColor,
                      size: 20,
                    ),
                  ),
                ),
              )
            : SizedBox.shrink(),
      ],
    );
  }
}
