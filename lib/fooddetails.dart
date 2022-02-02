import 'package:flutter/material.dart';
import 'healthcategory.dart';

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
      backgroundColor: const Color(0xFFE9E9E9),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(widget.name,style :TextStyle(fontSize: 28),),
            pinned: true,
            snap: true,
            floating: true,
            backgroundColor: const Color(0xFF200087),
            expandedHeight: 270,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))),
            flexibleSpace: FlexibleSpaceBar(
              background: ClipRRect(
                borderRadius:
                const BorderRadius.vertical(bottom: Radius.circular(30)),
                child: Image.asset(
                  widget.image
                  ,
                  fit: BoxFit.cover,
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
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                      color: Colors.indigoAccent,
                    ),
                  ),

                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SizedBox(
                            width: 26,
                          ),
                          Text(
                            widget.category,
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),

                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                 Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    widget.title
                  ,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                 Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, bottom: 32),
                  child: Card(

                    color: Colors.white,
                    elevation: 10,
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.white),
                    ),


                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.description
                        ,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
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