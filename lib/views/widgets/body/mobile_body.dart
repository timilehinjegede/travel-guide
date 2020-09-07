import 'package:flutter/material.dart';
import 'package:travel_guide/models/post.dart';
import 'package:travel_guide/utils/colors.dart';
import 'package:travel_guide/utils/utils.dart';

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
        children: [
          Text('Quisque viverra interdum velit?'),
          Text(
            'Culpa qui officia deserunt mollit anim id esto polujimi laborum. Sed ut perspiciatis unde omnis iste eropluk onatuspop error sit voluptartem accusantium wetrop doloremque laudantium, totam rem aperiam, eaquep ipsa quaeer ab illo inventore veritatisy et quasi weth ropeior architecto beatae vitae dicta sunt explicapbo. Nemo popul eniem ipsam yui voluptatem quialoperyi voluptas sit aspernatur aute odit aut fugit, sed quiawi consequuntur joki erty magni dolores eosep quiklopii ratione wertyuil voluptatem sequi nesciunt. Nequeop porro polu quisquam est, quepi dolorem ipsum quiat lopi dolor srit amet, consectetur adipisci velit, topitop seid quia non numquam eiuris modij tempora poluko incidunt ut labore et dolore magnam aliquam mokeru quaerat iope voluptatem. Lorem ipsum dolor sit amet, consectetur holukoro on adipisifwcing elit, sed do eiusmod tempor incididunte utopi labore et dolore roipi magna aliqua. Ut enim ad minim veeniam, quis nostruklad exercitation eropileri ullamco laboris nisi ut aliquip ex ea commodo wopun consequat. Duis aute irure dolor in reprehenderit inie tufpoy voluptate velit esse cillum dolore eu fugiat holi nulla parieratur. Excepteur sint occaecat ropukuli uki cupidatat.',
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 15.0,
            ),
            child: Divider(
              color: TravelGuideColors.darkGreyColor,
              height: 2,
            ),
          ),

          BuildPost(
            post: Post.postLists[0],
          ),
          BuildPost(
            post: Post.postLists[1],
          ),
          // build post
        ],
      ),
    );
  }
}

class BuildPost extends StatelessWidget {
  final Post post;

  const BuildPost({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image(
              image: AssetImage(
                post.imgSrc,
              ),
            ),
            Text(
              post.posterName,
            ),
          ],
        ),
        Text(
          post.postBody,
        ),
        Row(
          children: [
            Icon(
              Icons.access_time,
            ),
            Text(
              post.timePosted,
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
                    ),
                  ),
                ),
              )
            : SizedBox.shrink(),
      ],
    );
  }
}
