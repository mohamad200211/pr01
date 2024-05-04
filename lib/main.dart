import 'package:flutter/material.dart';

import 'carousel_slider.dart';
import 'componentn.dart';

void main() {
  runApp(const MyApp());
}

double p1 = 12;

const pur = Color(0xff1f244a);
const backgroundColor = Color(0xfff0f0f0);
const white = Color(0xfffdfdfd);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BannerCard("jh"));
  }
}

class Msh2 extends StatefulWidget {
  const Msh2({Key? key}) : super(key: key);

  @override
  State<Msh2> createState() => _Msh2State();
}

class _Msh2State extends State<Msh2> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: height * 0.1,
                  color: Colors.white,
                  padding: EdgeInsets.all(p1),
                  child: Row(
                    children: [
                      Container(
                        width: width * 0.1,
                        child: Text1("CarDealing", 14, pur),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xfff0f0f0),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              height: 22,
                              width: 22,
                              child: Icon(
                                Icons.favorite_outline_sharp,
                                size: 16,
                                color: pur,
                              ),
                            ),
                            SizedBox(width: 7),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xfff0f0f0),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              height: 22,
                              width: 22,
                              child: Icon(
                                Icons.favorite_outline_sharp,
                                size: 14,
                                color: pur,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      5,
                      (d) => Container(
                        width: width / 3.5,
                        // Set the fixed width of each column
                        margin: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            SizedBox(
                              height: width * 0.1,
                              child: Container(
                                height: 55,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 10),
                                      blurRadius: 20,
                                      color: Colors.grey.withOpacity(0.3),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      "assets/images/s1.png",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: height / 70),
                              child: Text(
                                "dsaf",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Component(),
                Component(),
                Component(),
                Component(),
                MakeModel()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MakeModel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 22),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 12,
                  offset: Offset(1, 1),
                  blurStyle: BlurStyle.outer)
            ],
            color: Colors.white),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text1("Make Model", 18, Colors.black87),
            Text1("Reset", 16, primary)
          ]),
          Models()
        ]));
  }
}

class Models extends StatelessWidget {
  const Models({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 88,
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 22),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black45, width: 2),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2,
                  offset: Offset(1, 1),
                  blurStyle: BlurStyle.outer)
            ],
            color: Colors.white),
        child: Row(
          children: [
            Icon(Icons.car_rental, color: Colors.black, size: 33),
            Container(
              padding:  EdgeInsets.only(left: 12,top: 4),
              margin: EdgeInsets.only(left: 22, right:22),
              width: 220,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text1(
                      "Mercedes Benz",
                      22,
                      Colors.black87,
                    ),
                    Text1(
                      "AMG,Citan,A120",
                      17,
                      Colors.black45,
                    ),
                  ]),
            ),
            Icon(Icons.arrow_forward_rounded, color: Colors.red, size: 22),
          ],
        ));
  }
}

Widget Text1(String text, double size, Color color) {
  return Text(text,
      maxLines: 1,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w500,
        fontSize: size,
      ));
}
