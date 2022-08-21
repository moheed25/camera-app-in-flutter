import 'package:flutter/material.dart';


class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    Scaffold(body: Expanded(
      flex: 2,
      child: Container(color: Color(0xff131416),),
       )
    ));
  }
}