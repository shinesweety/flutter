import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';
import 'user.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late List<User> users;
  int index = 0;

  @override
  void initState() {
    super.initState();
    users = getUser();
  }

  static List<User> getUser() {
    const data = [
      {
        "username": "Shine",
        "text": "What are you doing?",
        "urlAvatar": "assets/images/person.jpeg"
      },
      {
        "username": "Sweety",
        "text": "Hi, How are you",
        "urlAvatar": "assets/images/person.jpeg"
      },
      {
        "username": "bob",
        "text": "good day out",
        "urlAvatar": "assets/images/person.jpeg"
      },
      {
        "username": "alex",
        "text": "come on lets do it",
        "urlAvatar": "assets/images/person.jpeg"
      },
      {
        "username": "alice",
        "text": "No its to late",
        "urlAvatar": "assets/images/person.jpeg"
      },
      {
        "username": "sarah",
        "text": "When you will come?",
        "urlAvatar": "assets/images/person.jpeg"
      },
      {
        "username": "reena",
        "text": "Had a dinner?",
        "urlAvatar": "assets/images/person.jpeg"
      },
      {
        "username": "Shine",
        "text": "What are you doing?",
        "urlAvatar": "assets/images/person.jpeg"
      },
      {
        "username": "Sweety",
        "text": "Hi, How are you",
        "urlAvatar": "assets/images/person.jpeg"
      },
      {
        "username": "bob",
        "text": "good day out",
        "urlAvatar": "assets/images/person.jpeg"
      },
    ];
    return data.map<User>(User.fromJson).toList();
  }

  @override
  Widget build(BuildContext context) {
    final tabs = [
      //chats

      ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            return SingleChildScrollView(
              child: TextButton(
                  onPressed: () {},
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(user.urlAvatar),
                    ),
                    title: Text(user.username),
                    subtitle: RichText(
                        text: TextSpan(children: [
                      WidgetSpan(
                          child: Icon(
                        MdiIcons.checkAll,
                        color: Colors.grey,
                        size: 18,
                      )),
                      TextSpan(
                          text: user.text,
                          style: TextStyle(color: Colors.black))
                    ])),
                    trailing: Column(
                      children: [
                        Text(
                          "03:35",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    ),
                  )),
            );
          }),

      //UPDATES
      ListView(
        children: [
          ListTile(
            title: Text(
              '  Status',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.more_vert),
          ),
          ListTile(
            leading: Ink(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.grey),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.person),
                color: Colors.white,
              ),
            ),
            title: Text('My status'),
            subtitle: Text('Tap to add status update'),
          ),
          Text(
            '  Recent updates',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          ListTile(
            leading: Ink(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.grey),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.person),
                color: Colors.white,
              ),
            ),
            title: Text('Harry'),
            subtitle: Text('5:38 pm'),
          ),
          ListTile(
            leading: Ink(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.grey),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.person),
                color: Colors.white,
              ),
            ),
            title: Text('Alice'),
            subtitle: Text('Yesterday'),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text('  Viewed updates'),
            trailing: Icon(MdiIcons.chevronDown),
          ),
          ListTile(
            leading: Ink(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.grey),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.person),
                color: Colors.white,
              ),
            ),
            title: Text('karan'),
            subtitle: Text('Yesterday'),
          ),
          SizedBox(
            height: 2,
            child: ColoredBox(color: const Color.fromARGB(255, 227, 225, 225)),
          ),
          ListTile(
            title: Text(
              "Channels",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
                'Stay updated on topics that matter to you. Find channels to follow below'),
            trailing: Icon(Icons.add),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CustomCard(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 120,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage("assets/images/c1.jpeg"),
                                    height: 70,
                                    width: 70,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "WhatsApp",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Follow'),
                                    style: ElevatedButton.styleFrom(
                                        shape: StadiumBorder(),
                                        backgroundColor:
                                            Color.fromARGB(255, 148, 238, 151),
                                        foregroundColor:
                                            Color.fromARGB(255, 9, 46, 11)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      borderRadius: 10,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CustomCard(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 120,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage("assets/images/c2.jpeg"),
                                    height: 70,
                                    width: 70,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "WhatsApp",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Follow'),
                                    style: ElevatedButton.styleFrom(
                                        shape: StadiumBorder(),
                                        backgroundColor:
                                            Color.fromARGB(255, 148, 238, 151),
                                        foregroundColor:
                                            Color.fromARGB(255, 9, 46, 11)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      borderRadius: 10,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CustomCard(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 120,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage("assets/images/c1.jpeg"),
                                    height: 70,
                                    width: 70,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "WhatsApp",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Follow'),
                                    style: ElevatedButton.styleFrom(
                                        shape: StadiumBorder(),
                                        backgroundColor:
                                            Color.fromARGB(255, 148, 238, 151),
                                        foregroundColor:
                                            Color.fromARGB(255, 9, 46, 11)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      borderRadius: 10,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CustomCard(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 120,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage("assets/images/c2.jpeg"),
                                    height: 70,
                                    width: 70,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "WhatsApp",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Follow'),
                                    style: ElevatedButton.styleFrom(
                                        shape: StadiumBorder(),
                                        backgroundColor:
                                            Color.fromARGB(255, 148, 238, 151),
                                        foregroundColor:
                                            Color.fromARGB(255, 9, 46, 11)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      borderRadius: 10,
                    ),
                  ),
                ]),
          ),
          ListTile(
            leading: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Explore more',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xFF0FCE5E)),
            ),
          )
        ],
      ),

      //communities

      ListView(
        children: [
          ListTile(
            leading: Ink(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.grey),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.groups),
                color: Colors.white,
              ),
            ),
            title: Text(
              'New Community',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Padding(padding: EdgeInsets.all(5)),
          SizedBox(
            height: 8,
            width: double.infinity,
            child: ColoredBox(color: const Color.fromARGB(255, 227, 225, 225)),
          ),
          ListTile(
            leading: Ink(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.grey),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.groups),
                color: Colors.white,
              ),
            ),
            title: Text('KSRCT-LETSWRITE-Compilation'),
          ),
          SizedBox(
              height: 2,
              width: double.infinity,
              child:
                  ColoredBox(color: const Color.fromARGB(255, 227, 225, 225))),
          ListTile(
            leading: Ink(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF0FCE5E)),
              child: IconButton(
                onPressed: () {},
                icon: Icon(MdiIcons.bullhorn),
                color: Colors.white,
              ),
            ),
            title: Text('Announcements'),
            subtitle: Text('join other topic based group...'),
            trailing: Text('06/04/2024'),
          ),
          ListTile(
            leading: Ink(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.grey),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.group),
                color: Colors.white,
              ),
            ),
            title: Text('KSRCT-IT(2022-2026)'),
            subtitle: Text('Alice created this community'),
            trailing: Text('29/04/2024'),
          ),
          ListTile(
            leading: Icon(MdiIcons.chevronRight),
            title: Text('View all'),
          ),
          SizedBox(
              height: 8,
              width: double.infinity,
              child:
                  ColoredBox(color: const Color.fromARGB(255, 227, 225, 225)))
        ],
      ),

      //calls
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Ink(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Color(0xFF0FCE5E)),
              child: IconButton(
                onPressed: () {},
                icon: Icon(MdiIcons.link),
                color: Colors.white,
              ),
            ),
            title: Text('Create call link'),
            subtitle: Text('Share a link for your WhatsApp call'),
          ),
          Text('   Recent'),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/images/person.jpeg"),
              ),
              title: Text('Sweety(1)'),
              subtitle: RichText(
                  text: TextSpan(children: [
                WidgetSpan(
                    child: Icon(
                  MdiIcons.arrowBottomLeft,
                  color: Color(0xFF0FCE5E),
                  size: 18,
                )),
                TextSpan(
                    text: "1 May, 5:49pm",
                    style: TextStyle(color: Colors.black))
              ])),
              trailing: Icon(
                MdiIcons.videoOutline,
                color: Color(0xFF0FCE5E),
                size: 30,
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/images/person.jpeg"),
              ),
              title: Text('Madhu(2)'),
              subtitle: RichText(
                  text: TextSpan(children: [
                WidgetSpan(
                    child: Icon(
                  MdiIcons.arrowTopRight,
                  color: Color(0xFF0FCE5E),
                  size: 18,
                )),
                TextSpan(
                    text: "15 April, 8:12am",
                    style: TextStyle(color: Colors.black))
              ])),
              trailing: Icon(
                MdiIcons.phoneOutline,
                color: Color(0xFF0FCE5E),
                size: 30,
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/images/person.jpeg"),
              ),
              title: Text(
                'Lewin(2)',
                style: TextStyle(color: Colors.red),
              ),
              subtitle: RichText(
                  text: TextSpan(children: [
                WidgetSpan(
                    child: Icon(
                  MdiIcons.arrowBottomLeft,
                  color: Colors.red,
                  size: 18,
                )),
                TextSpan(
                    text: "15 April, 9:57am",
                    style: TextStyle(color: Colors.black))
              ])),
              trailing: Icon(
                MdiIcons.phone,
                color: Color(0xFF0FCE5E),
                size: 30,
              ),
            ),
          ),
        ],
      )
    ];

    return Scaffold(
      appBar: AppBar(
        title: index == 0
            ? Text(
                'WhatsApp',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )
            : index == 1
                ? Text(
                    "Update",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                : index == 2
                    ? Text(
                        "Communities",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    : index == 3
                        ? Text(
                            "Calls",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        : null,
        backgroundColor: Color(0xFF0FCE5E),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
            color: Colors.white,
          ),
        ],
      ),
      body: tabs[index],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor:
              const Color.fromARGB(255, 2, 2, 2).withOpacity(.90),
          unselectedItemColor: Color.fromARGB(196, 95, 93, 93),
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          currentIndex: index,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.message_outlined,
              ),
              label: "Chats",
            ),
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.update),
              label: "Updates",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.groups,
              ),
              label: "Communities",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.call,
              ),
              label: "Calls",
            ),
          ]),
      floatingActionButton: index == 0
          ? FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add_comment, color: Colors.white),
              backgroundColor: Color(0xFF0FCE5E),
            )
          : index == 1
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FloatingActionButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.grey,
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 15)),
                    FloatingActionButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                      backgroundColor: Color(0xFF0FCE5E),
                    ),
                  ],
                )
              : index == 3
                  ? FloatingActionButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.add_call,
                        color: Colors.white,
                      ),
                      backgroundColor: Color(0xFF0FCE5E),
                    )
                  : null,
    );
  }
}
