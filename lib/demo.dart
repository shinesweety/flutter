import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
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
        "username": "Ragavan",
        "text": "What Happened?",
        "urlAvatar":
            "https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI="
      },
      {
        "username": "Mathew",
        "text": "Is everything goes well?",
        "urlAvatar":
            "https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI="
      },
      {
        "username": "David",
        "text": "Hey there...!",
        "urlAvatar":
            "https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI="
      },
      {
        "username": "John",
        "text": "shall we go?",
        "urlAvatar":
            "https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI="
      },
      {
        "username": "Fernandes",
        "text": "Call me now!",
        "urlAvatar":
            "https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI="
      },
      {
        "username": "Arthur",
        "text": "I have a request",
        "urlAvatar":
            "https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI="
      },
      {
        "username": "Lucy",
        "text": "What Happened?",
        "urlAvatar":
            "https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI="
      },
      {
        "username": "Linda",
        "text": "Is everything goes well?",
        "urlAvatar":
            "https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI="
      },
      {
        "username": "Hokins",
        "text": "What Happened?",
        "urlAvatar":
            "https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI="
      },
      {
        "username": "Peter",
        "text": "Hey shall we meet?",
        "urlAvatar":
            "https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI="
      },
      {
        "username": "Ron",
        "text": "task is assigned to you",
        "urlAvatar":
            "https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI="
      },
      {
        "username": "Willson",
        "text": "What about the project?",
        "urlAvatar":
            "https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI="
      },
      {
        "username": "Herman",
        "text": "Tell me the progess",
        "urlAvatar":
            "https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI="
      },
      {
        "username": "Jonathan",
        "text": "is the plan goes well?",
        "urlAvatar":
            "https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI="
      },
    ];
    return data.map<User>(User.fromJson).toList();
  }

  @override
  Widget build(BuildContext context) {
    final tabs = [
      // Chats Tab
      ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return SingleChildScrollView(
            child: TextButton(
              onPressed: () {
                print("clicked");
              },
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(user.urlAvatar),
                ),
                title: Text(user.username),
                subtitle: Text(user.text),
                trailing: Column(children: [
                  Text(
                    "01:20 pm",
                    style: TextStyle(fontSize: 12, color: Color(0xFF0FCE5E)),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: Color(0xFF0FCE5E),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "2",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  )
                ]),
              ),
            ),
          );
        },
      ),

      // Calls Tab
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Ink(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.teal),
              child: IconButton(
                onPressed: () {},
                icon: Icon(MdiIcons.link),
                color: Colors.white,
              ),
            ),
            title: Text('Create call link'),
            subtitle: Text('Share a link for your WhatsApp call'),
          ),
          Text('    Recent'),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/person.jpeg"),
              ),
              title: Text('Fernandes(2)'),
              subtitle: RichText(
                  text: TextSpan(children: [
                WidgetSpan(
                    child: Icon(
                  MdiIcons.arrowTopRight,
                  color: Colors.green,
                  size: 15,
                )),
                TextSpan(
                    text: "  May 2, 10:28 PM",
                    style: TextStyle(color: Colors.black))
              ])),
              trailing: Icon(
                MdiIcons.phone,
                color: Colors.green,
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/person.jpeg"),
              ),
              title: Text('Jonathan(1)'),
              subtitle: RichText(
                  text: TextSpan(children: [
                WidgetSpan(
                    child: Icon(
                  MdiIcons.arrowBottomLeft,
                  color: Colors.red,
                  size: 15,
                )),
                TextSpan(
                    text: "  May 1, 02:50 PM",
                    style: TextStyle(color: Colors.black))
              ])),
              trailing: Icon(
                MdiIcons.phone,
                color: Colors.green,
              ),
            ),
          )
        ],
      ),

      // Updates Tab
      Center(
        child: Text('Updates Tab'),
      ),

      // Tools Tab
      Center(
        child: Text('Tools Tab'),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Whatsapp', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt_rounded),
              color: Colors.white),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: Colors.white),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
            color: Colors.white,
          ),
        ],
      ),
      body: tabs[index],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(MdiIcons.messagePlus),
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromARGB(255, 2, 2, 2).withOpacity(.90),
        unselectedItemColor: Color.fromARGB(196, 95, 93, 93),
        items: [
          const BottomNavigationBarItem(
            label: 'Chats',
            icon: Icon(MdiIcons.messageText),
          ),
          const BottomNavigationBarItem(
            label: 'Calls',
            icon: Icon(MdiIcons.phoneOutline),
          ),
          const BottomNavigationBarItem(
            label: 'Updates',
            icon: Icon(MdiIcons.update),
          ),
          const BottomNavigationBarItem(
            label: 'Tools',
            icon: Icon(MdiIcons.store),
          ),
        ],
        onTap: (current_index) {
          setState(() {
            index = current_index;
          });
        },
      ),
    );
  }
}
