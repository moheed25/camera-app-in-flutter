import 'package:camera/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  double halfRating = 0;
  int _itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff131416),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Color(0xff131416),
                      border: Border.all(width: 0.5, color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(builder: (context) => const Home()),
                        );
                      },
                      icon: Icon(Icons.arrow_back),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              "assets/image 278 (1).png",
              height: 300,
              width: 300,
            ),
            Stack(
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 350,
                      width: 355,
                      decoration: BoxDecoration(
                          color: Color(0xff202024),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          )),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 13,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            //mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "SONY 200mm Zoom ",
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            //crossAxisAlignment: CrossAxisAlignment.,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "\$6000",
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 160,
                                decoration: BoxDecoration(),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Color(0xff131416),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 1, color: Colors.white)),
                                      child: IconButton(
                                        icon: new Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                        ),
                                        onPressed: () =>
                                            setState(() => _itemCount--),
                                      ),
                                    ),
                                    Container(
                                        height: 30,
                                        width: 40,
                                        decoration: BoxDecoration(),
                                        child: Center(
                                            child: Text(
                                          _itemCount.toString(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ))),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Color(0xff131416),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 1, color: Colors.white)),
                                      child: new IconButton(
                                          icon: new Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                          onPressed: () =>
                                              setState(() => _itemCount++)),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RatingBar.builder(
                                  initialRating: 0,
                                  minRating: 1,
                                  allowHalfRating: true,
                                  unratedColor: Colors.grey,
                                  itemCount: 5,
                                  itemSize: 25.0,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
                                  updateOnDrag: true,
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (ratingvalue) {
                                    setState(() {
                                      halfRating = ratingvalue;
                                    });
                                  },
                                ),
                              ),
                              Text(
                                '$halfRating',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24.0,
                                  color: Colors.white,
                                ),
                                //textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                '(500 Reviews)',
                                style: TextStyle(
                                  //  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                  color: Colors.white,
                                ),
                                //textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nFacilisis tellus, est lacus arcu ut ac in fermentum. Sit\n eget proin nunc felis quam rutrum metus. Et lacus,\n maecenas vel et arcu ut adipiscing morbi eget. At arcu\n varius ullamcorper eu \nvarius. Et lacus, maecenas vel et arcu ut \nadipiscing morbi eget. ',
                                  style: TextStyle(
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: Colors.white,
                                  ),
                                  //textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 65, 67, 73),
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: Icon(
                                  Icons.bookmark_border_outlined,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              Container(
                                height: 60,
                                width: 130,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 65, 67, 73),
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: Center(
                                  child: Text(
                                    'Add to Bag',
                                    style: TextStyle(
                                      //  fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
