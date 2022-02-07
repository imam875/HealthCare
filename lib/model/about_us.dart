

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
          title: Text("Developers of স্বাস্থ্য সেবা", style: TextStyle(
              fontSize: 22),),
          backgroundColor: Colors.black26,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.help),
            )
          ],
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height*.45,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.95,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text("Feedback", style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),),
                              SizedBox(height: 10,),
                              Container(
                                height: MediaQuery.of(context).size.height*.30,
                                child: Text(
                                  "If you love using this app, give a review in Google play store. It would really inspire us to keep this app alive. \nNote: Contract imamhossen983@gmail.com & \nzihad650top@gmail.com for any further assistance.",
                                  style: TextStyle(fontSize: 20),),
                              )
                            ],),
                        ),
                        elevation: 10,
                        shape: OutlineInputBorder(
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
                    child: Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.95,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text("Mentor Of স্বাস্থ্য সেবা",
                            style: TextStyle(fontSize: 31, fontWeight: FontWeight.bold),),
                              Center(
                                child: Container(
                                  height: MediaQuery.of(context).size.height*.48,
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width * .82,
                                  child: Card(
                                    elevation: 10,
                                    shape: OutlineInputBorder(
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
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/Mentor.jpg"),
                                            maxRadius: 50,
                                          ),
                                          SizedBox(height: 15,),
                                          Text("Md Al-Amin Mia", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),),
                                          Text("AI Designation", style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black45,
                                              fontStyle: FontStyle.italic),),
                                          SizedBox(height: 15,),
                                          Text("Flutter Developer",
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
                                                    icon: FaIcon(FontAwesomeIcons.facebook,
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

                                                    icon:  FaIcon(FontAwesomeIcons.envelope),
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
                                                    icon: FaIcon(FontAwesomeIcons.linkedin),
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
                                                    icon: FaIcon(FontAwesomeIcons.github),
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

                              Text("Active Developers",
                              style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),),
                              Center(
                                child: Container(
                                  height: MediaQuery.of(context).size.height*.45,
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width * .82,
                                  child: Card(
                                    elevation: 10,
                                    shape: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20)),
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/zihad.JPG"),
                                            maxRadius: 50,
                                          ),
                                          SizedBox(height: 15,),
                                          Text("Zihadul Islam", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),),
                                          Text("AI Designation", style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black45,
                                              fontStyle: FontStyle.italic),),
                                          SizedBox(height: 15,),
                                          Text("Flutter Developer",
                                            style: TextStyle(fontSize: 25,
                                                color: Colors.black),),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                InkWell(
                                                  onTap: (){

                                                  },
                                                  child: Icon(
                                                    (Icons.facebook), size: 50,
                                                    color: Colors.blueAccent,),
                                                ),
                                                SizedBox(width: 10,),
                                                InkWell(
                                                    onTap: () {

                                                    },
                                                    child: Icon(
                                                      (Icons.mail), size: 50,
                                                      color: Colors.red,)),
                                                SizedBox(width: 10,),
                                                InkWell(
                                                    onTap: () {

                                                    },
                                                    child: Icon(
                                                      (Icons.mail), size: 50,)),
                                                SizedBox(width: 10,),
                                                InkWell(
                                                  onTap: (){
                                                  },
                                                  child: Icon(
                                                    (Icons.mail), size: 50,),
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
                              SizedBox(height: 20,),
                              Center(
                                child: Container(
                                  height: MediaQuery.of(context).size.height*.48,
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width * .82,
                                  child: Card(
                                    elevation: 10,
                                    shape: OutlineInputBorder(
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
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/imam.jpg"),
                                            maxRadius: 50,
                                          ),
                                          SizedBox(height: 15,),
                                          Text("Hm Imam Hossen", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),),
                                          Text("AI Designation", style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black45,
                                              fontStyle: FontStyle.italic),),
                                          SizedBox(height: 15,),
                                          Text("Flutter Developer",
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
                                                    icon: FaIcon(FontAwesomeIcons.facebook,
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

                                                    icon:  FaIcon(FontAwesomeIcons.envelope),
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
                                                    icon: FaIcon(FontAwesomeIcons.linkedin),
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
                                                    icon: FaIcon(FontAwesomeIcons.github),
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
                              SizedBox(height: 20,),
                              Center(
                                child: Container(
                                  height: MediaQuery.of(context).size.height*.52,
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width * .82,
                                  child: Card(
                                    elevation: 10,
                                    shape: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20)),
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/nurunnobe.jpg"),
                                            maxRadius: 50,
                                          ),
                                          SizedBox(height: 15,),
                                          Text("Nurunnobe Jomadder", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),),
                                          Text("AI Designation", style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black45,
                                              fontStyle: FontStyle.italic),),
                                          SizedBox(height: 15,),
                                          Text("Flutter Developer",
                                            style: TextStyle(fontSize: 25,
                                                color: Colors.black),),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                InkWell(
                                                  onTap: (){

                                                  },
                                                  child: Icon(
                                                    (Icons.facebook), size: 50,
                                                    color: Colors.blueAccent,),
                                                ),
                                                SizedBox(width: 10,),
                                                InkWell(
                                                    onTap: () {

                                                    },
                                                    child: Icon(
                                                      (Icons.mail), size: 50,
                                                      color: Colors.red,)),
                                                SizedBox(width: 10,),
                                                InkWell(
                                                    onTap: () {

                                                    },
                                                    child: Icon(
                                                      (Icons.mail), size: 50,)),
                                                SizedBox(width: 10,),
                                                InkWell(
                                                  onTap: (){
                                                  },
                                                  child: Icon(
                                                    (Icons.mail), size: 50,),
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
                              SizedBox(height: 20,),
                              Center(
                                child: Container(
                                  height: MediaQuery.of(context).size.height*.45,
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width * .82,
                                  child: Card(
                                    elevation: 10,
                                    shape: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20)),
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/rasel.jpg"),
                                            maxRadius: 50,
                                          ),
                                          SizedBox(height: 15,),
                                          Text("Rasel Hassan", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),),
                                          Text("AI Designation", style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black45,
                                              fontStyle: FontStyle.italic),),
                                          SizedBox(height: 15,),
                                          Text("Flutter Developer",
                                            style: TextStyle(fontSize: 25,
                                                color: Colors.black),),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                InkWell(
                                                  onTap: (){

                                                  },
                                                  child: Icon(
                                                    (Icons.facebook), size: 50,
                                                    color: Colors.blueAccent,),
                                                ),
                                                SizedBox(width: 10,),
                                                InkWell(
                                                    onTap: () {

                                                    },
                                                    child: Icon(
                                                      (Icons.mail), size: 50,
                                                      color: Colors.red,)),
                                                SizedBox(width: 10,),
                                                InkWell(
                                                    onTap: () {

                                                    },
                                                    child: Icon(
                                                      (Icons.mail), size: 50,)),
                                                SizedBox(width: 10,),
                                                InkWell(
                                                  onTap: (){
                                                  },
                                                  child: Icon(
                                                    (Icons.mail), size: 50,),
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
                              SizedBox(height: 20,),
                              Center(
                                child: Container(
                                  height:MediaQuery.of(context).size.height*.45,
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width * .82,
                                  child: Card(
                                    elevation: 10,
                                    shape: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20)),
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/zisan.jpg"),
                                            maxRadius: 50,
                                          ),
                                          SizedBox(height: 15,),
                                          Text("Zisan Ahmed", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),),
                                          Text("AI Designation", style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black45,
                                              fontStyle: FontStyle.italic),),
                                          SizedBox(height: 15,),
                                          Text("Flutter Developer",
                                            style: TextStyle(fontSize: 25,
                                                color: Colors.black),),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                InkWell(
                                                  onTap: (){

                                                  },
                                                  child: Icon(
                                                    (Icons.facebook), size: 50,
                                                    color: Colors.blueAccent,),
                                                ),
                                                SizedBox(width: 10,),
                                                InkWell(
                                                    onTap: () {

                                                    },
                                                    child: Icon(
                                                      (Icons.mail), size: 50,
                                                      color: Colors.red,)),
                                                SizedBox(width: 10,),
                                                InkWell(
                                                    onTap: () {

                                                    },
                                                    child: Icon(
                                                      (Icons.mail), size: 50,)),
                                                SizedBox(width: 10,),
                                                InkWell(
                                                  onTap: (){
                                                  },
                                                  child: Icon(
                                                    (Icons.mail), size: 50,),
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
                              SizedBox(height: 20,),
                              Center(
                                child: Container(
                                  height: MediaQuery.of(context).size.height*.45,
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width * .82,
                                  child: Card(
                                    elevation: 10,
                                    shape: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20)),
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/Ishak.jpg"),
                                            maxRadius: 50,
                                          ),
                                          SizedBox(height: 15,),
                                          Text("Md Ishak", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),),
                                          Text("AI Designation", style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black45,
                                              fontStyle: FontStyle.italic),),
                                          SizedBox(height: 15,),
                                          Text("Flutter Developer",
                                            style: TextStyle(fontSize: 25,
                                                color: Colors.black),),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                InkWell(
                                                  onTap: (){

                                                  },
                                                  child: Icon(
                                                    (Icons.facebook), size: 50,
                                                    color: Colors.blueAccent,),
                                                ),
                                                SizedBox(width: 10,),
                                                InkWell(
                                                    onTap: () {

                                                    },
                                                    child: Icon(
                                                      (Icons.mail), size: 50,
                                                      color: Colors.red,)),
                                                SizedBox(width: 10,),
                                                InkWell(
                                                    onTap: () {

                                                    },
                                                    child: Icon(
                                                      (Icons.mail), size: 50,)),
                                                SizedBox(width: 10,),
                                                InkWell(
                                                  onTap: (){
                                                  },
                                                  child: Icon(
                                                    (Icons.mail), size: 50,),
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
                              SizedBox(height: 20,),
                              Center(
                                child: Container(
                                  height: MediaQuery.of(context).size.height*.45,
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width * .82,
                                  child: Card(
                                    elevation: 10,
                                    shape: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20)),
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/senha.jpg"),
                                            maxRadius: 50,
                                          ),
                                          SizedBox(height: 15,),
                                          Text("Senhasish", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),),
                                          Text("AI Designation", style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black45,
                                              fontStyle: FontStyle.italic),),
                                          SizedBox(height: 15,),
                                          Text("Flutter Developer",
                                            style: TextStyle(fontSize: 25,
                                                color: Colors.black),),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                InkWell(
                                                  onTap: (){

                                                  },
                                                  child: Icon(
                                                    (Icons.facebook), size: 50,
                                                    color: Colors.blueAccent,),
                                                ),
                                                SizedBox(width: 10,),
                                                InkWell(
                                                    onTap: () {

                                                    },
                                                    child: Icon(
                                                      (Icons.mail), size: 50,
                                                      color: Colors.red,)),
                                                SizedBox(width: 10,),
                                                InkWell(
                                                    onTap: () {

                                                    },
                                                    child: Icon(
                                                      (Icons.mail), size: 50,)),
                                                SizedBox(width: 10,),
                                                InkWell(
                                                  onTap: (){
                                                  },
                                                  child: Icon(
                                                    (Icons.mail), size: 50,),
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
                              SizedBox(height: 20,),
                              Center(
                                child: Container(
                                  height:MediaQuery.of(context).size.height*.45,
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width * .82,
                                  child: Card(
                                    elevation: 10,
                                    shape: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20)),
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/tomal.jpg"),
                                            maxRadius: 50,
                                          ),
                                          SizedBox(height: 15,),
                                          Text("Shahrear Tomal", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),),
                                          Text("AI Designation", style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black45,
                                              fontStyle: FontStyle.italic),),
                                          SizedBox(height: 15,),
                                          Text("Flutter Developer",
                                            style: TextStyle(fontSize: 25,
                                                color: Colors.black),),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                InkWell(
                                                  onTap: (){

                                                  },
                                                  child: Icon(
                                                    (Icons.facebook), size: 50,
                                                    color: Colors.blueAccent,),
                                                ),
                                                SizedBox(width: 10,),
                                                InkWell(
                                                    onTap: () {

                                                    },
                                                    child: Icon(
                                                      (Icons.mail), size: 50,
                                                      color: Colors.red,)),
                                                SizedBox(width: 10,),
                                                InkWell(
                                                    onTap: () {

                                                    },
                                                    child: Icon(
                                                      (Icons.mail), size: 50,)),
                                                SizedBox(width: 10,),
                                                InkWell(
                                                  onTap: (){
                                                  },
                                                  child: Icon(
                                                    (Icons.mail), size: 50,),
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
                              SizedBox(height: 20,),
                              Center(
                                child: Container(
                                  height: MediaQuery.of(context).size.height*.45,
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width * .82,
                                  child: Card(
                                    elevation: 10,
                                    shape: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20)),
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/mithun.jpg"),
                                            maxRadius: 50,
                                          ),
                                          SizedBox(height: 15,),
                                          Text("Mithun Mandal", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),),
                                          Text("AI Designation", style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black45,
                                              fontStyle: FontStyle.italic),),
                                          SizedBox(height: 15,),
                                          Text("Flutter Developer",
                                            style: TextStyle(fontSize: 25,
                                                color: Colors.black),),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                InkWell(
                                                  onTap: (){

                                                  },
                                                  child: Icon(
                                                    (Icons.facebook), size: 50,
                                                    color: Colors.blueAccent,),
                                                ),
                                                SizedBox(width: 10,),
                                                InkWell(
                                                    onTap: () {

                                                    },
                                                    child: Icon(
                                                      (Icons.mail), size: 50,
                                                      color: Colors.red,)),
                                                SizedBox(width: 10,),
                                                InkWell(
                                                    onTap: () {

                                                    },
                                                    child: Icon(
                                                      (Icons.mail), size: 50,)),
                                                SizedBox(width: 10,),
                                                InkWell(
                                                  onTap: (){
                                                  },
                                                  child: Icon(
                                                    (Icons.mail), size: 50,),
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
                        shape: OutlineInputBorder(
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

