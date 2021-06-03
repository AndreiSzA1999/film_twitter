import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImagePage extends StatefulWidget {
  ImagePage(this.image, this.numLikes, this.numComs);
  final String image;
  final int numLikes;
  final int numComs;
  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: double.infinity,
            color: Colors.blue.withOpacity(0.7),
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ],
            )),
        Container(
          height: MediaQuery.of(context).size.height * 0.83,
          width: double.infinity,
          color: Colors.black,
          child: Image.asset(widget.image, fit: BoxFit.fitWidth),
        ),
        Expanded(
            child: Container(
          color: Colors.blue,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 40,
              ),
              Icon(Icons.chat_bubble_rounded, color: Colors.white, size: 30),
              SizedBox(
                width: 5,
              ),
              Text(
                widget.numLikes.toString(),
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.favorite,
                color: Colors.white,
                size: 35,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                widget.numComs.toString(),
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.send,
                color: Colors.white,
                size: 40,
              ),
            ],
          ),
        ))
      ],
    ));
  }
}
