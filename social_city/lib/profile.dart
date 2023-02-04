import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}
class _ProfileState extends State<Profile> {

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
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        title: Text('Профиль команды'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  child: ClipPath(
                    clipper: HalfCircleClipper(),
                    child: Container(
                      height: 311,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                SafeArea(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20, bottom: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Team Spirit', style: GoogleFonts.roboto(fontSize: 24, color: Colors.white),),
                              Padding(padding: EdgeInsets.all(2)),
                              SvgPicture.asset('assets/star2.svg')
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 16, right: 16, top: 25, bottom: 10),
                          child: Card(
                              color: Color(0xFFECF7FF),
                              child: Container(
                                padding: EdgeInsets.all(16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text('Ближайшая игра', style: GoogleFonts.roboto(fontSize: 16, color: Colors.lightBlue, fontWeight: FontWeight.bold),),
                                        Text('28 июля, СР', style: GoogleFonts.roboto(fontSize: 14),)
                                      ],
                                    ),
                                    Container(
                                      child: Text('19:30-21:00', style: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.bold),),
                                    )
                                  ],
                                ),
                              )
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 4),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text('Нет, не иду', style: GoogleFonts.roboto(fontSize: 16),),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.red
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 4),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text('Да, пойду!', style: GoogleFonts.roboto(fontSize: 16),),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.lightGreen,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 8),
                                  child: Text('Календарь игр', style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.bold),),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: Colors.lightBlue
                                      ),
                                      child: Column(
                                        children: [
                                          Text('СР', style: GoogleFonts.roboto(fontSize: 16, color: Colors.white),),
                                          Text('3', style: GoogleFonts.roboto(fontSize: 24, color: Colors.white),),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: Colors.lightBlue
                                      ),
                                      child: Column(
                                        children: [
                                          Text('ЧТ', style: GoogleFonts.roboto(fontSize: 16, color: Colors.white),),
                                          Text('4', style: GoogleFonts.roboto(fontSize: 24, color: Colors.white),),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: Colors.lightBlue
                                      ),
                                      child: Column(
                                        children: [
                                          Text('ПТ', style: GoogleFonts.roboto(fontSize: 16, color: Colors.white),),
                                          Text('5', style: GoogleFonts.roboto(fontSize: 24, color: Colors.white),),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          border: Border.all(color: Colors.lightBlue)
                                      ),
                                      child: Column(
                                        children: [
                                          Text('СБ', style: GoogleFonts.roboto(fontSize: 16, color: Colors.lightBlue),),
                                          Text('6', style: GoogleFonts.roboto(fontSize: 24, color: Colors.lightBlue),),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          border: Border.all(color: Colors.lightBlue)
                                      ),
                                      child: Column(
                                        children: [
                                          Text('ВС', style: GoogleFonts.roboto(fontSize: 16, color: Colors.lightBlue),),
                                          Text('7', style: GoogleFonts.roboto(fontSize: 24, color: Colors.lightBlue),),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: Colors.lightBlue
                                      ),
                                      child: Column(
                                        children: [
                                          Text('ПН', style: GoogleFonts.roboto(fontSize: 16, color: Colors.white),),
                                          Text('8', style: GoogleFonts.roboto(fontSize: 24, color: Colors.white),),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          border: Border.all(color: Colors.lightBlue)
                                      ),
                                      child: Column(
                                        children: [
                                          Text('СР', style: GoogleFonts.roboto(fontSize: 16, color: Colors.lightBlue),),
                                          Text('3', style: GoogleFonts.roboto(fontSize: 24, color: Colors.lightBlue),),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 15),
                                child: Text('Участники команды', style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.bold),),
                              ),
                              ListTile(
                                leading: Align(
                                  widthFactor: 0.5,
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage('assets/users/1.jpg'),
                                  ),
                                ),
                                title: Text('Наталья Ким', style: GoogleFonts.roboto(fontSize: 16),),
                                subtitle: Row(
                                  children: [
                                    Icon(Icons.equalizer, color: Colors.orange,),
                                    Text('Профи', style: GoogleFonts.roboto(fontSize: 14, color: Colors.black12),)
                                  ],
                                ),
                                trailing: Container(
                                  padding: EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFDCF5E3),
                                    borderRadius: BorderRadius.circular(3.73)
                                  ),
                                  child: Text('Идет', style: GoogleFonts.roboto(color: Colors.green),),
                                )
                              ),
                              ListTile(
                                leading: Align(
                                  widthFactor: 0.5,
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage('assets/users/2.jpg'),
                                  ),
                                ),
                                  title: Text('Анастасия Беспалова', style: GoogleFonts.roboto(fontSize: 16),),
                                  subtitle: Row(
                                    children: [
                                      Icon(Icons.equalizer, color: Colors.orange,),
                                      Text('Любитель', style: GoogleFonts.roboto(fontSize: 14, color: Colors.black12),)
                                    ],
                                  ),
                                  trailing: Container(
                                    padding: EdgeInsets.all(4.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFF5D3CF),
                                        borderRadius: BorderRadius.circular(3.73)
                                    ),
                                    child: Text('Не идет', style: GoogleFonts.roboto(color: Colors.red),),
                                  )
                              ),
                              ListTile(
                                leading: Align(
                                  widthFactor: 0.5,
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage('assets/users/3.jpg'),
                                  ),
                                ),
                                  title: Text('Татьяна Круглова', style: GoogleFonts.roboto(fontSize: 16),),
                                  subtitle: Row(
                                    children: [
                                      Icon(Icons.equalizer, color: Colors.orange,),
                                      Text('Любитель', style: GoogleFonts.roboto(fontSize: 14, color: Colors.black12),)
                                    ],
                                  ),
                                  trailing: Container(
                                    padding: EdgeInsets.all(4.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFDDEAF3),
                                        borderRadius: BorderRadius.circular(3.73)
                                    ),
                                    child: Text('Думает', style: GoogleFonts.roboto(color: Color(0xFFA2B9CA)),),
                                  )
                              ),
                              ListTile(
                                leading: Align(
                                  widthFactor: 0.5,
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage('assets/users/6.jpg'),
                                  ),
                                ),
                                  title: Text('Наталья Ким', style: GoogleFonts.roboto(fontSize: 16),),
                                  subtitle: Row(
                                    children: [
                                      Icon(Icons.equalizer, color: Colors.orange,),
                                      Text('Профи', style: GoogleFonts.roboto(fontSize: 14, color: Colors.black12),)
                                    ],
                                  ),
                                  trailing: Container(
                                    padding: EdgeInsets.all(4.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFDCF5E3),
                                        borderRadius: BorderRadius.circular(3.73)
                                    ),
                                    child: Text('Идет', style: GoogleFonts.roboto(color: Colors.green),),
                                  )
                              ),
                              ListTile(
                                leading: Align(
                                  widthFactor: 0.5,
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage('assets/users/7.jpg'),
                                  ),
                                ),
                                  title: Text('Наталья Ким', style: GoogleFonts.roboto(fontSize: 16),),
                                  subtitle: Row(
                                    children: [
                                      Icon(Icons.equalizer, color: Colors.orange,),
                                      Text('Профи', style: GoogleFonts.roboto(fontSize: 14, color: Colors.black12),)
                                    ],
                                  ),
                                  trailing: Container(
                                    padding: EdgeInsets.all(4.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFDDEAF3),
                                        borderRadius: BorderRadius.circular(3.73)
                                    ),
                                    child: Text('Думает', style: GoogleFonts.roboto(color: Color(0xFFA2B9CA),),
                                  ),
                              ),
                              ),
                              ListTile(
                                leading: Align(
                                  widthFactor: 0.5,
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage('assets/users/5.jpg'),
                                  ),
                                ),
                                  title: Text('Наталья Ким', style: GoogleFonts.roboto(fontSize: 16),),
                                  subtitle: Row(
                                    children: [
                                      Icon(Icons.equalizer, color: Colors.orange,),
                                      Text('Профи', style: GoogleFonts.roboto(fontSize: 14, color: Colors.black12),)
                                    ],
                                  ),
                                  trailing: Container(
                                    padding: EdgeInsets.all(4.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFF5D3CF),
                                        borderRadius: BorderRadius.circular(3.73)
                                    ),
                                    child: Text('Не идет', style: GoogleFonts.roboto(color: Colors.red),),
                                  )
                              ),
                              ListTile(
                                leading: Align(
                                  widthFactor: 0.5,
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage('assets/users/5.jpg'),
                                  ),
                                ),
                                  title: Text('Наталья Ким', style: GoogleFonts.roboto(fontSize: 16),),
                                  subtitle: Row(
                                    children: [
                                      Icon(Icons.equalizer, color: Colors.orange,),
                                      Text('Профи', style: GoogleFonts.roboto(fontSize: 14, color: Colors.black12),)
                                    ],
                                  ),
                                  trailing: Container(
                                    padding: EdgeInsets.all(4.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFDCF5E3),
                                        borderRadius: BorderRadius.circular(3.73)
                                    ),
                                    child: Text('Идет', style: GoogleFonts.roboto(color: Colors.green),),
                                  )
                              )
                            ],
                          ),
                        )
                      ],
                    )
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}

class HalfCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height / 6.5);
    path.arcToPoint(
      Offset(size.width, size.height / 6.5),
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

