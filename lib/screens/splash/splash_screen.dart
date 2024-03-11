import 'package:flutter/material.dart';
import 'package:task/theme/style.dart';
class SplashScreen extends StatefulWidget {
  final Widget child;
  const SplashScreen({super.key,required this.child});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
void initState() {
  Future.delayed(const Duration(milliseconds: 3000)).then((value){
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => widget.child), (route) => false);
  });
  super.initState();
}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
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
        Container(
          height: 112,
          width: 112,
          decoration: BoxDecoration(
            color: redColor,
            borderRadius: BorderRadius.circular(20),
          ),
        child: Column(children: [
          Text('PDF',style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.w900,
            color: whiteColor,
          ),),
           Text('Reader',style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: whiteColor,
          ),),
        ],),
        ),
          /*first portion end here*/
          SizedBox(height: 10,),
          /*second portion start here*/
          Text('Reading PDFs has never been easer',style: TextStyle(
            color: blackColor,
            fontWeight: FontWeight.w400,
            fontSize: 15,
          ),),
          /*second portion end here*/
      ],),
      ),
    );
  }
}
