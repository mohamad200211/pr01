import 'package:flutter/material.dart';
import 'package:untitled7/main.dart';
const Color primary=Color(0xffee5225);
const paddin1=EdgeInsets.all(10);
Set arr = {
  {"image": "assets/images/s1.png", "price": 5555}
};

class Component extends StatefulWidget {
  const Component({Key? key}) : super(key: key);

  @override
  State<Component> createState() => _ComponentState();
}

class _ComponentState extends State<Component> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          Container(
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(arr.first['image'])),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 102,
                      offset: Offset(-1, -1),
                      blurStyle: BlurStyle.outer)
                ]),
          ),
          Container(
              height: 55,
              padding: EdgeInsets.only(top: p1, left: p1, right: p1),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text1("Bmw", 22, Colors.black87),
                    Text1("2322\$", 22, Colors.black87)
                  ])),
          Container(
              height: 75,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NewWidget(() {}, Icons.car_repair_rounded, "7700km"),
                    NewWidget(() {}, Icons.local_gas_station, "Petrol"),
                    NewWidget(() {}, Icons.car_crash_rounded, "380kw"),
                    NewWidget(() {}, Icons.whatshot_sharp, "4WD")
                  ])),
          Row(
            children: [
              Container(
                width: 300,
                height: 45,
                child: ElevatedButton(
                    onHover: (value) {},
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        elevation: 10,shadowColor: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_cart_rounded,
                          color: Colors.white,
                          size: 22,
                        ),
                        Text('get Start'),
                      ],
                    )),
              ),
              IconCard()
            ],
          )
        ]));
  }
}

class NewWidget extends StatelessWidget {
  late Function() onPress;
  late IconData icon;
  late String text;

  NewWidget(this.onPress, this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
          padding: EdgeInsets.only(
              top: p1, left: p1 / 2, right: p1 / 2, bottom: p1 / 2),
          height: 75,
          width: 75,
          decoration: BoxDecoration(
            color: Color(0xfff0f0f0),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                icon,
                size: 23,
                color: Colors.black87,
              ),
              Text1(text, 14, Colors.black87)
            ],
          )),
    );
  }
}

class My_bottun extends StatelessWidget {
  const My_bottun({
    super.key,
    required this.press,
  });

  final Function()? press;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Widget myBottom() {
      return ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              elevation: 10,
             backgroundColor : Colors.yellowAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: Text('get Start'));
    }

    Widget listViewComponents() {
      return Container(
        width: size.width,
        padding: EdgeInsets.only(
            top: size.height * .14,
            left: size.width / 30,
            right: size.width / 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(30)),
              margin: EdgeInsets.symmetric(vertical: 10),
              height: size.height / 9.2,
              child: Row(
                children: [
                  Container(
                      height: 90,
                      width: 90,
                      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 9),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(44),
                        child: Image.asset(
                          'images/mm.jpg',
                          fit: BoxFit.cover,
                        ),
                      )),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 5, left: 18),
                          child: Text('Orange jucie',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () {},
                              ),
                              Text('2',
                                  style: TextStyle(
                                      color: Colors.white24,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17)),
                              IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    child: Text('\$44888',
                        maxLines: 1,
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 16)),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget myBottom1() {
      return InkWell(
          customBorder:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          onTap: () {},
          splashColor: Colors.black87,
          splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
          onHover: (i) {},
          child: Container(
            width: 200,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                boxShadow: [
                  BoxShadow(
                      color: Colors.red,
                      spreadRadius: 2,
                      blurRadius: 9,
                      offset: Offset(3, 3)),
                  BoxShadow(
                      color: Colors.blue,
                      spreadRadius: 1,
                      offset: Offset(-2, -2),
                      blurRadius: 9)
                ],
                borderRadius: BorderRadius.circular(30)),
            child: Center(
                child: Text(
              'click',
              style: TextStyle(color: Colors.white, fontSize: 16),
            )),
          ));
    }

    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.greenAccent),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                side: BorderSide(color: Colors.black38, width: 1.4),
                borderRadius: BorderRadius.circular(20),
              ),
            )),
        onPressed: press,
        child: Container(
          alignment: Alignment.center,
          width: 150,
          height: 40,
          child: Text('click'),
        ));
  }
}

class IconCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      highlightColor: Colors.brown,
      hoverColor: Colors.blueAccent,
      child: Container(
        margin: paddin1,
        padding: paddin1,
        height: 44,
        width: 44,
        decoration: BoxDecoration(
          color: Color(0xFFF9F8FD),
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              offset: Offset(1, 1),
              blurRadius: 3,
              color: Colors.black54.withOpacity(0.22),
            ),
            BoxShadow(
              offset: Offset(-1, -1),
              blurRadius: 1,
              color: Color(0xFFFD5D0E),
            ),
          ],
        ),
        child: Icon(Icons.favorite_outline_sharp,color:primary ,),
      ),
    );
  }
}
