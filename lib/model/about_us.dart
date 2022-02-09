

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:email_launcher/email_launcher.dart';


class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Developers of স্বাস্থ্য সেবা", style: TextStyle(
              fontSize: 22),),
          backgroundColor:  const Color(0xFA8784EF),
          actions: const [

          ],
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height*.45,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.95,
                      child: Card(color: const Color(0xFA716EE5),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              const Text("Feedback", style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),),
                              const SizedBox(height: 10,),
                              SizedBox(
                                height: MediaQuery.of(context).size.height*.30,
                                child: const Text(
                                  "If you love using this app, give a review in Google play store. It would really inspire us to keep this app alive. \nNote: Contract imamhossen983@gmail.com ,\nzihad650top@gmail.com &\n jisanjomadder@gmail.com for any further assistance.",
                                  style: TextStyle(fontSize: 20),),
                              )
                            ],),
                        ),
                        elevation: 10,
                        shape: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: SizedBox(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.95,
                      child: Card(color: const Color(0xFA8784EF),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              const Text("Mentor Of স্বাস্থ্য সেবা",
                            style: TextStyle(fontSize: 31, fontWeight: FontWeight.bold),),
                              Center(
                                child: SizedBox(
                                  height: MediaQuery.of(context).size.height*.48,
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width * .82,
                                  child: Card(
                                    elevation: 10,
                                    shape: const OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20)),
                                      borderSide: BorderSide(color: Colors.blue),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          const CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/Mentor.jpg"),
                                            maxRadius: 50,
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text("Md Al-Amin Mia", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),),
                                          const Text("AI Designation", style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black45,
                                              fontStyle: FontStyle.italic),),
                                          const SizedBox(height: 15,),
                                          const Text("Flutter Developer",
                                            style: TextStyle(fontSize: 25,
                                                color: Colors.black),),
                                          Container(
                                            alignment: Alignment.bottomLeft,
                                            height: 75,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.blue,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (
                                                        ){
                                                      _launchInWebViewOrVC("https://www.facebook.com/alamincse6615");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.facebook,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.red,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      launch(
                                                          "mailto:mdalamincse6615@gmail.com?subjectimamhossen983@");
                                                    },

                                                    icon:  const FaIcon(FontAwesomeIcons.envelope),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.blue,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      _launchInWebViewOrVC("https://bd.linkedin.com/in/alamincse6615");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.linkedin),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      _launchInWebViewOrVC("https://github.com/alamincse6615");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.github),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )

                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              const Text("Active Developers",
                              style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),),
                              Center(
                                child: SizedBox(
                                  height: MediaQuery.of(context).size.height*.45,
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width * .82,
                                  child: Card(
                                    elevation: 10,
                                    shape: const OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20)),
                                      borderSide: BorderSide(color: Colors.blue),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          const CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/zihad.JPG"),
                                            maxRadius: 50,
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text("Zihadul Islam", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),),
                                          const Text("AI Designation", style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black45,
                                              fontStyle: FontStyle.italic),),
                                          const SizedBox(height: 15,),
                                          const Text("Flutter Developer",
                                            style: TextStyle(fontSize: 25,
                                                color: Colors.black),),
                                          Container(
                                            alignment: Alignment.bottomLeft,
                                            height: 75,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.blue,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (
                                                        ){
                                                      _launchInWebViewOrVC("https://www.facebook.com/ZihadulIslam02");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.facebook,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.red,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      launch(
                                                          "mailto:zihad650top@gmail.com?subjectimamhossen983@");
                                                    },

                                                    icon:  const FaIcon(FontAwesomeIcons.envelope),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.blue,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      _launchInWebViewOrVC("https://www.linkedin.com/in/marketerzihad");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.linkedin),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      _launchInWebViewOrVC("https://github.com/zihad650");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.github),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20,),
                              Center(
                                child: SizedBox(
                                  height: MediaQuery.of(context).size.height*.48,
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width * .82,
                                  child: Card(
                                    elevation: 10,
                                    shape: const OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20)),
                                      borderSide: BorderSide(color: Colors.blue),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          const CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/imam.jpg"),
                                            maxRadius: 50,
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text("Hm Imam Hossen", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),),
                                          const Text("AI Designation", style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black45,
                                              fontStyle: FontStyle.italic),),
                                          const SizedBox(height: 15,),
                                          const Text("Flutter Developer",
                                            style: TextStyle(fontSize: 25,
                                                color: Colors.black),),
                                          Container(
                                            alignment: Alignment.bottomLeft,
                                            height: 75,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.blue,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (
                                                        ){
                                                      _launchInWebViewOrVC("https://www.facebook.com/imamhossen983");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.facebook,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.red,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      launch(
                                                          "mailto:mdalamincse6615@gmail.com?subjectimamhossen983@");
                                                    },

                                                    icon:  const FaIcon(FontAwesomeIcons.envelope),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.blue,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      _launchInWebViewOrVC("https://www.linkedin.com/in/imam-hossen-16a380199");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.linkedin),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      _launchInWebViewOrVC("https://github.com/Imam875");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.github),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )

                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20,),
                              Center(
                                child: SizedBox(
                                  height: MediaQuery.of(context).size.height*.60,
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width * .82,
                                  child: Card(
                                    elevation: 10,
                                    shape: const OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20)),
                                      borderSide: BorderSide(color: Colors.blue),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          const Center(
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  "assets/nurunnobe.jpg"),
                                              maxRadius: 50,
                                            ),
                                          ),
                                          const Center(child: SizedBox(height: 15,)),
                                          const Center(
                                            child: Text("Nurunnobe  Jisan", style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 30),),
                                          ),
                                          const Center(
                                            child: Center(
                                              child: Text("    Mobile Developer\n              &\nSocial Media Manager", style: TextStyle(
                                                  fontSize: 22,
                                                  color: Color(0xFA8784EF),
                                                  fontStyle: FontStyle.italic),),
                                            ),
                                          ),
                                          const Center(child: Center(child: SizedBox(height: 15,))),
                                          const Center(
                                            child: Center(
                                                child: Text("🔭 I’m currently working on Flutter\n🌱 I’m currently learning React\n💬 Ask me about Flutter & Dart.\nI have experience in developing and designing iOS, android, web and desktop apps, responsive websites.",
                                                  style: TextStyle(fontSize: 15,
                                                      color: Colors.white),),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.bottomLeft,
                                            height: 75,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.lightBlueAccent,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (
                                                        ){
                                                      _launchInWebViewOrVC("https://www.facebook.com/nurunnobejisan");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.facebook,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.purpleAccent,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      launch(
                                                          "mailto:jisanjomadder@gmail.com?subjectimamhossen983@");
                                                    },

                                                    icon:  const FaIcon(FontAwesomeIcons.envelope),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.blue,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      _launchInWebViewOrVC("https://www.linkedin.com/in/nurunnobejisan");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.linkedin),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      _launchInWebViewOrVC("https://github.com/nurunnobejisan");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.github),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20,),
                              Center(
                                child: SizedBox(
                                  height: MediaQuery.of(context).size.height*.45,
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width * .82,
                                  child: Card(
                                    elevation: 10,
                                    shape: const OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20)),
                                      borderSide: BorderSide(color: Colors.blue),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          const CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/rasel.jpg"),
                                            maxRadius: 50,
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text("Rasel Hassan", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),),
                                          const Text("AI Designation", style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black45,
                                              fontStyle: FontStyle.italic),),
                                          const SizedBox(height: 15,),
                                          const Text("Flutter Developer",
                                            style: TextStyle(fontSize: 25,
                                                color: Colors.black),),
                                          Container(
                                            alignment: Alignment.bottomLeft,
                                            height: 75,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.blue,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (
                                                        ){
                                                      _launchInWebViewOrVC("https://www.facebook.com/imamhossen983");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.facebook,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.red,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      launch(
                                                          "mailto:mdalamincse6615@gmail.com?subjectimamhossen983@");
                                                    },

                                                    icon:  const FaIcon(FontAwesomeIcons.envelope),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.blue,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      _launchInWebViewOrVC("https://www.linkedin.com/in/imam-hossen-16a380199");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.linkedin),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      _launchInWebViewOrVC("https://github.com/Imam875");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.github),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20,),
                              Center(
                                child: SizedBox(
                                  height:MediaQuery.of(context).size.height*.45,
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width * .82,
                                  child: Card(
                                    elevation: 10,
                                    shape: const OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20)),
                                      borderSide: BorderSide(color: Colors.blue),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          const CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/zisan.jpg"),
                                            maxRadius: 50,
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text("Sharif Ullah Zisan", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),),
                                          const Text("AI Designation", style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black45,
                                              fontStyle: FontStyle.italic),),
                                          const SizedBox(height: 15,),
                                          const Text("Flutter Developer",
                                            style: TextStyle(fontSize: 25,
                                                color: Colors.black),),
                                          Container(
                                            alignment: Alignment.bottomLeft,
                                            height: 75,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.blue,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (
                                                        ){
                                                      _launchInWebViewOrVC("https://www.facebook.com/itz.zisan");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.facebook,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.red,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      launch(
                                                          "mailto:sharifullahzisan@gmail.com?subjectimamhossen983@");
                                                    },

                                                    icon:  const FaIcon(FontAwesomeIcons.envelope),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.blue,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      _launchInWebViewOrVC("https://www.linkedin.com/in/sharif-ullah-zisan-33778516b");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.linkedin),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      _launchInWebViewOrVC("https://github.com/sharifullahzisan");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.github),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20,),
                              Center(
                                child: SizedBox(
                                  height: MediaQuery.of(context).size.height*.45,
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width * .82,
                                  child: Card(
                                    elevation: 10,
                                    shape: const OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20)),
                                      borderSide: BorderSide(color: Colors.blue),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          const CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/Ishak.jpg"),
                                            maxRadius: 50,
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text("Md Ishak", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),),
                                          const Text("AI Designation", style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black45,
                                              fontStyle: FontStyle.italic),),
                                          const SizedBox(height: 15,),
                                          const Text("Flutter Developer",
                                            style: TextStyle(fontSize: 25,
                                                color: Colors.black),),
                                          Container(
                                            alignment: Alignment.bottomLeft,
                                            height: 75,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.blue,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (
                                                        ){
                                                      _launchInWebViewOrVC("https://m.facebook.com/hm.jebon.77");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.facebook,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.red,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      launch(
                                                          "mailto:rajunhowlader837@gmail.com?subjectimamhossen983@");
                                                    },

                                                    icon:  const FaIcon(FontAwesomeIcons.envelope),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.blue,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      _launchInWebViewOrVC("https://www.linkedin.com/in/rajun-howlader-20154a230");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.linkedin),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      _launchInWebViewOrVC("https://github.com/Mdishak145");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.github),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20,),
                              Center(
                                child: SizedBox(
                                  height: MediaQuery.of(context).size.height*.45,
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width * .82,
                                  child: Card(
                                    elevation: 10,
                                    shape: const OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20)),
                                      borderSide: BorderSide(color: Colors.blue),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          const CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/senha.jpg"),
                                            maxRadius: 50,
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text("Senhasish", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),),
                                          const Text("AI Designation", style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black45,
                                              fontStyle: FontStyle.italic),),
                                          const SizedBox(height: 15,),
                                          const Text("Flutter Developer",
                                            style: TextStyle(fontSize: 25,
                                                color: Colors.black),),
                                          Container(
                                            alignment: Alignment.bottomLeft,
                                            height: 75,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.blue,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (
                                                        ){
                                                      _launchInWebViewOrVC("https://www.facebook.com/imamhossen983");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.facebook,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.red,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      launch(
                                                          "mailto:mdalamincse6615@gmail.com?subjectimamhossen983@");
                                                    },

                                                    icon:  const FaIcon(FontAwesomeIcons.envelope),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.blue,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      _launchInWebViewOrVC("https://www.linkedin.com/in/imam-hossen-16a380199");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.linkedin),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      _launchInWebViewOrVC("https://github.com/Imam875");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.github),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20,),
                              Center(
                                child: SizedBox(
                                  height:MediaQuery.of(context).size.height*.45,
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width * .82,
                                  child: Card(
                                    elevation: 10,
                                    shape: const OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20)),
                                      borderSide: BorderSide(color: Colors.blue),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          const CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/tomal.jpg"),
                                            maxRadius: 50,
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text("Shahrear Tomal", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),),
                                          const Text("AI Designation", style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black45,
                                              fontStyle: FontStyle.italic),),
                                          const SizedBox(height: 15,),
                                          const Text("Flutter Developer",
                                            style: TextStyle(fontSize: 25,
                                                color: Colors.black),),
                                          Container(
                                            alignment: Alignment.bottomLeft,
                                            height: 75,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.blue,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (
                                                        ){
                                                      _launchInWebViewOrVC("https://www.facebook.com/imamhossen983");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.facebook,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.red,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      launch(
                                                          "mailto:mdalamincse6615@gmail.com?subjectimamhossen983@");
                                                    },

                                                    icon:  const FaIcon(FontAwesomeIcons.envelope),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.blue,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      _launchInWebViewOrVC("https://www.linkedin.com/in/imam-hossen-16a380199");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.linkedin),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      _launchInWebViewOrVC("https://github.com/Imam875");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.github),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20,),
                              Center(
                                child: SizedBox(
                                  height: MediaQuery.of(context).size.height*.45,
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width * .82,
                                  child: Card(
                                    elevation: 10,
                                    shape: const OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20)),
                                      borderSide: BorderSide(color: Colors.blue),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          const CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/mithun.jpg"),
                                            maxRadius: 50,
                                          ),
                                          const SizedBox(height: 15,),
                                          const Text("Mithun Mandal", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),),
                                          const Text("AI Designation", style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black45,
                                              fontStyle: FontStyle.italic),),
                                          const SizedBox(height: 15,),
                                          const Text("Flutter Developer",
                                            style: TextStyle(fontSize: 25,
                                                color: Colors.black),),
                                          Container(
                                            alignment: Alignment.bottomLeft,
                                            height: 75,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.blue,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (
                                                        ){
                                                      _launchInWebViewOrVC("https://www.facebook.com/mithunmandal00");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.facebook,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.red,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      launch(
                                                          "mailto:mail.mithunmandal@gmail.com?subjectimamhossen983@");
                                                    },

                                                    icon:  const FaIcon(FontAwesomeIcons.envelope),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.blue,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      _launchInWebViewOrVC("https://www.linkedin.com/in/mithun-mandal");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.linkedin),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey,
                                                      borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  height: 40,
                                                  width: 60,
                                                  child: IconButton(
                                                    onPressed: (){
                                                      _launchInWebViewOrVC("https://github.com/mithunAP");
                                                    },
                                                    icon: const FaIcon(FontAwesomeIcons.github),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],),
                        ),
                        elevation: 10,
                        shape: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(25),
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],

            ),

          ],
        ),
      ),
    );
  }



  Future<void> _launchInWebViewOrVC(String url) async {
    if (!await launch(
      url,
      forceSafariVC: true,
      forceWebView: true,
      headers: <String, String>{'my_header_key': 'my_header_value'},
    )) {
      throw 'Could not launch $url';
    }
  }

}

