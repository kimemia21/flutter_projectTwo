import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final title = "home";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _homepage();
}

class _homepage extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.indigo,
          body: SafeArea(
              child: Column(
            children: [
              top(),
              body(context),
            ],
          )),
        ));
  }
}

Widget top() {
  return Container(
    padding: EdgeInsets.only(top: 30, left: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Chat with\nyour friends",
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.black12,
              ),
              child: Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
                child: Container(
              height: 100,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 7,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Avatar(
                      margin: EdgeInsets.only(right: 15),
                      image: "assets/images/${index + 1}.webp",
                    );
                  }),
            ))
          ],
        )
      ],
    ),
  );
}

Widget body(context) {
  return Expanded(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(45), topRight: Radius.circular(45)),
        color: Colors.white,
      ),
      child: ListView(
        padding: EdgeInsets.all(35),
        physics: BouncingScrollPhysics(),
        children: [
          itemChat(
            context,
            name: "kimemia",
            chat:
                "their is an infinite number of story tellers and an infinite stories to tell",
            avatar: "assets/images/1.webp",
            time: "00:00",
          ),
          itemChat(
            context,
            name: "james",
            chat: "infinite stories to tell",
            avatar: "assets/images/2.webp",
            time: "00:34",
          ),
          itemChat(
            context,
            name: "black",
            chat: "We are living to die or dying to live",
            avatar: "assets/images/3.webp",
            time: "00:50",
          ),
          itemChat(
            context,
            name: "Nba Youngboy",
            chat: "Its a parade inside my city yeeeh",
            avatar: "assets/images/4.webp",
            time: "01:36",
          ),
          itemChat(
            context,
            name: "Eliot",
            chat:
                "their is an infinite number of story tellers and an infinite stories to tell",
            avatar: "assets/images/5.webp",
            time: "01:40",
          ),
          itemChat(
            context,
            name: "Darleyne",
            chat: "ready to exploit the server for home",
            avatar: "assets/images/6.webp",
            time: "01:47",
          ),
          itemChat(
            context,
            name: "Mum",
            chat: "Make sure that the house is clean for quests",
            avatar: "assets/images/7.webp",
            time: "01:49",
          ),

          //   itemChat(
          //       avatar: "assets/images/one.webp",
          //       name: "kimemia",
          //       chat: "i think i saw hell broddie",
          //       time: "12/34/3044")
        ],
      ),
    ),
  );
}

Widget itemChat(context,
    {String name = '', chat = '', avatar = '', time = ''}) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => ChatPage()));
    },
    child: Card(
      elevation: 0,
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Avatar(
            image: avatar,
            size: 50,
            margin: EdgeInsets.only(right: 20),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "$name",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "$time",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "$chat",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black54),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}

// Widget body() {
//   return Container(
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.only(
//         topLeft: Radius.circular(45),
//         topRight: Radius.circular(45),
//       ),
//       color: Colors.white,
//     ),
//   );
// }

class ChatPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ChatPage();
  }
}

class _ChatPage extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [_topChat(context), _bodyChat()],
            ),
            formChat()
          ],
        ),
      ),
    );
  }
}

Widget _topChat(context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
//

        Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.arrow_back_ios,
                size: 25,
                color: Colors.white,
              ),
            ),
            Text(
              "kimemia",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),

        Row(
          children: [
            Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.black12),
              child: Icon(
                Icons.call,
                size: 25,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.black12),
              child: Icon(
                Icons.videocam,
                size: 25,
                color: Colors.white,
              ),
            )
          ],
        )

//
      ],
    ),
  );
}

Widget _bodyChat() {
  return Expanded(
    child: Container(
      padding: EdgeInsets.only(right: 25, top: 25, left: 25),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(45),
          topRight: Radius.circular(45),
        ),
        color: Colors.white,
      ),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          _itemChat(
              chat: 0,
              avatar: "assets/images/1.webp",
              message:
                  "Non incididunt quis dolor exercitation aute eu dolore sunt do tempor non duis officia enim.",
              time: "00.00"),
          _itemChat(
              chat: 1,
              avatar: "assets/images/1.webp",
              message: "okey",
              time: "00.00"),
          _itemChat(
              chat: 0,
              avatar: "assets/images/1.webp",
              message: "Non incididunt quis dolor on duis officia enim.",
              time: "00.20"),
          _itemChat(
              chat: 1,
              avatar: "assets/images/1.webp",
              message:
                  " Dolore proident laboris ullamco qui nisi ex ipsum.😆😆.",
              time: "00.45"),
          _itemChat(
              chat: 0,
              avatar: "assets/images/1.webp",
              message:
                  "exercitation aute eu dolore sunt do tempor non duis officia enim.",
              time: "01.00"),
          _itemChat(
              chat: 1,
              avatar: "assets/images/1.webp",
              message: "Easter in miami 😎",
              time: "01.10"),
          _itemChat(
              chat: 1,
              avatar: "assets/images/1.webp",
              message:
                  "Non incididunt quis dolor exercitation aute eu dolore sunt do tempor non duis officia enim.",
              time: "00.00"),
          _itemChat(
              chat: 1,
              avatar: "assets/images/1.webp",
              message:
                  "Non incididunt quis dolor exercitation aute eu dolore sunt do tempor non duis officia enim.",
              time: "00.00"),
          _itemChat(
              chat: 1,
              avatar: "assets/images/1.webp",
              message:
                  "Non incididunt quis dolor exercitation aute eu dolore sunt do tempor non duis officia enim.",
              time: "00.00")
        ],
      ),
    ),
  );
}

Widget _itemChat({required int chat, required String avatar, message, time}) {
  return Row(
    mainAxisAlignment:
        chat == 0 ? MainAxisAlignment.start : MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      chat == 0
          ? Avatar(
              image: avatar,
              size: 50,
            )
          : Text(
              "$time",
              style: TextStyle(color: Colors.grey.shade400),
            ),
      Flexible(
          child: Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: chat == 0 ? Colors.indigo.shade100 : Colors.indigo.shade50,
            borderRadius: chat == 0
                ? BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30))
                : BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
        child: Text("$message"),
      )),
      chat == 0
          ? Text(
              "$time",
              style: TextStyle(color: Colors.grey.shade400),
            )
          : SizedBox(),
    ],
  );
}

Widget formChat() {
  String placeHolder = "Type Something ";
  return Positioned(
      child: Align(
    alignment: Alignment.bottomCenter,
    child: Container(
        //  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        height: 80,
        child: TextField(
          decoration: InputDecoration(
              hintText: placeHolder,
              filled: true,
              fillColor: Colors.indigo.shade300,
              labelStyle: TextStyle(fontSize: 12),
              contentPadding: EdgeInsets.all(20),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.indigo.shade100),
                borderRadius: BorderRadius.circular(25),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.indigo.shade100),
                borderRadius: BorderRadius.circular(25),
              ),
              suffixIcon: Container(
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.indigo),
                child: Icon(
                  Icons.send_rounded,
                  color: Colors.white,
                  size: 24,
                ),
              )),
        )),
  ));
}

class Avatar extends StatelessWidget {
  @override
  final double size;
  final image;
  final EdgeInsets margin;
  Avatar({this.image, this.size = 40, this.margin = const EdgeInsets.all(0)});
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage(image)),
          )),
    );
  }
}
