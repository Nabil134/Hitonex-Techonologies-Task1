import 'package:flutter/material.dart';

import '../../Model/DocumentModel.dart';
import '../../theme/style.dart';
class DocumentList extends StatelessWidget {
  const DocumentList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: document.length,
        itemBuilder: (context,index){
      return  Container(
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
              Text(document[index]['title'],style: TextStyle(
                fontSize: 20,
                color: blackColor,
                fontWeight: FontWeight.w400,
              ),),
              ),
              SizedBox(width: 20,),
              Icon(Icons.star),
            ],
          ),
          subtitle: Text(document[index]['subtitle'],style: TextStyle(
            fontSize: 16,
            color: blackColor,
            fontWeight:FontWeight.w200,
          ),),
          trailing: IconButton(onPressed: (){},
            icon: Icon(Icons.more_vert),
          ),
        ),
      );
    });
  }
}
