import 'package:flutter/material.dart';

class Home_page extends StatelessWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text("WhatsApp"),
          bottom: const TabBar(
            tabs: [
              Icon(Icons.camera_alt),
              Text("Chats"),
              Text("Status"),
              Text("Calls"),
            ],
          ),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (
                  context,
                ) =>
                    [
                      const PopupMenuItem(
                        child: Text("New Group"),
                      ),
                      const PopupMenuItem(
                        child: Text("Settings"),
                      ),
                      const PopupMenuItem(
                        child: Text("Logout"),
                      ),
                    ]),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Text("camera"),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return index % 2 == 0
                      ? Container(
                        child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage("assets/saad.jpeg"),
                            ),
                            title: Text("Saad Abbasi"),
                            subtitle: Text("Where are You?"),
                            trailing: Text("5:28 PM"),
                          ),
                      )
                      : ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/safi.jpeg"),
                          ),
                          title: Text("Saad Abbasi"),
                          subtitle: Text("kam ho gaya?"),
                          trailing: Text("6:48 PM"),
                        );
                }),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return index% 2==0? ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.green,
                          width: 3,
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/saad.jpeg"),
                      ),
                    ),
                    title: Text("saad"),
                   subtitle: Text("41 minutes ago"),
                  ):ListTile(
                  leading: Container(
                  decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                  color: Colors.green,
                  width: 3,
                  ),
                  ),
                  child: CircleAvatar(
                  backgroundImage: AssetImage("assets/safi.jpeg"),
                  ),
                  ),
                  title: Text("Safi"),
                  subtitle: Text("21 minutes ago"),
                  );
                }),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return index % 2==0? ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/safi.jpeg"),
                    ),
                    title: Text("Saad Abbasi"),
                    subtitle: Text("call time is 12:43 Pm"),
                    trailing: Icon(Icons.video_call),
                  ):ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/saad.jpeg"),
                    ),
                    title: Text("Saad Abbasi"),
                    subtitle: Text("You have missed a call"),
                    trailing: Icon(Icons.phone),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
