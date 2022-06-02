import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FeedBackScreen extends StatefulWidget {
  const FeedBackScreen({Key? key}) : super(key: key);
  static const routeName = "/feedback";

  @override
  State<StatefulWidget> createState() => _FeedBackScreen();
}

class _FeedBackScreen extends State<FeedBackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Share your experience",
          style: TextStyle(color: Colors.black),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children:  [
            const UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                accountName: Text(
                  "Yesha Baral",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              accountEmail: Text("nehabaral011@gmail.com"),
            ),
            ListTile(
              title: const Text(
                "My Profile",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.pushNamed(context, "/home");
              },
            ),
            ListTile(
              title: const Text(
                "Share Experience",
                style: TextStyle(color: Colors.black),
              ),
              onTap: (){
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(hintText: "Your Name"),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 16, 0, 0),
              child: TextFormField(
                decoration: const InputDecoration(hintText: "Any Experience?"),
              ),
            ),
            OutlinedButton(
              style: ButtonStyle(),
              onPressed: () {},
              child: Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}
