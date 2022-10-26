import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int like_counter = 0;
  final bool like = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  //User name, profile pic
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpAETZmnz560fRzZJXEzKDU1MV4944HZMUEw&usqp=CAU"),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("@mekrisha",style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text(" in chandkheda")
                                ],
                              ),
                              Text("1 hour and 31 min ago", style: TextStyle(color: Colors.black38),)
                            ],
                          )
                        ],
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz, color: Colors.black38,))
                    ],
                  ),



                  //Description
                  Padding(
                    padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
                    child: Text(
                      "looking for a good animal doctor in chandkheda, anybody can suggest ??",
                      style: TextStyle(
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),

                  //Image
                  Padding(
                      padding: EdgeInsets.all(4),
                      child: Image.asset('Dog.png')),

                  //underline
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          border: Border.all(color: Colors.black12, width: 1)
                      ),
                    ),
                  ),
                  //Like, comments, share buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  like != like;
                                  if(like){
                                    like_counter = 1;
                                  }else{
                                    like_counter = 0;
                                  }
                                });
                              }, icon: Icon(Icons.thumb_up, color: like ? Colors.red : Colors.black38,)),
                          Text("${like_counter} Likes", style: TextStyle(color: Colors.black38),),
                          IconButton(onPressed: () {} , icon: Icon(Icons.comment, color: Colors.black38,)),
                          Text("0 comments", style: TextStyle(color: Colors.black38),),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.share,color: Colors.black38,)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.save_outlined, color: Colors.black38,))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  //User name, profile pic
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpAETZmnz560fRzZJXEzKDU1MV4944HZMUEw&usqp=CAU"),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("@dhruv_20",style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text(" in jantanagar")
                                ],
                              ),
                              Text("10 min ago", style: TextStyle(color: Colors.black38),)
                            ],
                          )
                        ],
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz, color: Colors.black38,))
                    ],
                  ),



                  //Description
                  Padding(
                    padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
                    child: Text(
                      "me and my new friends are going for food kit distribution to poor child tomorrow, if anybody wants to join us. Do let me know. Tomorrow at 09:30 am. We all will meet at GNK ground.",
                      style: TextStyle(
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),

                  //underline
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          border: Border.all(color: Colors.black12, width: 1)
                      ),
                    ),
                  ),
                  //Like, comments, share buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  like != like;
                                  if(like){
                                    like_counter = 1;
                                  }else{
                                    like_counter = 0;
                                  }
                                });
                              }, icon: Icon(Icons.thumb_up, color: like ? Colors.red : Colors.black38,)),
                          Text("${like_counter} Likes", style: TextStyle(color: Colors.black38),),
                          IconButton(onPressed: () {} , icon: Icon(Icons.comment, color: Colors.black38,)),
                          Text("0 comments", style: TextStyle(color: Colors.black38),),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.share,color: Colors.black38,)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.save_outlined, color: Colors.black38,))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
