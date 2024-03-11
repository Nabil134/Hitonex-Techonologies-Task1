import 'package:flutter/material.dart';
import 'package:task/screens/main/document_list.dart';
import 'package:task/screens/main/reader_screen.dart';
import 'package:task/theme/style.dart';

import '../../Model/document_model.dart';
class DocumentPage extends StatefulWidget {


  @override
  State<DocumentPage> createState() => _DocumentPageState();
}

class _DocumentPageState extends State<DocumentPage> {
  @override


  Widget build(BuildContext context) {
    return
    Scaffold(
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
          title: Text('All Files',style: TextStyle(
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
     child: Column(children: [
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
       Column(children: Document.doc_list.map((doc) => ListTile(
         onTap: (){
           Navigator.push(
               context,
               MaterialPageRoute(builder: (context)=>ReaderScreen(doc)));
         },
         title: Row(
           children: [
             Expanded(child:
             Text(doc.doc_title!,style: TextStyle(
               fontSize: 20,
               color: blackColor,
               fontWeight: FontWeight.w400,
             ),),
             ),
             Icon(Icons.star),
           ],
         ),
         subtitle: Text('${doc.page_num!}',style: TextStyle(
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
       )).toList(),
       ),
       /*second portion end here*/
     ],),
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
          child: Icon(Icons.add,size: 50,),
          backgroundColor: redColor,
          foregroundColor: whiteColor,
          onPressed: () {
          }),
    );
  }
}
/*bottomsheetModel start here*/
class BottomSheetModel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      width: 439,
      padding:const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: whiteColor,
    ),
   child: Column(children: [

     ListTile(
       onTap: () {
       },
       leading: Icon(Icons.picture_as_pdf, color: redColor),
       title: Text(
         'Document 1234.pdf',
         style: TextStyle(
           fontWeight: FontWeight.w400,
           fontSize: 16,
           color: blackColor,
         ),
       ),
     ),

     ListTile(
       leading: Icon(Icons.file_download,color: redColor,),
       title: Text('Open File',style: TextStyle(
         fontWeight: FontWeight.w400,
         fontSize: 16,
         color: blackColor,
       ),),
     ),
     ListTile(
       leading: Icon(Icons.share,color: redColor,),
       title: Text('Share File',style: TextStyle(
         fontWeight: FontWeight.w400,
         fontSize: 16,
         color: blackColor,
       ),),
     ),
     ListTile(
       leading: Icon(Icons.copy,color: redColor,),
       title: Text('Copy',style: TextStyle(
         fontWeight: FontWeight.w400,
         fontSize: 16,
         color: blackColor,
       ),),
     ),
     ListTile(
       leading: Icon(Icons.delete,color: redColor,),
       title: Text('Delete',style: TextStyle(
         fontWeight: FontWeight.w400,
         fontSize: 16,
         color: blackColor,
       ),),
     ),
   ],),
    );
  }
}
/*bottomsheetModel end here*/
