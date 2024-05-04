import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final baseUrl = '';

class BannerCard extends StatelessWidget {
  String imgUrl;

  BannerCard(this.imgUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ClipRRect(
        child:Image.asset("assets/images/s1.png"),
        // child: CachedNetworkImage(
        //     width: double.infinity,
        //     fit: BoxFit.cover,
        //     imageUrl: baseUrl + imgUrl,
        //     progressIndicatorBuilder: (context, url, p) {
        //       return Container(
        //         height: 10,
        //         child: ClipRRect(
        //           borderRadius: BorderRadius.circular(10),
        //           child: AspectRatio(
        //             aspectRatio: 16 / 9,
        //             child: Container(
        //               color: Colors.grey,
        //             ),
        //           ),
        //         ),
        //         decoration: BoxDecoration(
        //             color: Colors.grey.shade300,
        //             borderRadius: BorderRadius.circular(10)),
        //       );
        //     }),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class CarouselSlider1 extends StatefulWidget {
  List<BannerCard> adModles;

  CarouselSlider1(this.adModles);

  @override
  State<CarouselSlider1> createState() => _CarouselSlider1State();
}

//Shimmer.fromColors(
//                   baseColor: Colors.grey,
//                   highlightColor: Colors.white,
//                   child: Container(
//                     height: 10,
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(10),
//                       child: AspectRatio(
//                         aspectRatio: 16 / 9,
//                         child: Container(
//                           color: Colors.grey,
//                         ),
//                       ),
//                     ),
//                     decoration: BoxDecoration(
//                         color: Colors.grey.shade300,
//                         borderRadius: BorderRadius.circular(10)),
//                   ))
class _CarouselSlider1State extends State<CarouselSlider1> {
  int _curentindex = 0;
  late List<Widget> listwidget;

  @override
  void initState() {
    listwidget = widget.adModles.map((e) => BannerCard(e.imgUrl)).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: widget.adModles,
          options: CarouselOptions(
            onPageChanged: (index, reason){
              setState(() {
                _curentindex=index;
              });
            },
              animateToClosest: true,
              enlargeCenterPage: true,
              aspectRatio: 16 / 9,
              viewportFraction: 1),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.adModles.map((e) {
              int index = widget.adModles.indexOf(e);
              return Container(
                width: 8,
                height: 8,
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _curentindex == index ? Colors.red : Colors.grey),
              );
            }).toList())
      ],
    );
  }
}
//Tabnine. Tabnine. Code faster with AI completions. ...
// Kite. Kite. Code Faster. ...
// Fig. Fig. ...
// Studio Bot. Google.
//create