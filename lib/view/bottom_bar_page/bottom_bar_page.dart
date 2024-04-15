// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:vehicle_rental_app/utils/color_constants/color_constants.dart';
import 'package:vehicle_rental_app/view/favs_page/favs_page.dart';
import 'package:vehicle_rental_app/view/home_page/home_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List page = [HomePage(), FavPage()];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: ColorConstants.mainbackgroundgreen,
          currentIndex: selectedindex,
          selectedItemColor: ColorConstants.lightgreen,
          unselectedItemColor: ColorConstants.mainWhite,
          onTap: (value) {
            selectedindex = value;

            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border_outlined,
                ),
                label: 'favs'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat,
                ),
                label: 'chats'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'Account')
          ]),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(
      //         context,
      //         MaterialPageRoute(builder: (context) => SellPage()
      //             // AddbuttonPage(),
      //             ));
      //   },
      //   child: Icon(
      //     Icons.add,
      //     color: Colorconstants.mycustomgreen,
      //   ),
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(20),
      //   ),
      //   mini: true,
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // body: Center(
      //   child: page[selectedindex],
      // ),
      body: Center(
        child: page[selectedindex],
      ),
    );
  }
}
