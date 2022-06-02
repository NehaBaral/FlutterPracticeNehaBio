import 'package:flutter/material.dart';
import 'package:neha_bio/models/DemoModels.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = "/home";

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final socialMedia = [
    DemoModels(title: "FaceBook", image: "assets/icons/facebook_icon.png",linkPage: "https://www.facebook.com/baral.neha"),
    DemoModels(title: "Instagram", image: "assets/icons/instagram_icon.png",linkPage: ""),
    DemoModels(title: "Twitter", image: "assets/icons/twitter_icon.png",linkPage: "https://twitter.com/nehabaral?t=f6NqtuttxcrTh5STTnvx_w&s=09"),
    DemoModels(title: "Linked In", image: "assets/icons/linkedin_icon.png",linkPage: "https://www.linkedin.com/in/neha-baral-94b90616a"),
    DemoModels(title: "Github", image: "assets/icons/github_logo.png",linkPage: "https://github.com/NehaBaral"),
    DemoModels(title: "Tiktok", image: "assets/icons/tiktok_icon.png",linkPage: "https://vt.tiktok.com/ZSdgSE6rN/")
  ];

  /*_launchURLApp() async {
    const url = 'https://flutterdevs.com/';
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: true, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "My Bio",
            style: TextStyle(color: Colors.black),
          ),
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundColor: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: ClipRRect(
                        child: Image.asset(
                          'assets/images/purple-flower-2212075.jpeg',
                          fit: BoxFit.fill,
                          height: 100,
                          width: 100,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                ),
              ),
              const Text("Neha Baral",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              const Text(
                "Android Developer",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, "/feedback");
                },
                child: const Text("Share your Experience"),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Row(
                  children: const [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Card(
                          elevation: 5,
                          color: Colors.blue,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Contact",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )),
                    Expanded(
                        child: Divider(
                      thickness: 1,
                      height: 2,
                      color: Colors.red,
                    ))
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                  child: Row(children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                      child: Image.asset("assets/icons/email_icon.png",
                          width: 25, height: 25),
                    ),
                    const Text(
                      "nehabaral011@gmail.com",
                      style: TextStyle(color: Colors.black87, fontSize: 16),
                    )
                  ])),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 16, 0, 0),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 12, 0),
                      child: Image.asset(
                        "assets/icons/phone_icon.png",
                        width: 20,
                        height: 20,
                      ),
                    ),
                    const Text(
                      "986543210",
                      style: TextStyle(color: Colors.black87, fontSize: 16),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Row(
                  children: const [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Card(
                          elevation: 5,
                          color: Colors.blue,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Follow me",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )),
                    Expanded(
                        child: Divider(
                      thickness: 1,
                      height: 2,
                      color: Colors.red,
                    ))
                  ],
                ),
              ),
              GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: socialMedia.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        launchUrl(Uri.parse(socialMedia[index].linkPage));
                      },
                      child: Column(
                        children: [
                          Image.asset(socialMedia[index].image,width: 50,
                              height: 50),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(socialMedia[index].title),
                          ),
                        ],
                      ),
                    );
                  }),
            ],
          ),
        ));
  }
}
