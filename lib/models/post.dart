import 'package:travel_guide/utils/utils.dart';

class Post {
  final String imgSrc;
  final String posterName;
  final String postBody;
  final bool hasAttachments;
  final String timePosted;
  final String attachmentSrc;

  const Post({
    this.imgSrc,
    this.posterName,
    this.postBody,
    this.hasAttachments,
    this.timePosted,
    this.attachmentSrc,
  }) : assert(hasAttachments == true
            ? attachmentSrc != null
            : attachmentSrc == null);

  static List<Post> postLists = const [
    Post(
      imgSrc: TravelGuideStrings.avatar1,
      posterName: 'Jonathan Walker',
      postBody:
          'In hac habitasse platea dictumst. Sed nec venenatis odio. Nulla faucibus ipsum sed faucibus accumsa consequat, nunc a preti consequat, nunc a preti rhoncus luctus massa vitae lobortis. Duis consequat, nunc a preti consequat, nunc a preti consequat, nunc a preti',
      hasAttachments: false,
      timePosted: '2m',
    ),
    Post(
      imgSrc: TravelGuideStrings.avatar2,
      posterName: 'Brenda Mercer',
      postBody:
          'Nulla faucibus ipsum sed faucibus accumsan. Donec rhoncus luctus massa vitae lobortis. Duis consequat, nunc a preti consequat, nunc a preti consequat, nunc a preti',
      hasAttachments: true,
      timePosted: '1h',
      attachmentSrc: TravelGuideStrings.infoImage,
    ),
  ];
}
