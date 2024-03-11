import 'package:flutter/material.dart';
import 'package:task/theme/style.dart';
class SelectFile extends StatelessWidget {
  const SelectFile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xffFEDFDC),
      appBar: AppBar(
        backgroundColor: redColor,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_back,color:whiteColor,),
        ),
        title: Text('Import  Files',style: TextStyle(
          color: Color(0xffFFFFFF,),
          fontWeight: FontWeight.w500,
          fontSize: 35,
        ),),
     actions: [
       PopupMenuButton(
           icon: const Icon(Icons.more_vert_outlined,color: whiteColor,),
           itemBuilder: (context) => [
             const PopupMenuItem(
               value: 1,
               child: Text('Select All'),
             ),
             const PopupMenuItem(
               value: 2,
               child: Text('Sort By'),
             ),
           ]),
     ],
      ),
    bottomNavigationBar: Container(
      height: 96,
      width: 450,
      padding:const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xffFED766),
      ),
      child: Row(children: [
        Image.asset('assets/pdfimg.png'),
    const    SizedBox(width: 10,),
      const  Text('Import Files',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: blackColor,
          ),
        ),

      ],),
    ),
body:Container(
  padding: EdgeInsets.all(8),
  child: photogridview(),),
    );
  }
}
/*photogridview start here*/
photogridview(){
  return GridView.builder(
    itemCount: 12,
      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
        mainAxisSpacing: 12,
        crossAxisSpacing: 10,
  ),
      itemBuilder:(context,index){
    return Image.asset('assets/Rectangle 11.png');

  });
}

/*photogridview end here*/
