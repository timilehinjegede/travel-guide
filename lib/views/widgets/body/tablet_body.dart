import 'package:flutter/material.dart';
import 'package:travel_guide/models/post.dart';
import 'package:travel_guide/utils/utils.dart';
import 'package:travel_guide/widgets/post.dart';

class TabletBody extends StatelessWidget {
  const TabletBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 35.0,
        vertical: 50.0,
      ),
      child: Column(
        children: <Widget>[
          PostWidget(
            post: Post.postLists[0],
          ),
          YBox(20),
          PostWidget(
            post: Post.postLists[1],
          ),
        ],
      ),
    );
  }
}
