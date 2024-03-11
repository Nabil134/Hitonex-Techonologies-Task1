import 'package:flutter/cupertino.dart';
import 'package:task/theme/style.dart';

class ButtonContainerWidget extends StatelessWidget {
  final String title;
  final double? fontSize;
  final double? width;
  final double? height;
  final VoidCallback? onTap;
  const ButtonContainerWidget({super.key,required this.title,this.fontSize,this.width=double.infinity,this.height=40,this.onTap,});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: redColor,
          borderRadius: BorderRadius.circular(10),
        ),
     child: Center(
       child: Text(title,
         style: TextStyle(
           color: whiteColor,
           fontWeight: FontWeight.w500,
           fontSize: fontSize,
         ),
       ),
     ),
      ),
    );
  }
}
