import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../theme/style.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text('Favorites',style: TextStyle(
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
    body:Container(
      decoration: BoxDecoration(
        color: Color(0xffFEDFDC),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
    child: Column(
      children: [
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 2,
              itemBuilder: (context,index){
            return CustomFavoriteList();
          }),
        ),
      ],
    ),
    ),
    );
  }
}
/*CustomFavorite start here*/
class CustomFavoriteList extends StatelessWidget {
  const CustomFavoriteList({super.key});

  @override
  Widget build(BuildContext context) {
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
            Text('Document 1234',style: TextStyle(
              fontSize: 20,
              color: blackColor,
              fontWeight: FontWeight.w400,
            ),),
            ),
            RatingBar.builder(
                initialRating: 1,
                minRating: 0,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 1,
                itemSize: 18,
                itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                itemBuilder: (context,index)=> const Icon(Icons.star,
                  color: Color(0xff1400FF),),
                onRatingUpdate: (rating){
                  print(rating);
                }
            ),
          ],
        ),
        subtitle: Text('21-June-2023 11:00 AM 512 KB',style: TextStyle(
          fontSize: 16,
          color: blackColor,
          fontWeight:FontWeight.w200,
        ),),
        trailing: GestureDetector(
          onTap: () {},

          child: Icon(Icons.more_vert),
        ),


      ),
    );
  }
/*CustomFavorite end here*/
}
