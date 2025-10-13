import 'package:electronic_rosary/widght/item.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
    'imge/pages.svg',
    'imge/1534729909.svg',
    'imge/1617190547allah akbar 2.svg'
  ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.teal ,
        title: Text("مسبحة الاكترونية ",style: TextStyle(fontWeight:FontWeight.bold,color:Colors.white ),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            showDialog(context: context, builder: (context) {
              return AlertDialog(
                  title: Text("فضل الاستغفار "),
                  content: Container(
                    height: 300,
                    child: Column(
                      children: [
                        Text("الاستغفار نعمة من الغفار، من راوح عليها وجد أثرها في",style: TextStyle(fontWeight:FontWeight.bold,)),
                        Text("نفسه وماله وولده، وجميع شأنه.. ولا يعرف برد المغفرة إلا",style: TextStyle(fontWeight:FontWeight.bold,)),
                        Text("وفي الاستغفار تكفير السيئات، وزيادة الحسنات، ورفع الدرجات",style: TextStyle(fontWeight:FontWeight.bold,)),
                        Text("عرف قيمة الاستغفار",style: TextStyle(fontWeight:FontWeight.bold,)),
                        Text(" : قال تعالى ",style: TextStyle(fontWeight:FontWeight.bold,)),
                        Text("{وَقُولُوا حِطَّةٌ نَغْفِرْ لَكُمْ خَطَايَاكُمْ وَسَنَزِيدُ الْمُحْسِنِينَ}",style: TextStyle(fontWeight:FontWeight.bold,)),
                        SizedBox(height: 40,),
                        Icon(Icons.brightness_auto_rounded,size: 100,color: Colors.teal,)
                      ],
                    ),
                  )
              );
            },);
          }, icon: Icon(Icons.mosque,color: Colors.white,))
        ],
        ),
        body: SingleChildScrollView(
          child:Column(
            children: [
              Padding(
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
              ),
                items(tital:"سبحان الله", acounter: 0),
                SizedBox(height: 10,),
                items(tital:"  الحمد لله", acounter: 0),
                SizedBox(height: 10,),
                items(tital:"  الله اكبر ", acounter: 0),
            ],
          ),
        ),
    );
  }
}