import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: Scrollbar(
          child: Drawer(
            child: ListView(
              children: [
                Column(
                  children: [
                    //Drawer Header
                    Container(
                      height: 150,
                      color: Colors.green,
                      child: Center(
                        child: Row(
                          children: [
                            Icon(
                              Icons.apple,
                              color: Colors.red,
                            )
                          ],
                        ),
                      ),
                    ),

                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // More Features
                          SizedBox(
                            height: 10,
                          ),
                          groupButtonTitle(text: "More features?"),
                          moreFeatures(),

                          SizedBox(
                            height: 15,
                            child: Divider(),
                          ),

                          //Premium, Only
                          SizedBox(
                            height: 10,
                          ),
                          groupButtonTitle(text: "Premium Only"),
                          // Text("Premium Only",
                          //     style: TextStyle(color: Colors.grey)),

                          premiumOnly(),

                          SizedBox(
                            height: 15,
                            child: Divider(),
                          ),

                          //Farm Account
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Farm Account",
                            style: TextStyle(color: Colors.grey),
                          ),
                          farmAccount(),

                          SizedBox(
                            height: 15,
                            child: Divider(),
                          ),

                          //Preferences
                          SizedBox(
                            height: 10,
                          ),
                          groupButtonTitle(text: "Preferences"),

                          prefrences(),

                          SizedBox(
                            height: 15,
                            child: Divider(),
                          ),
                        ]),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 310,
                crossAxisSpacing: 5,
                childAspectRatio: 3,
                mainAxisSpacing: 0,
                mainAxisExtent: 160),
            itemCount: 5,
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
                child: Card(
                  elevation: 5.5,
                  child: InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          //color: Colors.amber,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(child: Text("FARMER")),
                    ),
                    onTap: () {},
                  ),
                ),
              );
            }));
  }
}

/////////////DRAWER WIDGETS////////////////////
Widget moreFeatures() {
  return ButtonItem(icon: Icons.star, text: "Go Premium", ontap: () {});
}

Widget premiumOnly() {
  return Column(
    children: [
      ButtonItem(icon: Icons.star, text: "Field Report", ontap: () {}),
      ButtonItem(icon: Icons.star, text: "Planting Report", ontap: () {}),
      ButtonItem(icon: Icons.star, text: "Harvest Report", ontap: () {}),
      ButtonItem(icon: Icons.star, text: "Treatment Report", ontap: () {}),
      ButtonItem(icon: Icons.backup, text: "Backup & Restore", ontap: () {}),
    ],
  );
}

Widget farmAccount() {
  return ButtonItem(
      icon: Icons.people_alt_rounded,
      text: "Login or Create Account",
      ontap: () {});
}

Widget prefrences() {
  return Column(
    children: [
      ButtonItem(icon: Icons.settings, text: "Settings", ontap: () {}),
      ButtonItem(icon: Icons.ring_volume, text: "Reminder", ontap: () {}),
      ButtonItem(icon: Icons.message, text: "Farm Notes", ontap: () {}),
      ButtonItem(icon: Icons.share, text: "Share with Frinds", ontap: () {}),
      ButtonItem(icon: Icons.search, text: "See All Our Apps", ontap: () {}),
      ButtonItem(icon: Icons.lock, text: "Privacy Policy", ontap: () {}),
      ButtonItem(icon: Icons.info, text: "User Guide/Manual", ontap: () {}),
      ButtonItem(icon: Icons.mail, text: "Help & Feedback", ontap: () {}),
    ],
  );
}

////////////////////WIDGET MODELS/////////////////////////

Widget ButtonItem(
    {required IconData icon,
    required String text,
    required GestureTapCallback ontap}) {
  return ListTile(
    title: Row(
      children: [
        Icon(icon),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    ),
    onTap: ontap,
  );
}

Widget groupButtonTitle({required String text}) {
  return Text(
    text,
    style: TextStyle(color: Colors.grey),
  );
}
