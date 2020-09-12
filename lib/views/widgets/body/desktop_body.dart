import 'package:flutter/material.dart';
import 'package:travel_guide/models/post.dart';
import 'package:travel_guide/utils/utils.dart';
import 'package:travel_guide/widgets/post.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        PostWidget(
          post: Post.postLists[0],
        ),
        YBox(20),
        PostWidget(
          post: Post.postLists[1],
        ),
      ],
    );
  }
}
