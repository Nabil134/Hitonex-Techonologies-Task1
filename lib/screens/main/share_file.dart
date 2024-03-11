import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/theme/style.dart';

class ShareFile extends StatelessWidget {
  const ShareFile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Color(0xffFEDFDC),
      appBar: AppBar(
        backgroundColor:Color(0xffFEDFDC),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          Row(children: [
            Icon(Icons.print),
            SizedBox(width: 15,),
            Icon(Icons.share),
            SizedBox(width: 15,),
            Icon(Icons.star),
            SizedBox(width: 30,),
          ],),
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        width: 100,
        color: Color(0xffFFFFFF),
        child:Column(
          children: [
            Text('Share',style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 35,
            ),),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
  _optionSignIn(iconData: FontAwesomeIcons.linkedin, color:Colors.blue),
  _optionSignIn(iconData: FontAwesomeIcons.whatsapp, color:Colors.green),
  _optionSignIn(iconData: FontAwesomeIcons.twitter, color:Colors.blue),
  _optionSignIn(iconData: Icons.email, color:Colors.grey),
],),
          ],),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 30,),
/*first portion start here*/
            Container(
              width: double.infinity,
              height: 2,
              color: Colors.grey,
            ),
            /*first portion end here*/
            SizedBox(height: 30,),
            /*second portion start here*/
            Image.asset('assets/book_img.png',),
            /*second portion end here*/
            SizedBox(height: 30,),
            /*third portion start here*/
            Image.asset('assets/page.jpg',
              width: 800,
              height: 200,
            ),
            /*third portion end here*/
            SizedBox(height: 30,),
            /*four portion start here*/
            Image.asset('assets/page.jpg',
              width: 800,
              height: 200,
            ),
            /*four portion end here*/
          ],),
        ),
      ),
    );
  }
}
/*_optionsignin start here*/
Widget _optionSignIn({required IconData iconData, required Color color}) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 10),
    width: 40,
    height: 40,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color
    ),
    child: Center(
      child: Icon(iconData, color: whiteColor,),
    ),
  );
}
/*_optionsign end here*/