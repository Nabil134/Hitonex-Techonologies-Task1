import 'package:flutter/material.dart';
import 'package:task/screens/main/share_file.dart';
import 'package:task/theme/style.dart';

class OpenFile extends StatelessWidget {
  const OpenFile({super.key});

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
   bottomNavigationBar: GestureDetector(
     onTap: (){
       Navigator.push(
         context,
         MaterialPageRoute(builder: (context) => ShareFile()),
       );
     },
     child: Container(
       height: 100,
       width: 100,
       color: Colors.grey,
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
         Icon(Icons.book_outlined,size: 70,color: whiteColor,),
         Icon(Icons.book_outlined,size: 70,color: whiteColor,),
         Icon(Icons.book_outlined,size: 70,color: whiteColor,),
         Icon(Icons.book_outlined,size: 70,color: whiteColor,),

       ],),
     ),
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
