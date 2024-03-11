import 'package:flutter/material.dart';
import 'package:task/theme/style.dart';
import 'package:task/widgets/ButtonContainerWidget.dart';

import '../Premium/premium_screen.dart';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xffEEEE99),
              const Color(0xffFFDDE1
              ),
            ],
          ),
        ),
     child: Column(
mainAxisAlignment: MainAxisAlignment.center,
       children: [
         /*first portion start here*/
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [

           Text('Welcome',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25,
             color: redColor,),),

           SizedBox(height: 5,),

           Text('PDF READER',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25,
             color:blackColor,),),

         ],),
         /*first portion end here*/

         /*third portion start here*/
         Container(
           height: 214,
           width: 301,
           decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage('assets/img.png'),
             ),
           ),
         ),
         /*third portion end here*/
         /*forth portion start here*/
         Text('Permission Required',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25,
           color: blackColor,),),
         /*forth portion end here*/
         SizedBox(height: 10,),
         /*fifth portion start here*/
         RichText(
           textAlign: TextAlign.start,
           text: const TextSpan(
           text:"To read your files please allow\n",style: TextStyle(
           fontWeight: FontWeight.w300,
           fontSize: 17,
           color: blackColor,
         ),
           children: [
             TextSpan(text: "PDF Reader",
               style: TextStyle(
                  fontWeight: FontWeight.w300,
           fontSize: 17,
           color: redColor,
               ),
             ),
             TextSpan(text: " to all access all your files.",
               style: TextStyle(
                 fontWeight: FontWeight.w300,
                 fontSize: 17,
                 color: blackColor,
               ),
             ),
           ],
         ),),
         /*fifth portion end here*/
         SizedBox(height: 10,),
         /*six portion start here*/
         ButtonContainerWidget(title: "Allow",fontSize: 20,width: 177,height: 38,onTap: (){
           Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => const PremiumScreen()),
                   (route) => false);
         },),
         /*six portion end here*/
         SizedBox(height: 10,),
         /*last potion start here*/
         Text('Later',style: TextStyle(
           fontWeight: FontWeight.w500,
           fontSize: 20,
           color: blackColor,
         ),),
         /*last potion end here*/
       ],
     ),
      ),
    );
  }
}
