import 'dart:developer';
import 'dart:io';
import 'dart:math' as math;
import 'package:flutter/cupertino.dart';
import 'package:social_city/profile.dart';
import 'package:tag/tag.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:social_city/buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AppinioSwiperController controller = AppinioSwiperController();

  void _swipe(int index, AppinioSwiperDirection direction) {
    log("the card was swiped to the: " + direction.name);
  }

  void _unswipe(bool unswiped) {
    if (unswiped) {
      log("SUCCESS: card was unswiped");
    } else {
      log("FAIL: no card left to unswipe");
    }
  }

  List RandomImages = [
    'assets/users/1.jpg',
    'assets/users/2.jpg',
    'assets/users/3.jpg',
    'assets/users/5.jpg',
    'assets/users/5.jpg',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Поиск команды', style: GoogleFonts.roboto(fontSize: 18, color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
        leading: Container(
          margin: EdgeInsets.all(8.0),
          child: CircleAvatar(
            child: const Text('AH'),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.tune),
            color: Colors.blue,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: CupertinoPageScaffold(
          backgroundColor: Colors.white,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/sports-handball.jpg', scale: 4,),
                    Text('Воллейбол', style: GoogleFonts.roboto(fontSize: 18.0),),
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.75,
                    child: AppinioSwiper(
                      unlimitedUnswipe: true,
                      controller: controller,
                      unswipe: _unswipe,
                      onSwipe: _swipe,
                      cards: cards,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        swipeLeftButton(controller),
                        const SizedBox(
                          width: 20,
                        ),
                        swipeRightButton(controller),
                        const SizedBox(
                          width: 20,
                        ),
                        unswipeButton(controller),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )
    );
  }


  /*Карточки главного экрана*/
  List <Container> cards = [
    Container(
      height: 150,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xffDDDDDD),
              blurRadius: 6.0,
              spreadRadius: 1.0,
              offset: Offset(0.0, 0.0),
            )
          ]
      ),
      child: GestureDetector(
        onTap: () {},
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  child: ClipPath(
                    clipper: HalfCircleClipper(),
                    child: Container(
                      height: 311,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 31, bottom: 8.5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text('Team Spirit', style: GoogleFonts.roboto(fontSize: 18, color: Colors.white),),],
                        )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8.5, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            widthFactor: 0.5,
                            child: CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage('assets/users/1.jpg'),
                            ),
                          ),
                          Align(
                            widthFactor: 0.5,
                            child: CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage('assets/users/2.jpg'),
                            ),
                          ),
                          Align(
                            widthFactor: 0.5,
                            child: CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage('assets/users/3.jpg'),
                            ),
                          ),
                          Align(
                            widthFactor: 0.5,
                            child: CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage('assets/users/5.jpg'),
                            ),
                          ),
                          Align(
                            widthFactor: 0.5,
                            child: CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage('assets/users/5.jpg'),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, left: 16, right: 16),
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 8),
                              margin: EdgeInsets.only(top: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(margin: EdgeInsets.only(left: 16),child: Text('Ноябрь 7, ВС', style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 16),),),
                                  Container(
                                    margin: EdgeInsets.only(top: 5, left: 16, right: 16, bottom: 9),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(3.73)),
                                            color: Colors.greenAccent,
                                          ),
                                          margin: EdgeInsets.only(right: 4.5),
                                          padding: EdgeInsets.only(top: 4, bottom: 4, left: 5, right: 5),
                                          child: Center(
                                            child: Text('Regular game', style: GoogleFonts.roboto(fontSize: 10, color: Colors.green),),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(3.73)),
                                            color: Colors.lightBlueAccent,
                                          ),
                                          margin: EdgeInsets.only(left: 4.5),
                                          padding: EdgeInsets.only(top: 4, bottom: 4, left: 5, right: 5),
                                          child: Center(
                                            child: Text('Волейбол', style: GoogleFonts.roboto(fontSize: 10, color: Colors.blue),),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 16),
                              child: Text('16:00', style: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.bold),),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10, bottom: 5, left: 20, right: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.people_alt, color: Colors.orange,),
                              Text('Требуется 2 участника'),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 5.0, bottom: 5.0)),
                          Row(
                            children: [
                              Icon(Icons.money, color: Colors.orange,),
                              Text('Стоимость игры 150 ₽'),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 5.0, bottom: 5.0)),
                          Row(
                            children: [
                              Icon(Icons.equalizer, color: Colors.orange,),
                              Text('Любитель'),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 5.0, bottom: 5.0)),
                          Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.orange,),
                              Text('г. Москва, Днепропетровская, 33А'),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 5.0, bottom: 5.0)),
                          Container(
                            child: InkWell(
                              onTap: () {},
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset('assets/map.jpg',
                                    height: 86),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xffDDDDDD),
              blurRadius: 6.0,
              spreadRadius: 1.0,
              offset: Offset(0.0, 0.0),
            )
          ]
      ),
      child: GestureDetector(
        onTap: () {},
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Container(
                  height: 311,
                  width: double.infinity,
                  child: ClipPath(
                    clipper: HalfCircleClipper(),
                    child: Container(
                      height: 311,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 31, bottom: 8.5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text('Team Spirit', style: GoogleFonts.roboto(fontSize: 18, color: Colors.white),),],
                        )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8.5, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            widthFactor: 0.5,
                            child: CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage('assets/users/1.jpg'),
                            ),
                          ),
                          Align(
                            widthFactor: 0.5,
                            child: CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage('assets/users/2.jpg'),
                            ),
                          ),
                          Align(
                            widthFactor: 0.5,
                            child: CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage('assets/users/3.jpg'),
                            ),
                          ),
                          Align(
                            widthFactor: 0.5,
                            child: CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage('assets/users/5.jpg'),
                            ),
                          ),
                          Align(
                            widthFactor: 0.5,
                            child: CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage('assets/users/5.jpg'),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, left: 16, right: 16),
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 8),
                              margin: EdgeInsets.only(top: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(margin: EdgeInsets.only(left: 16),child: Text('Ноябрь 7, ВС', style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 16),),),
                                  Container(
                                    margin: EdgeInsets.only(top: 5, left: 16, right: 16, bottom: 9),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(3.73)),
                                            color: Colors.greenAccent,
                                          ),
                                          margin: EdgeInsets.only(right: 4.5),
                                          padding: EdgeInsets.only(top: 4, bottom: 4, left: 5, right: 5),
                                          child: Center(
                                            child: Text('Regular game', style: GoogleFonts.roboto(fontSize: 10, color: Colors.green),),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(3.73)),
                                            color: Colors.lightBlueAccent,
                                          ),
                                          margin: EdgeInsets.only(left: 4.5),
                                          padding: EdgeInsets.only(top: 4, bottom: 4, left: 5, right: 5),
                                          child: Center(
                                            child: Text('Волейбол', style: GoogleFonts.roboto(fontSize: 10, color: Colors.blue),),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 16),
                              child: Text('16:00', style: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.bold),),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10, bottom: 5, left: 20, right: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.people_alt, color: Colors.orange,),
                              Text('Требуется 2 участника'),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 5.0, bottom: 5.0)),
                          Row(
                            children: [
                              Icon(Icons.money, color: Colors.orange,),
                              Text('Стоимость игры 150 ₽'),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 5.0, bottom: 5.0)),
                          Row(
                            children: [
                              Icon(Icons.equalizer, color: Colors.orange,),
                              Text('Любитель'),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 5.0, bottom: 5.0)),
                          Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.orange,),
                              Text('г. Москва, Днепропетровская, 33А'),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 5.0, bottom: 5.0)),
                        ],
                      ),
                    ),
                    Container(
                      child: InkWell(
                        onTap: () {},
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset('assets/map.jpg',
                              height: 86),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xffDDDDDD),
              blurRadius: 6.0,
              spreadRadius: 1.0,
              offset: Offset(0.0, 0.0),
            )
          ]
      ),
      child: GestureDetector(
        onTap: () {},
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Container(
                  height: 311,
                  width: double.infinity,
                  child: ClipPath(
                    clipper: HalfCircleClipper(),
                    child: Container(
                      height: 311,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 31, bottom: 8.5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text('Team Spirit', style: GoogleFonts.roboto(fontSize: 18, color: Colors.white),),],
                        )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8.5, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            widthFactor: 0.5,
                            child: CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage('assets/users/1.jpg'),
                            ),
                          ),
                          Align(
                            widthFactor: 0.5,
                            child: CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage('assets/users/2.jpg'),
                            ),
                          ),
                          Align(
                            widthFactor: 0.5,
                            child: CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage('assets/users/3.jpg'),
                            ),
                          ),
                          Align(
                            widthFactor: 0.5,
                            child: CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage('assets/users/5.jpg'),
                            ),
                          ),
                          Align(
                            widthFactor: 0.5,
                            child: CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage('assets/users/5.jpg'),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, left: 16, right: 16),
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 8),
                              margin: EdgeInsets.only(top: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(margin: EdgeInsets.only(left: 16),child: Text('Ноябрь 7, ВС', style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 16),),),
                                  Container(
                                    margin: EdgeInsets.only(top: 5, left: 16, right: 16, bottom: 9),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(3.73)),
                                            color: Colors.greenAccent,
                                          ),
                                          margin: EdgeInsets.only(right: 4.5),
                                          padding: EdgeInsets.only(top: 4, bottom: 4, left: 5, right: 5),
                                          child: Center(
                                            child: Text('Regular game', style: GoogleFonts.roboto(fontSize: 10, color: Colors.green),),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(3.73)),
                                            color: Colors.lightBlueAccent,
                                          ),
                                          margin: EdgeInsets.only(left: 4.5),
                                          padding: EdgeInsets.only(top: 4, bottom: 4, left: 5, right: 5),
                                          child: Center(
                                            child: Text('Волейбол', style: GoogleFonts.roboto(fontSize: 10, color: Colors.blue),),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 16),
                              child: Text('16:00', style: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.bold),),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 2, bottom: 2, left: 20, right: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.people_alt, color: Colors.orange,),
                              Text('Требуется 2 участника'),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 5.0, bottom: 5.0)),
                          Row(
                            children: [
                              Icon(Icons.money, color: Colors.orange,),
                              Text('Стоимость игры 150 ₽'),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 5.0, bottom: 5.0)),
                          Row(
                            children: [
                              Icon(Icons.equalizer, color: Colors.orange,),
                              Text('Любитель'),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 5.0, bottom: 5.0)),
                          Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.orange,),
                              Text('г. Москва, Днепропетровская, 33А'),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 5.0, bottom: 5.0)),
                        ],
                      ),
                    ),
                    Container(
                      child: InkWell(
                        onTap: () {},
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset('assets/map.jpg',
                              height: 86),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
        ),
      ),
    ),
  ];

}


/*Рисунок полукруглого объекта*/
class HalfCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height / 2.5);
    path.arcToPoint(
      Offset(size.width, size.height / 2.5),
      radius: Radius.elliptical(size.width, size.height),
      clockwise: false,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
