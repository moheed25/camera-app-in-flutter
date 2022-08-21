import 'package:camera/detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List Model = [
    "assets/pic1.png",
    "assets/pic1.png",
    "assets/pic1.png",
    "assets/pic1.png",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1F2125),
        body: Container(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    "PixelsCo.",
                    style: GoogleFonts.balooDa2(
                        textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                    )),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Image.asset("assets/bag.png")
                ],
              ),
              Container(
                height: 220,
                width: 300,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff484C57),
                        //Color(0xff6B7181),
                        Color(0xff1D1F23),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.white,
                    )),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          " New Vintage"
                          "\n Collection",
                          style: GoogleFonts.balooDa2(
                              textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            // fontWeight: FontWeight.bold,
                          )),
                        ),
                        Image.asset(
                          "assets/pic5.png",
                          height: 150,
                          width: 150,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 60,
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xff484C57),
                                //Color(0xff6B7181),
                                Color(0xff1D1F23),
                              ],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                offset: const Offset(
                                  5.0,
                                  5.0,
                                ),
                                blurRadius: 10.0,
                                spreadRadius: 2.0,
                              ), //BoxShadow
                              BoxShadow(
                                color: Colors.white,
                                offset: const Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ],
                            borderRadius: BorderRadius.circular(20),
                            // border: Border.all(
                            //   color: Colors.white,
                            // )
                          ),
                          child: Center(
                            child: Text(
                              "Explore now",
                              style: GoogleFonts.balooDa2(
                                  textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "   Popular",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 250,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff484C57),
                              //Color(0xff6B7181),
                              Color(0xff1D1F23),
                            ],
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                                top: 20,
                                right: 220,
                                child: Image.asset("assets/star.png")),
                            Positioned(
                                top: 20,
                                right: 195,
                                child: Text(
                                  "4.6",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )),
                            Positioned(
                                left: 20,
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Detail()),
                                      );
                                    },
                                    child: Image.asset("assets/pic1.png"))),
                            Positioned(
                                top: 180,
                                left: 30,
                                child: Text(
                                  " Canon EOS 30D",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                            Positioned(
                                top: 200,
                                left: 30,
                                child: Text(
                                  " \$16000",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ))
                          ],
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 250,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff484C57),
                              //Color(0xff6B7181),
                              Color(0xff1D1F23),
                            ],
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                                top: 20,
                                right: 220,
                                child: Image.asset("assets/star.png")),
                            Positioned(
                                top: 20,
                                right: 195,
                                child: Text(
                                  "4.6",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )),
                            Positioned(
                                left: 20,
                                child: Image.asset("assets/pic2.png")),
                            Positioned(
                                top: 180,
                                left: 30,
                                child: Text(
                                  "SONY 200mm Zoom ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                            Positioned(
                                top: 200,
                                left: 30,
                                child: Text(
                                  " \$6000",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ))
                          ],
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 250,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff484C57),
                              //Color(0xff6B7181),
                              Color(0xff1D1F23),
                            ],
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                                top: 20,
                                right: 220,
                                child: Image.asset("assets/star.png")),
                            Positioned(
                                top: 20,
                                right: 195,
                                child: Text(
                                  "4.6",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )),
                            Positioned(
                                left: 20,
                                child: Image.asset("assets/pic3.png")),
                            Positioned(
                                top: 180,
                                left: 30,
                                child: Text(
                                  " Canon EOS 30D",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                            Positioned(
                                top: 200,
                                left: 30,
                                child: Text(
                                  " \$16000",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ))
                          ],
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 250,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff484C57),
                              //Color(0xff6B7181),
                              Color(0xff1D1F23),
                            ],
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                                top: 20,
                                right: 220,
                                child: Image.asset("assets/star.png")),
                            Positioned(
                                top: 20,
                                right: 195,
                                child: Text(
                                  "4.6",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )),
                            Positioned(
                                left: 20,
                                child: Image.asset("assets/pic4.png")),
                            Positioned(
                                top: 180,
                                left: 30,
                                child: Text(
                                  "SONY 200mm Zoom ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                            Positioned(
                                top: 200,
                                left: 30,
                                child: Text(
                                  " \$6000",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ))
                          ],
                        )),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
              )

              // Container(
              //   child: GridView.builder(
              //     //  shrinkWrap: false,
              //     //scrollDirection: Axis.vertical,
              //     itemCount: Model.length,
              //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //         crossAxisCount: 2, crossAxisSpacing: 4, mainAxisSpacing: 4),
              //     itemBuilder: (BuildContext context, int index) {
              //       return Image.asset(Model[index]);
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
