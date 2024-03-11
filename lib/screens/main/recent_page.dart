import 'package:flutter/material.dart';
import 'package:task/screens/main/document_list.dart';
import 'package:task/screens/main/select_file.dart';
import 'package:task/theme/style.dart';
class RecentPage extends StatelessWidget {
  const RecentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      appBar: AppBar(
        backgroundColor: redColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8,top: 2),
          child: Text('PDF Reader',style: TextStyle(
            color: Color(0xffFFFFFF,),
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),),
        ),
        title: Text('Recent',style: TextStyle(
          color: Color(0xffFFFFFF,),
          fontWeight: FontWeight.w500,
          fontSize: 35,
        ),),
        centerTitle: true,
        actions: [
          Image.asset('assets/crownicon.png'),
          SizedBox(width: 10,),
          Icon(Icons.search,
            color: Color(0xffFFFFFF),
            size: 25,
          ),
          SizedBox(width: 10,),
        ],
      ),
      body: Container(
      decoration: BoxDecoration(
        color: Color(0xffFEDFDC),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          /*first portion start here*/
          Container(
            child: ListTile(
              leading:  Container(
                height: 140,
                width: 76,
                decoration: BoxDecoration(
                  color: redColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text('PDF',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: whiteColor,
                  ),),
                ),
              ),
              title: Row(
                children: [
                  Expanded(child:
                  Text('Document 1234',style: TextStyle(
                    fontSize: 20,
                    color: blackColor,
                    fontWeight: FontWeight.w400,
                  ),),
                  ),
                  Icon(Icons.star),
                ],
              ),
              subtitle: Text('21-June-2023 11:00 AM 512 KB',style: TextStyle(
                fontSize: 16,
                color: blackColor,
                fontWeight:FontWeight.w200,
              ),),
              trailing: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return BottomSheetModel();
                    },
                  );
                },
                child: Icon(Icons.more_vert),
              ),


            ),
          ),
          /*first portion end here*/
          /*second portion start here*/
          Expanded(child: DocumentList(),),
          /*second portion end here*/
        ],
      ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
        child: Icon(Icons.add,size: 50,),
        backgroundColor: redColor,
        foregroundColor: whiteColor,
        shape: CircleBorder(),
    ),
      );
  }
}
/*bottomsheetModel start here*/
class BottomSheetModel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SelectFile()),
        );
      },
      child: Container(
        height: 96,
        width: 450,
        padding:const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Color(0xffFED766),
        ),
        child: Row(children: [
          Image.asset('assets/pdfimg.png'),
          SizedBox(width: 10,),
          Text('Import Files',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: blackColor,
            ),
          ),

        ],),
      ),
    );
  }
}
/*bottomsheetModel end here*/
