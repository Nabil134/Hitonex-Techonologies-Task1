import 'package:flutter/material.dart';
import 'package:task/screens/Premium/Widget/ReuseableContainer.dart';
import 'package:task/theme/style.dart';
import 'package:task/widgets/ButtonContainerWidget.dart';

import '../main/main_screen.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFEDFDC),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /*first portion start here*/
              Container(
                height: he.height * 0.3,
                width: he.width,
                decoration:const BoxDecoration(
                  color: Color(0xff00000040),
                  image: DecorationImage(
                    image: AssetImage('assets/premium_screen_img.png'),
                    fit: BoxFit.cover,

                  ),
                ),
              ),
              /*first portion end here*/
              const SizedBox(height: 10,),
              /*second portion start here*/
             const  Text('Get PDF Reader Premium',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: blackColor,
              ),),
              /*second portion end here*/
              SizedBox(height: 10,),
              /*third portion start here*/
              _settingsItems(title: "No Ads",image: 'noads_img.png'),
              /*third portion end here*/
              SizedBox(height: 5,),
              /*forth portion start here*/
              _settingsItems(title: "All Documents Reader",image: 'outline color.png'),
              /*forth portion end here*/
              SizedBox(height: 5,),
              /*forth portion start here*/
              _settingsItems(title: "Convert Image to PDF",image: 'pdfimg.png'),
              /*forth portion end here*/
              SizedBox(height: 5,),
          /*fifth portion start here*/
              ReuseableContainer(txt1: 'Monthly',txt2: 'Rs: 2000.00/1 month',icon: Icons.check_circle_outline_outlined,),
              /*fifth portion end here*/
            SizedBox(height: 5,),
              /*six portion start here*/
              ReuseableContainer(txt1: 'Yearly',txt2: 'Rs: 8500.00/1 year',icon: Icons.control_point,),
              /*six portion end here*/
              SizedBox(height: 10,),
              /*seven portion start here*/
              ButtonContainerWidget(title: 'Start 3 - Day FREE Trial',height: 52,width: 233,
                onTap: (){
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => const MainScreen()),
                          (route) => false);
                },
              ),
              /*seven portion end here*/
              SizedBox(height: 5,),
           /*last portion start here*/
              Text('Subscriptions are charged  monthlyand yearly basis, you can cancel at any time',
                style: TextStyle(color: blackColor,
                  fontSize: 8,fontWeight: FontWeight.w300),),
              /*last portion end here*/

            ],
          ),
        ),
      ),
    );
  }
  /*_settingsItems start here*/
  _settingsItems({String? title,String? image}){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Image.asset('assets/$image'),
        Text('$title',style: TextStyle(color: blackColor,fontWeight: FontWeight.w300,fontSize: 15),),
      ],),
    );

  }
/*_settingsItems end here*/
}