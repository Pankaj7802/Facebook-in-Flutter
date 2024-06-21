import 'package:flutter/material.dart';

class FacebookHomePage extends StatelessWidget {
  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
              // width: 500,
              child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                          text: "facebook",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontFamily: "italic",
                              color: Colors.blue)),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Icon(
                      Icons.add_circle,
                      size: 30,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 11,
                    ),
                    Icon(
                      Icons.search_outlined,
                      size: 30,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 11,
                    ),
                    Icon(
                      Icons.map,
                      size: 30,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 25,
                    )
                  ],
                ),
              ],
            ),
          )),
          backgroundColor: Colors.white,
        ),
        body: Container(
            child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(
            //   height: 11,
            // ),
            Container(
              height: 20,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 4,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Text("hello"),
                            ));
                      },
                      child: Icon(
                        Icons.home,
                        size: 40,
                        color: Colors.blueGrey,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Text("hello"),
                            ));
                      },
                      child: Icon(
                        Icons.play_arrow,
                        size: 40,
                        color: Colors.blueGrey,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Text("hello"),
                            ));
                      },
                      child: Icon(
                        Icons.account_circle,
                        size: 40,
                        color: Colors.blueGrey,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Text("hello"),
                            ));
                      },
                      child: Icon(
                        Icons.mark_as_unread,
                        size: 35,
                        color: Colors.blueGrey,
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Text("hello"),
                            ));
                      },
                      child: Icon(
                        Icons.notification_add,
                        color: Colors.blueGrey,
                        size: 35,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Text("hello"),
                            ));
                      },
                      child: Icon(
                        Icons.menu,
                        color: Colors.blueGrey,
                        size: 35,
                      ),
                    ),
                  ]),
            ),
            SizedBox(height: 30),

            Container(
              height: 40,
              child: ListTile(
                leading: SizedBox(
                  height: 100,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/icon.png"),
                    backgroundColor: Colors.blue,
                  ),
                ),
                title: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                      label: Text(
                        " Write Something here ...",
                        style: TextStyle(),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                      )),
                ),
                trailing: Icon(
                  Icons.photo_library_outlined,
                  color: Colors.green.shade800,
                  size: 40,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
              // color: Colors.blue,
              child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 15,
                    width: 100,
                    // color: Colors.blueGrey,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(11),
                        color: Colors.blueGrey),

                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/icon.png"),
                            backgroundColor: Colors.green,
                            maxRadius: 20,
                            minRadius: 15,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Name',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                itemCount: 100,
                scrollDirection: Axis.horizontal,
                itemExtent: 100,
              ),
            )),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: ListView.separated(
                  itemBuilder: (BuildContext, context) {
                    return Column(
                      children: [
                        ListTile(
                            leading: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/logo.png'),
                              backgroundColor: Colors.blueGrey,
                            ),
                            title: Container(
                              child: Row(
                                children: [
                                  Text(
                                    'Name',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 150,
                                  ),
                                  Icon(Icons.linear_scale_outlined),
                                ],
                              ),
                            ),
                            subtitle: Text("description"),
                            trailing: Icon((Icons.cut))),
                        SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          title: Container(
                            width: 200,
                            height: 200,
                            color: Colors.blueGrey,
                            // child: Image.asset('assets/images/logo.png'),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Icon(Icons.library_add_check),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("like"),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Icon(Icons.comment),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("comment"),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Icon(Icons.send),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Send')
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Icon(Icons.share_rounded),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('share')
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    );
                  },
                  itemCount: 100,
                  separatorBuilder: (context, index) {
                    return Divider(
                      thickness: 4,
                      height: 10,
                    );
                  },
                ),
              ),
            ),
          ],
        )));
  }
}
