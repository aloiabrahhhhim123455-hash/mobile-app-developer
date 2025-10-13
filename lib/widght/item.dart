import 'package:flutter/material.dart';

class items extends StatefulWidget {
  const items({super.key,required this.tital,required this.acounter});
 final String tital;
 final int acounter;
  @override
  State<items> createState() => _itemsState();
}
int n1=0;
class _itemsState extends State<items> {
   late int counter;
  @override
  void initState() {
    super.initState();
    counter = widget.acounter;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
       child: Row(
        children: [
          Expanded(
            child: Container(
              height: 100,
              child: Card(
                 elevation: 8, 
                 shadowColor: Colors.teal,
                child: Row(
                  children: [
                    SizedBox(width:100,),
                      Text(widget.tital,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      SizedBox(width: 20,),
                      Text('$counter',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                      SizedBox(width: 60,),
                      IconButton(onPressed: () {
                        setState(() {
                          counter=0;
                        });
                      }, icon: Icon(Icons.refresh)),
                       IconButton(onPressed: () {
                        setState(() {
                          counter=counter+1;
                        });
                      }, icon: Icon(Icons.add)),
                  ],
                )
              ),
            ),
          ),
         

        ],
       ),
    );
  }
}