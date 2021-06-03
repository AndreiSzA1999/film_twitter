import 'dart:ui';

import 'package:film_twitter/screens/models/tweet.dart';
import 'package:film_twitter/screens/photo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class TwitterPage extends StatefulWidget {
  @override
  _TwitterPageState createState() => _TwitterPageState();
}

class _TwitterPageState extends State<TwitterPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: width * 0.2,
                height: height * 0.1,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/profile1.jpg"),
                      radius: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "AndreiSzA",
                      style: GoogleFonts.raleway(
                          fontSize: 30, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              Container(
                height: height * 0.11,
                width: width * 0.5,
                decoration: BoxDecoration(
                    color: Color(0xff1c95e2),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 8,
                        ),
                        Text("Inicio",
                            style: GoogleFonts.raleway(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w600)),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 3,
                          width: 60,
                          color: Colors.white,
                        )
                      ],
                    ),
                    Text("Notificaciones",
                        style: GoogleFonts.raleway(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w600)),
                    Text("Mensajes",
                        style: GoogleFonts.raleway(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w600)),
                    Text("Ajustes",
                        style: GoogleFonts.raleway(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
              Container(
                height: height * 0.06,
                width: width * 0.2,
                decoration: BoxDecoration(
                    color: Color(0xfff2f2f2),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 4),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Buscar en Twitter',
                      hintStyle: TextStyle(fontSize: 20),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  width: width * 0.2,
                  height: height * 0.75,
                  decoration: BoxDecoration(
                      color: Color(0xfff2f2f2),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      )),
                  child: ListView(
                    children: [
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text("Tendencias",
                            style: GoogleFonts.raleway(
                                fontSize: 35, fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Tendencia(
                        titulo: "Tendencia 1",
                        subtitulo: "77.9k personas interesadas",
                      ),
                      Tendencia(
                        titulo: "Tendencia 2",
                        subtitulo: "77.9k personas interesadas",
                      ),
                      Tendencia(
                        titulo: "Tendencia 3",
                        subtitulo: "77.9k personas interesadas",
                      ),
                      Tendencia(
                        titulo: "Tendencia 4",
                        subtitulo: "77.9k personas interesadas",
                      ),
                      Tendencia(
                        titulo: "Tendencia 5",
                        subtitulo: "77.9k personas interesadas",
                      ),
                      Tendencia(
                        titulo: "Tendencia 6",
                        subtitulo: "77.9k personas interesadas",
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: height * 0.80,
                width: width * 0.77,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/profile1.jpg"),
                          radius: 35,
                        ),
                        Container(
                          height: height * 0.07,
                          width: width * 0.47,
                          decoration: BoxDecoration(
                            color: Color(0xfff2f2f2),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, top: 4),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: '¿Algun comentario?',
                                hintStyle: TextStyle(fontSize: 20),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: height * 0.07,
                          width: width * 0.08,
                          decoration: BoxDecoration(
                            color: Color(0xff1c95e2),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50)),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.image_search,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ),
                        Container(
                            height: height * 0.07,
                            width: width * 0.08,
                            decoration: BoxDecoration(
                              color: Color(0xff1c95e2),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(50)),
                            ),
                            child: Center(
                                child: Text("Enviar",
                                    style: GoogleFonts.raleway(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white))))
                      ],
                    ),
                    //Aqui metemos los tweets
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10),
                      child: Container(
                          height: height * 0.65,
                          width: width * 0.78,
                          child: GridTweets()),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class GridTweets extends StatelessWidget {
  List<TweetObect> listaPosts = [
    //Si el tamaño es 1, en imagenTweet lo dejamos vacio, si es dos ponemos
    //la direccion de la imagen
    //Si el tamaño es 2, en contenido tweet lo dejamos vacio, si es 1 ponemos
    //el contenido del tweet
    TweetObect(1, "Josep Newman", "@josepnewman", "assets/profile1.jpg", "",
        "Tweet de prueba para crear objeto", 12, 34),
    TweetObect(2, "Josep Newman", "@josepnewman", "assets/profile1.jpg",
        "assets/imagentw.jpg", "", 12, 34),
  ];

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
      crossAxisCount: 4,
      itemCount: listaPosts.length,
      itemBuilder: (BuildContext context, int index) =>
          listaPosts[index].size == 1
              ? Tweet(listaPosts[index])
              : TweetConImagen(listaPosts[index]),
      staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(2, listaPosts[index].size == 1 ? 1.2 : 1.6),
      mainAxisSpacing: 20.0,
      crossAxisSpacing: 20.0,
    );
  }
}

class TweetConImagen extends StatelessWidget {
  TweetConImagen(this.post);

  final TweetObect post;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(5, 5), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15.0),
              child: Row(
                children: [
                  CircleAvatar(
                      backgroundImage: AssetImage(post.imagenPerfil),
                      radius: 25),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        post.nombreUsuario,
                        style: GoogleFonts.raleway(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        post.nombreArroba,
                        style: GoogleFonts.raleway(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ImagePage(post.imagenTweet,
                                post.numLikes, post.numComentarios)),
                      );
                    },
                    child: Image.asset(
                      post.imagenTweet,
                      fit: BoxFit.cover,
                    ),
                  )),
            )),
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Colors.blue,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.chat_bubble_rounded,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    post.numLikes.toString(),
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    post.numComentarios.toString(),
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Tweet extends StatelessWidget {
  Tweet(this.post);

  final TweetObect post;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(5, 5), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15.0),
              child: Row(
                children: [
                  CircleAvatar(
                      backgroundImage: AssetImage(post.imagenPerfil),
                      radius: 25),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        post.nombreUsuario,
                        style: GoogleFonts.raleway(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        post.nombreArroba,
                        style: GoogleFonts.raleway(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Text(post.contenidoTweet,
                    style: GoogleFonts.raleway(
                        fontSize: 18, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.justify),
              ),
            )),
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Colors.blue,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.chat_bubble_rounded,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    post.numLikes.toString(),
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    post.numComentarios.toString(),
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Tendencia extends StatelessWidget {
  Tendencia({@required this.titulo, @required this.subtitulo});

  final titulo;
  final subtitulo;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(titulo,
              style: GoogleFonts.raleway(
                  fontSize: 25, fontWeight: FontWeight.bold)),
          SizedBox(
            height: height * 0.005,
          ),
          Text(subtitulo,
              style: GoogleFonts.raleway(
                  fontSize: 13, color: Colors.grey.shade900)),
          SizedBox(
            height: height * 0.025,
          ),
        ],
      ),
    );
  }
}
