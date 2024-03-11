import 'package:flutter/material.dart';
import 'package:task/screens/main/document_page.dart';
import 'package:task/screens/main/favorite_page.dart';
import 'package:task/screens/main/recent_page.dart';
import 'package:task/theme/style.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> _pages=[
    DocumentPage(),
    RecentPage(),
    FavoritePage(),
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: redColor,
    bottomNavigationBar: SizedBox(
      height:MediaQuery.of(context).size.height*0.14,
      child: BottomAppBar(
        color: Color(0xffFED766),
        child: Container(
          padding: const EdgeInsets.only(left: 25, right: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100),bottomRight: Radius.circular(100),
            ),
          ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
IconBottomBar(icon: Icons.file_copy, onTap: (){
  setState(() {
      _selectedIndex=0;
  });
}, text: "Documents", selected: _selectedIndex==0),
          IconBottomBar(icon: Icons.lock_clock, onTap: (){
            setState(() {
              _selectedIndex=1;
            });
          }, text: "Recent", selected: _selectedIndex==1),
          IconBottomBar(icon: Icons.favorite, onTap: (){
            setState(() {
              _selectedIndex=2;
            });
          }, text: "Favorites", selected: _selectedIndex==2),
        ],),
        ),
      ),
    ),
body: _pages.elementAt(_selectedIndex),
    );
  }
}
/*IconBottomBar start here*/
class IconBottomBar extends StatelessWidget {
  const IconBottomBar({super.key,required this.icon,required this.onTap,required this.text,required this.selected});
  final IconData icon;
  final Function() onTap;
  final String text;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 42,
        width: 42,
        decoration: BoxDecoration(
          color: redColor,
          borderRadius: BorderRadius.circular(5),
        ),
     child: IconButton(
       onPressed:onTap,
       icon: Icon(
         icon,
         color:selected?Color(0xff1400FF):whiteColor,
       ),
     ),
      ),
Text(text,style: TextStyle(
  color: Colors.white,
),),
    ],);
  }
}
/*IconBottomBar end here*/

