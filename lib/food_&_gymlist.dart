import 'package:flutter/material.dart';


class FoodDetails extends StatefulWidget {


  String name;
   String title;
   String subtitle;
   String category;
  String description;
  String image;


  FoodDetails( this.name, this.title, this.subtitle, this.category,
      this.description, this.image);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<FoodDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x1F000000),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            foregroundColor: Colors.white,shadowColor: Colors.blue,
            title: Container(color: const Color(0xFA8784EF),child: Text(widget.name,style :const TextStyle(fontSize: 24,),)),
            pinned: true,
            snap: true,
            floating: true,
            backgroundColor: const Color(0xFA8784EF),
            expandedHeight: 220,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))),
            flexibleSpace: FlexibleSpaceBar(
              background: ClipRRect(
                borderRadius:
                const BorderRadius.vertical(bottom: Radius.circular(30)),
                child: SafeArea(
                  child: Image.asset(
                    widget.image
                    ,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(
                  height: 18,
                ),
                ListTile(
                  title:  Text(
                    widget.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 24,
                      color: Colors.indigoAccent,
                    ),
                  ),

                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const SizedBox(
                            width: 26,
                          ),
                          Text(
                            widget.category,
                            style: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontSize: 23),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 2,
                      ),

                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    widget.title
                  ,
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 23,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                 Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, bottom: 32),
                  child: Card(

                    color: const Color(0xFA8784EF),
                    elevation: 10,
                    shape: const OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.white),
                    ),


                    child: Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          widget.description
                          ,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

          ),
        ],
      ),
    );
  }
}