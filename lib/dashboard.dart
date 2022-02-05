import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:healthpro/data/fooddata.dart';
import 'package:healthpro/data/healthdata.dart';
import 'package:healthpro/fooddetails.dart';
import 'package:healthpro/healthdetails.dart';
import 'package:healthpro/model/about_us.dart';
import 'package:healthpro/model/foodmodel.dart';
import 'package:healthpro/model/healthmodel.dart';
import 'package:healthpro/model/privacy_policy.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);



  @override
  _DashBoardState createState() => _DashBoardState();

}

class _DashBoardState extends State<DashBoard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Color(0x1F1E1EFF),

        appBar: AppBar(
          backgroundColor: Colors.white38,
          systemOverlayStyle: SystemUiOverlayStyle(

            // Status bar color
            statusBarColor:Color(0x1F1E1EFF),
            systemNavigationBarColor:Color(0x1F1E1EFF),

            // Status bar brightness (optional)
            statusBarIconBrightness:
                Brightness.light, // For Android (dark icons)
          ),
          title: Row(
            children: [
              Text("স্বাস্থ্য সেবা",style: TextStyle(fontSize: 22),),
             Spacer(),
              MyPopupMenu(
                child: Icon(
                  Icons.menu_rounded,
                  key: GlobalKey(),
                  color: Colors.white,
                  size:30,
                ),
              ),
            ],
          ),
        ),

        body: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*.84 ,
                child: Column(
                    children: [
                      SizedBox(height: 150,),
                  //abouat text section.................
                  Container(

                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top:10,),

                    width: MediaQuery.of(context).size.width,
                      child: Text(
                        "বিভিন্ন খাবারের উপকারিতা",
                        style: TextStyle(fontSize: 22,wordSpacing:.8,fontWeight: FontWeight.bold),
                      )),

                  //Category section food..............
                  FutureBuilder(
                      future: foodfunction(),
                      builder: (context, imam) {
                        if (imam.hasError) {
                          return Center(
                            child: Container(
                              child: Text("Loading........."),
                            ),
                          );
                        } else if (imam.hasData) {
                          var Hossen = imam.data as List<FoodModel>;
                          return Padding(
                            padding: const EdgeInsets.only(bottom:15),
                            child: Container(
                              height: MediaQuery.of(context).size.height*.27,
                              width: MediaQuery.of(context).size.width,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: Hossen.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: InkWell(
                                        child: Card(
                                          shape: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              borderSide: const BorderSide(
                                                  color: Colors.white)),
                                          elevation: 15,
                                          child: Container(
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .75,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: 130,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width,
                                                  child: ClipRRect(
                                                    child: Image.asset(
                                                      Hossen[index]
                                                          .image
                                                          .toString(),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(30),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 15.0, top: 5),
                                                  child: Text(
                                                      Hossen[index]
                                                          .name
                                                          .toString(),
                                                      textAlign: TextAlign.left,
                                                      style: const TextStyle(
                                                          fontSize: 21,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 15.0),
                                                  child: Text(
                                                    Hossen[index]
                                                        .category
                                                        .toString(),
                                                    style: const TextStyle(
                                                        fontSize: 19),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (Contex) =>
                                                      FoodDetails(
                                                        Hossen[index]
                                                            .name
                                                            .toString(),
                                                        Hossen[index]
                                                            .title
                                                            .toString(),
                                                        Hossen[index]
                                                            .subtitle
                                                            .toString(),
                                                        Hossen[index]
                                                            .category
                                                            .toString(),
                                                        Hossen[index]
                                                            .description
                                                            .toString(),
                                                        Hossen[index]
                                                            .image
                                                            .toString(),
                                                      )));
                                        },
                                      ),
                                    );
                                  }),
                            ),
                          );
                        } else {
                          return Center(
                            child: Container(
                              child: Text("Loading........."),
                            ),
                          );
                        }
                      }),

                  // about text section.................
                  Container(
                    alignment: Alignment.topCenter,

                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "শরীরের যত্ন",
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),

                  //Slider section......................
                  Container(
                      height: MediaQuery.of(context).size.height *.24,
                      child: FutureBuilder(
                          future: healthfunction(),
                          builder: (context, info) {
                            if (info.hasError) {
                              return Center(
                                child: Container(
                                  child: Text("Loading......"),
                                ),
                              );
                            } else if (info.hasData) {
                              var list = info.data as List<HealthModel>;
                              return ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: list.length,
                                  itemBuilder: (context, index) {

                                    return Container(
                                      height: MediaQuery.of(context)
                                          .size
                                          .height,
                                      width:
                                          MediaQuery.of(context).size.width,
                                      child: InkWell(
                                        child: CarouselSlider.builder(
                                          itemCount: list.length,
                                          itemBuilder: (context, index, i) {
                                            return Card(
                                              shape: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30),
                                                  borderSide:
                                                      const BorderSide(
                                                          color: Colors
                                                              .white)),
                                              elevation: 15,
                                              child: Container(
                                                height:
                                                    MediaQuery.of(context)
                                                        .size
                                                        .height,
                                                width:
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        .9,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                  children: [
                                                    Container(
                                                      height: 130,
                                                      width: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width ,

                                                      child: ClipRRect(
                                                        child: Image.asset(
                                                          list[index]
                                                              .image
                                                              .toString(),
                                                          fit: BoxFit.cover,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    30),
                                                      ),
                                                    ),
                                                    Center(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(

                                                                top: 5),
                                                        child: Text(
                                                            list[index]
                                                                .name
                                                                .toString(),
                                                            textAlign:
                                                                TextAlign
                                                                    .left,
                                                            style: const TextStyle(
                                                                fontSize: 24,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,)),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                          options: CarouselOptions(
                                            height: 240,
                                            aspectRatio: 16 / 9,
                                            viewportFraction: 0.8,
                                            initialPage: 2,
                                            enableInfiniteScroll: true,
                                            reverse: false,
                                            autoPlay: true,
                                            autoPlayInterval:
                                                const Duration(seconds: 3),
                                            autoPlayAnimationDuration:
                                                const Duration(
                                                    milliseconds: 1200),
                                            autoPlayCurve: Curves.linear,
                                            enlargeCenterPage: true,
                                            scrollDirection:
                                                Axis.horizontal,
                                            disableCenter: false,
                                            pageSnapping: false,
                                          ),
                                        ),
                                        onTap: () {
                                           Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (Contex) => HealthDetails(
                                                 list[index].id.toString(),
                                                 list[index].name.toString(),
                                                 list[index].title.toString(),
                                                 list[index].description.toString(),
                                                 list[index].image.toString(),

                                                )));
                                        },
                                      ),
                                    );
                                  });
                            } else {
                              return Center(
                                child: Container(
                                  child: Text("Loading......"),
                                ),
                              );
                            }
                          }))
                ]))
          ],
        ));
  }
}

class GraphClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path p = Path();

    //Cut the path
    p.moveTo(0, 0);
    p.lineTo(size.width * .3, size.height);
    p.lineTo(size.width * .7, size.height);
    p.lineTo(size.width, 0);
    p.close();

    return p;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class MyPopupMenu extends StatefulWidget {
  final Widget child;

  MyPopupMenu({Key? key, required this.child})
      : assert(child.key != null),
        super(key: key);

  @override
  _MyPopupMenuState createState() => _MyPopupMenuState();
}

class _MyPopupMenuState extends State<MyPopupMenu> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: widget.child,
      onTap: _showPopupMenu,
    );
  }

  void _showPopupMenu() {
    //Find renderbox object
    RenderBox renderBox = (widget.child.key as GlobalKey)
        .currentContext
        ?.findRenderObject() as RenderBox;
    Offset position = renderBox.localToGlobal(Offset.zero);

    showCupertinoDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return PopupMenuContent(
            position: position,
            size: renderBox.size,
            onAction: (x) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                duration: const Duration(seconds: 1),
                content: Text('Action => $x'),
              ));
            },
          );
        });
  }
}

class PopupMenuContent extends StatefulWidget {
  final Offset position;
  final Size size;
  final ValueChanged<String>? onAction;

  const PopupMenuContent(
      {Key? key, required this.position, required this.size, this.onAction})
      : super(key: key);

  @override
  _PopupMenuContentState createState() => _PopupMenuContentState();
}

class _PopupMenuContentState extends State<PopupMenuContent>
    with SingleTickerProviderStateMixin {
  //Let's create animation
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeOut));
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      _animationController.forward();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        _closePopup("");
        return false;
      },
      child: GestureDetector(
        onTap: () => _closePopup(""),
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            color: Colors.transparent,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  right:
                      (MediaQuery.of(context).size.width - widget.position.dx) -
                          widget.size.width,
                  top: widget.position.dy,
                  child: AnimatedBuilder(
                    animation: _animationController,
                    builder: (context, child) {
                      return Transform.scale(
                        scale: _animation.value,
                        alignment: Alignment.topRight,
                        child: Opacity(opacity: _animation.value, child: child),
                      );
                    },



                    ///Popup Box...........
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: double.maxFinite,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 24),
                        margin: const EdgeInsets.only(left: 64),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.1),
                                blurRadius: 8,
                              )
                            ]),
                        child: Column(
                          children: [
                            //Repeat now


                            ///About US..........
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AboutUs()));
                              },
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFF0E3),
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    child: const Icon(
                                      Icons.info_outlined,
                                      color: Colors.red,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    "About US",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(.7),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ), //Edit workout
                            const SizedBox(
                              height: 16,
                            ),



                            ///Privacy Policy.....
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PrivacyPolicy()));
                              },
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE1E1FC),
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    child: const Icon(
                                      Icons.privacy_tip_outlined,
                                      color: Color(0xFF3840A2),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    "Privacy Policy",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(.7),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ), //Share workout
                            const SizedBox(
                              height: 16,
                            ),



                            ///Share Now.........
                            GestureDetector(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFDDF3FD),
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    child: const Icon(
                                      Icons.share,
                                      color: Color(0xFF0586C0),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    "Share Now",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(.7),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),




                            ///Exit.............
                            Container(
                              color: Colors.black12,
                              width: 80,
                              child: GestureDetector(
                                onTap: () {
                                  if (Platform.isAndroid) {
                                    SystemNavigator.pop();
                                  } else {
                                    exit(0);
                                  }
                                },
                                child: Row(

                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFA9D2AC),
                                        borderRadius: BorderRadius.circular(24),
                                      ),
                                      child: const Icon(
                                        Icons.exit_to_app_outlined,
                                        color: Color(0xFF030303),
                                      ),
                                    ),
                                  /*  const SizedBox(
                                      width: 12,
                                    ),*/
                                    Text(
                                      "Exit",
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(.8),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ), //Chat box
                            const SizedBox(
                              height: 32,
                            ),



                            ///getHelp...........
                            GestureDetector(
                              onTap: () => _closePopup("getHelp"),
                              child: Container(
                                width: double.maxFinite,
                                height: 150,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 16),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFC2E3F6),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.messenger_outline_rounded,
                                        color: Color(0xff1e93ad),
                                        size: 44,
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "Get Help",
                                        style: TextStyle(
                                            color: Color(0xff1e93ad),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _closePopup(String action) {
    _animationController.reverse().whenComplete(() {
      Navigator.of(context).pop();

      if (action.isNotEmpty) widget.onAction?.call(action);
    });
  }
}
