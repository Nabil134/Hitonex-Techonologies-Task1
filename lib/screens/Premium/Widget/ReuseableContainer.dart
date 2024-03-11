
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/theme/style.dart';

class ReuseableContainer extends StatelessWidget {
  const ReuseableContainer({super.key,required this.txt1,required this.txt2,required this.icon});
  final String txt1,txt2;
 final IconData icon;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 77,
      width: 305,
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
      decoration: BoxDecoration(
        color: Color(0xffFED766),
        borderRadius: BorderRadius.circular(20),
      ),
    child: Row(
      children: [
        
      Icon( icon,
        color: Colors.black,size: 24,
      ),
    Spacer(),
    Column(children: [
      Text(txt1,style: TextStyle(
        color: blackColor,
        fontSize: 15,
        fontWeight: FontWeight.w700,
      ),),
      Text(txt2,style: TextStyle(
        color: redColor,
        fontSize: 15,
        fontWeight: FontWeight.w300,
      ),),
    ],),
    Spacer(),
      ],),
    );
  }
}
