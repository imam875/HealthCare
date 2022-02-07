import 'package:flutter/material.dart';

import 'data/gymdata.dart';
import 'food_&_gymlist.dart';
import 'model/gymmodel.dart';

class ExerciseList extends StatefulWidget {
  const ExerciseList({Key? key}) : super(key: key);

  @override
  _ExerciseListState createState() => _ExerciseListState();
}

class _ExerciseListState extends State<ExerciseList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("শরীরচর্চা"),
      ),
      body:   Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: MediaQuery.of(context).size.width ,
          height: MediaQuery.of(context).size.height ,
          child: FutureBuilder(
              future: gymfunction(),
              builder: (context, imam) {
                if (imam.hasError) {
                  return Center(
                    child: Container(
                      child: Text("Loading........."),
                    ),
                  );
                } else if (imam.hasData) {
                  var Hossen = imam.data as List<gymmodel>;
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      height:
                      MediaQuery.of(context).size.height * .24,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: Hossen.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              child: Card(
                                shape: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.white)),
                                elevation: 15,
                                child: Container(
                                  height: MediaQuery.of(context)
                                      .size
                                      .height *
                                      .24,
                                  width: MediaQuery.of(context)
                                      .size
                                      .width *
                                      .9,
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 130,
                                        width:
                                        MediaQuery.of(context)
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
                                          BorderRadius.circular(
                                              10),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(
                                            left: 15.0, top: 5),
                                        child: Text(
                                            Hossen[index]
                                                .name
                                                .toString(),
                                            textAlign:
                                            TextAlign.left,
                                            style: const TextStyle(
                                                fontSize: 21,
                                                fontWeight:
                                                FontWeight
                                                    .bold)),
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
        ),
      ),
    );
  }
}
