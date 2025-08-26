import 'package:flutter/material.dart';
class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 4),
      width: 90,
      height:30,
    decoration: BoxDecoration(
      color: Colors.grey.shade300,
      borderRadius: BorderRadius.circular(30)
    ),

    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      GestureDetector(
        onTap: () {
          setState(() {
            if(counter==0){
              return;
            }
            counter--;
          });
        },
        child: Container(
          height: 20,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle
          ),
          child: Icon(Icons.remove),
        ),
      ),
      Text("$counter",style: TextStyle(fontWeight: FontWeight.bold),),
      GestureDetector(
        onTap: () {
          setState(() {
            counter++;

          });
        },
        child: Container(
          height: 20,
          decoration: BoxDecoration(
            color:Colors.white,
            shape: BoxShape.circle
          ),
          child: Icon(Icons.add),
        ),
      )

    ],),
    );

  }
}
