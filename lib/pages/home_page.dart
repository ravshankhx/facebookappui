import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          title: Text(
            "facebook",
            style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              iconSize: 30,
                color: Colors.grey[300],
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                )),
            IconButton(
              iconSize: 30,
                color: Colors.grey[300],
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt,
                ))
          ],
        ),
        backgroundColor: Colors.grey[700],
        body: ListView(
          children: [
            //post create
            Container(
              height: 120,
              color: Colors.black,
              margin: EdgeInsets.only(top: 0),
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Column(
                children: [
                  Expanded(
                      child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/images/user_5.jpeg"),
                            )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Container(
                        height: 45,
                        padding: EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(23),
                                topLeft: Radius.circular(23),
                                bottomRight: Radius.circular(23),
                                bottomLeft: Radius.circular(23)),
                            border: Border.all(
                              width: 1,
                              color: Colors.grey[500]!,
                            )),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "What's on your mind",
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.grey[700])),
                        ),
                      ))
                    ],
                  )),
                  Expanded(
                      child: Row(
                    children: [
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.video_call,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Live",style: TextStyle(color: Colors.grey[500]),)
                        ],
                      )),
                      Container(
                        margin: EdgeInsets.only(top: 14, bottom: 14),
                        width: 1,
                        color: Colors.grey[300],
                      ),
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.photo,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Photo",style: TextStyle(color: Colors.grey[500]),)
                        ],
                      )),
                      Container(
                        margin: EdgeInsets.only(top: 14, bottom: 14),
                        width: 1,
                        color: Colors.grey[300],
                      ),
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Check in",style: TextStyle(color: Colors.grey[500]),)
                        ],
                      )),
                    ],
                  ))
                ],
              ),
            ),
            //post stories
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(top: 10, bottom: 10),
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  makeStory(
                      storyImage: "assets/images/story_5.jpeg",
                      userImage: "assets/images/user_5.jpeg",
                      userName: "User Five"),
                  makeStory(
                      storyImage: "assets/images/story_4.jpeg",
                      userImage: "assets/images/user_4.jpeg",
                      userName: "User Four"),
                  makeStory(
                      storyImage: "assets/images/story_3.jpeg",
                      userImage: "assets/images/user_3.jpeg",
                      userName: "User Three"),
                  makeStory(
                      storyImage: "assets/images/story_2.jpeg",
                      userImage: "assets/images/user_2.jpeg",
                      userName: "User two"),
                  makeStory(
                      storyImage: "assets/images/story_1.jpeg",
                      userImage: "assets/images/user_1.jpeg",
                      userName: "User One"),
                ],
              ),
              color: Colors.black,
            ),
            //post feed
            makeFeed(
                feedImage1: "assets/images/story_5.jpeg",
                feedImage2: "assets/images/story_1.jpeg",
                userImage: "assets/images/user_5.jpeg",
                userName: "User Five",
                feedTime: '1 hr ago',
                feedText: 'All the Lorem Ipsum generators on the internet tend to repeat predefined'),
            makeFeed(
                feedImage1: "assets/images/story_1.jpeg",
                feedImage2: "assets/images/story_2.jpeg",
                userImage: "assets/images/user_1.jpeg",
                userName: "User One",
                feedTime: '1 hr ago',
                feedText: 'All the Lorem Ipsum generators on the internet tend to repeat predefined'),
            makeFeed(
                feedImage1: "assets/images/story_2.jpeg",
                feedImage2: "assets/images/story_5.jpeg",
                userImage: "assets/images/user_2.jpeg",
                userName: "User two",
                feedTime: '1 hr ago',
                feedText: 'All the Lorem Ipsum generators on the internet tend to repeat predefined'),
            makeFeed(
                feedImage1: "assets/images/story_4.jpeg",
                feedImage2: "assets/images/story_1.jpeg",
                userImage: "assets/images/user_4.jpeg",
                userName: "User Four",
                feedTime: '1 day ago',
                feedText: 'All the Lorem Ipsum generators on the internet tend to repeat predefined'),
            makeFeed(
                feedImage1: "assets/images/story_3.jpeg",
                feedImage2: "assets/images/story_2.jpeg",
                userImage: "assets/images/user_3.jpeg",
                userName: "User three",
                feedTime: '1 hr ago',
                feedText: 'All the Lorem Ipsum generators on the internet tend to repeat predefined'),
          ],
        ));
  }

  Widget makeStory({userImage, userName, storyImage}) {
    return AspectRatio(
      aspectRatio: 1.3 / 2,
      child: Container(
        margin: EdgeInsets.only(right: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage(storyImage), fit: BoxFit.cover)),
        child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.1),
                ])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue, width: 2),
                      image: DecorationImage(
                          image: AssetImage(userImage), fit: BoxFit.cover)),
                ),
                Text(
                  userName,
                  style: TextStyle(color: Colors.grey[400]),
                )
              ],
            )),
      ),
    );
  }

  Widget makeFeed({userName, userImage, feedTime, feedImage1,feedImage2, feedText}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.black,
      //height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //part1
          Container(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(
                                    userImage,
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              userName,
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              feedTime,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[700],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                        color: Colors.grey[600],
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_horiz,
                          size: 30,
                        )),
                  ],
                ),
                SizedBox(height: 20,),
                Text(
                  feedText,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[600],
                      height: 1.5,
                      letterSpacing: 0.7),
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
          //photo
          Row(
              children: [
                Expanded(child: Container(
                  height: 240,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(feedImage1), fit: BoxFit.cover)),
                ),),
                Expanded(child: Container(
                  height: 240,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(feedImage2), fit: BoxFit.cover)),
                ),)
              ],
            ),


          //likes
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    makeLike(),
                    Transform.translate(
                      offset: Offset(-5, 0),
                      child: makeLove(),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "2.5k",
                      style: TextStyle(fontSize: 15, color: Colors.grey[800]),
                    )
                  ],
                ),
                Text(
                  "400 Comments",
                  style: TextStyle(fontSize: 13, color: Colors.grey[800]),
                ),
              ],
            ),
          ),
          //like comment share
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeLikeButton(isActive: false),
              makeCommentButton(),
              makeShareButton()
            ],
          ),
          SizedBox(height: 15,)
        ],
      ),
    );
  }

  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)),
      child: Center(
        child: Icon(
          Icons.thumb_up,
          size: 12,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)),
      child: Center(
        child: Icon(
          Icons.favorite,
          size: 12,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget makeLikeButton({isActive}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.thumb_up,
            color: isActive ? Colors.blue : Colors.grey,
            size: 18,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "Like",
            style: TextStyle(color: isActive ? Colors.blue : Colors.grey),
          )
        ],
      )),
    );
  }

  Widget makeCommentButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.chat,
            color: Colors.grey,
            size: 18,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "Comment",
            style: TextStyle(color: Colors.grey),
          )
        ],
      )),
    );
  }

  Widget makeShareButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.share,
            color: Colors.grey,
            size: 18,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "Share",
            style: TextStyle(color: Colors.grey),
          )
        ],
      )),
    );
  }
}
