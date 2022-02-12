import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/model/post_model.dart';
import 'package:instagram_ui/model/story_model.dart';

class Feedpage extends StatefulWidget {
static final String id = 'feed_page';
  @override
  _FeedpageState createState() => _FeedpageState();
}

class _FeedpageState extends State<Feedpage> {
  List<Story> _stories = [
    Story("assets/images/user_1.jpeg", "Jazmin"),
    Story("assets/images/user_2.jpeg", "Sylvester"),
    Story("assets/images/user_3.jpeg", "Lavina"),
    Story("assets/images/user_1.jpeg", "Jazmin"),
    Story("assets/images/user_2.jpeg", "Sylvester"),
    Story("assets/images/user_3.jpeg", "Lavina"),
  ];

  List<Post> _posts = [
    Post(
         "assets/images/user_1.jpeg",
        "Brianne",
         "assets/images/feed_1.jpeg",
        "Consequatur nihil aliquid omnis consequatur."),
    Post(
         "assets/images/user_2.jpeg",
        "Henri",
         "assets/images/feed_2.jpeg",
         "Consequatur nihil aliquid omnis consequatur."),
    Post(
         "assets/images/user_3.jpeg",
        "Mariano",
         "assets/images/feed_3.jpeg",
         "Consequatur nihil aliquid omnis consequatur."),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              const Divider(),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Stories",
                      style: TextStyle(
                        color: Colors.blueGrey, fontSize: 14,
                      ),
                    ),
                    Text(
                      "Watch All",
                      style: TextStyle(

                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              // #story list
              Container(
                height: 110,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(vertical: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: _stories.map((story) {
                    return _itemOfStory(story);
                  }).toList(),
                ),
              ),
              //#post list
              Container(
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: _posts.length,
                    itemBuilder: (ctx, i) {
                      return _itemOfPost(_posts[i]);
                    }),
              ),


            ],
          ),
        ),
      ),
    );
  }
  Widget _itemOfStory(Story story){
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70),
            border: Border.all(
              width: 3,
              color: Color(0xFF8e44ad),
            )
          ),
          child: Container(
            padding: EdgeInsets.all(2),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(70),
              child: Image(
                image: AssetImage(story.image),
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
          ),

        ),
        SizedBox(height: 10,),
        Text(story.name,style: TextStyle(color: Colors.blueGrey),),


      ],
    );
  }
  Widget _itemOfPost(Post post){
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          // #header
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image(
                        image: AssetImage(post.userImage),
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(post.userName,style: TextStyle(color: Colors.blueGrey),),
                  ],
                ),
                IconButton(onPressed: () {},
                    icon: Icon(FontAwesomeIcons.ellipsisH, color: Colors.blueGrey, size: 20,)),
              ],
            ),
          ),
          // #image
          FadeInImage(
            image: AssetImage(post.postImage),
            placeholder: AssetImage("assets/images/placeholder.png"),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: (){},
                      icon: Icon(CupertinoIcons.heart)
                  ),
                  IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.comment)
                  ),
                  IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.send)
                  )
                ],
              ),
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.bookmark_outline)
              )
            ],
          ),
          // #tags
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(
              horizontal: 14,
            ),
            child: RichText(
              softWrap: true,
              overflow: TextOverflow.visible,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Liked By ",
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  TextSpan(
                    text: "Sigmund,",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey),
                  ),
                  TextSpan(
                    text: " Yessenia,",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey),
                  ),
                  TextSpan(
                    text: " Dayana",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey),
                  ),
                  TextSpan(
                    text: " and",
                    style: TextStyle(
                      color: Colors.blueGrey,
                    ),
                  ),
                  TextSpan(
                    text: " 1263 others",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 5,
            ),
            child: RichText(
              softWrap: true,
              overflow: TextOverflow.visible,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: post.userName,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey),
                  ),
                  TextSpan(
                    text: " ${post.caption}",
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                ],
              ),
            ),
          ),

          // #post date
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 14,
            ),
            alignment: Alignment.topLeft,
            child: Text(
              "Febuary 2020",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.blueGrey),
            ),
          ),
        ],
      ),
    );
  }
}
