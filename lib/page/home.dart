import 'package:electronic_rosary/widght/custem_carouserslider.dart';
import 'package:electronic_rosary/widght/item.dart';
import 'package:flutter/material.dart';
import 'package:electronic_rosary/model/whatup.dart';

class home extends StatelessWidget {
  home({super.key});
  Whatup sl = Whatup();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "مسبحة الاكترونية ",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("فضل الاستغفار "),
                    content: Container(
                      height: 300,
                      child: Column(
                        children: [
                          Text(
                            "الاستغفار نعمة من الغفار، من راوح عليها وجد أثرها في",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "نفسه وماله وولده، وجميع شأنه.. ولا يعرف برد المغفرة إلا",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "وفي الاستغفار تكفير السيئات، وزيادة الحسنات، ورفع الدرجات",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "عرف قيمة الاستغفار",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            " : قال تعالى ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "{وَقُولُوا حِطَّةٌ نَغْفِرْ لَكُمْ خَطَايَاكُمْ وَسَنَزِيدُ الْمُحْسِنِينَ}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 40),
                          InkWell(
                            onTap: () {
                              sl.open();
                            },
                            child: Icon(
                              Icons.brightness_auto_rounded,
                              size: 100,
                              color: Colors.teal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            icon: Icon(Icons.mosque, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            cusetom_scarouser(),
            items(tital: "سبحان الله", acounter: 0),
            SizedBox(height: 10),
            items(tital: "  الحمد لله", acounter: 0),
            SizedBox(height: 10),
            items(tital: "  الله اكبر ", acounter: 0),
            SizedBox(height: 10),
            items(tital: "لااله الا الله", acounter: 0),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
