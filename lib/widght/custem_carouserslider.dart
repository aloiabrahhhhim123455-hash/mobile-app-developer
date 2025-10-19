import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';

class cusetom_scarouser extends StatelessWidget {
 cusetom_scarouser({super.key});
final List<String> images = [
    'imge/pages.svg',
    'imge/1534729909.svg',
    'imge/1617190547allah akbar 2.svg',
    'imge/1620532957لااله الا الله.svg'
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.only(right: 20,left: 20),
                child: Container(
                  height: 300,
                  width: 430,
                  child:  CarouselSlider(
                  items: images.map((imagePath) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          child: SvgPicture.asset(
                            imagePath,
                            fit: BoxFit.contain,
                            width: double.infinity,
                            color: Colors.teal,
                          ),
                        );
                      },
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: 250,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                    const Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                ),
                            ),
              );
  }
}
