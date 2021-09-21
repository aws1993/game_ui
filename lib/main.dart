import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:game_ui/screens/gameInfo.dart';
import 'package:game_ui/widgets/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var currentPage =0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grayBackGround,
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('images/b.jpg'),
                fit: BoxFit.cover,
              )),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              trailing: Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Game Store',
          style: GoogleFonts.orbitron(),
        ),
        centerTitle: true,
        backgroundColor: blackBackGround,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                  color: grayBackGround,
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        grayBackGround,
                        blackBackGround,
                      ])),
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Good morning',
                                style: GoogleFonts.orbitron(
                                    color: Colors.grey, fontSize: 20)),
                            Text(
                              'Ellie',
                              style: TextStyle(color: whiteText, fontSize: 20),
                            )
                          ],
                        ),
                        Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage('images/b.jpg'),
                                    fit: BoxFit.cover)),
                            child: Stack(
                              children: [
                                Positioned(
                                  bottom: 5,
                                  right: 0,
                                  child: Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xFF5757CF),
                                    ),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        category(
                            backgrounColor: blueIndego,
                            containerColor: blueIndego,
                            icon: FontAwesomeIcons.gamepad,
                            text: 'PS4',
                            mainShadow: Colors.blueAccent,
                            containerShadow: blackBackGround),
                        category(
                            backgrounColor: grayColor,
                            containerColor: greenAndDark,
                            icon: FontAwesomeIcons.gamepad,
                            text: 'Xbox',
                            mainShadow: Colors.green,
                            containerShadow: Color(0xFF346145)),
                        category(
                            backgrounColor: redColor,
                            containerColor: redAndDark,
                            icon: FontAwesomeIcons.gamepad,
                            text: 'Switch',
                            mainShadow: Colors.redAccent,
                            containerShadow: Color(0xFF382529)),
                        category(
                            backgrounColor: perpuleColor,
                            containerColor: PerpuleAndDark,
                            icon: FontAwesomeIcons.gamepad,
                            text: 'Steam',
                            mainShadow: Color(0xFFAE81EE),
                            containerShadow: Color(0xFF5B2B63)),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [grayBackGround, blackBackGround],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight)),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Feature',
                          style: GoogleFonts.orbitron(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            Text(
                              'View all',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 15,
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          categoryGame(url: 'https://miro.medium.com/max/6400/1*A22QwHbjYVzRvLIr8UvPsw.jpeg' ,tagname: 'a'),
                          categoryGame(url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjWwlRrOAXFAGMJC7DU6RYKtXXwB2KskJRZZsrP_7T40RD5JRqPydiHECBn_hkeiPQ24g&usqp=CAU' ,tagname: 'b'),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Related',
                          style: GoogleFonts.orbitron(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            Text(
                              'View all',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 15,
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          categoryGame(url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYmIJ4u9WoDSa7Lw8DvW_yHIXBkHnuA9gHIsHW_xrN5rsDN3A3t2U3aS7zCbYWvq_f1w4&usqp=CAU' ,tagname: 'c'),
                          categoryGame(url: 'https://ichef.bbci.co.uk/news/976/cpsprodpb/9777/production/_108957783_lou1_976.jpg' ,tagname: 'd'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
        bottomNavigationBar: FancyBottomNavigation(
          barBackgroundColor: grayBackGround,
          tabs: [
            TabData(iconData: Icons.home, title: "Home"),
            TabData(iconData: Icons.search, title: "Search"),
            TabData(iconData: Icons.shopping_cart, title: "Basket")
          ],
          onTabChangedListener: (position) {
            setState(() {
              currentPage = position;
            });
          },
        )
    );
  }

  Container category(
      {List backgrounColor,
      List containerColor,
      IconData icon,
      String text,
      Color mainShadow,
      Color containerShadow}) {
    return Container(
      height: 100,
      width: 58,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(blurRadius: 15, spreadRadius: 1, color: mainShadow)
          ],
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: backgrounColor,
          )),
      child: Stack(
        children: [
          Positioned(
            top: 5,
            right: 5,
            left: 5,
            child: Container(
              width: 50,
              height: 45,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 3),
                    color: containerShadow,
                    spreadRadius: 2,
                    blurRadius: 10,
                  ),
                ],
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: containerColor,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Icon(
                icon,
                color: Colors.white70,
              ),
            ),
          ),
          Positioned(
              bottom: 20,
              left: 11,
              child: Text(
                text,
                style: TextStyle(color: Colors.white70),
              ))
        ],
      ),
    );
  }

  Widget categoryGame({@required String url ,String tagname}) {
    return GestureDetector(
      onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (_)=> GameInfo(tagfromMain: tagname,urlFrommain: url,))),
      child: Padding(
        padding: const EdgeInsets.only(top: 10, right: 15,bottom: 6),
        child: Container(
          height: 200,
          width: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [grayBackGround, blackBackGround],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                bottom: 0,
                top: 0,
                child: Hero(
                  tag: tagname,
                  child: CachedNetworkImage(
                    width: 200,
                    fit: BoxFit.cover,
                    imageUrl: url,
                    placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                  // child: Container(
                  //   width: 200,
                  //   decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(15),
                  //       image: DecorationImage(
                  //         image: NetworkImage( url),
                  //         fit: BoxFit.cover,
                  //       )),
                  // ),
                ),
              ),
              Positioned(
                right: 10,
                bottom: 25,
                top: 25,
                child: Container(
                  width: 140,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: blueIndego,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'The last of Us 2',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          'Ps4 exclusive',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        SizedBox(height: 40,),
                        Center(
                          child: Container(
                            height: 35,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(child: Text('Preorder')),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
