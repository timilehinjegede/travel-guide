class Post {
  final String imgSrc;
  final String posterName;
  final String postBody;
  final bool hasAttachments;
  final String timePosted;

  const Post({
    this.imgSrc,
    this.posterName,
    this.postBody,
    this.hasAttachments,
    this.timePosted,
  });

  static List<Post> postLists = const [
    Post(
      imgSrc: '',
      posterName: '',
      postBody: '',
      hasAttachments: false,
      timePosted: '',
    ),
    Post(
      imgSrc: '',
      posterName: '',
      postBody: '',
      hasAttachments: true,
      timePosted: '',
    ),
  ];
}
