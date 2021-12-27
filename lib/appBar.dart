import 'package:flutter/material.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({@required this.titleText})
      : super(automaticallyImplyLeading: false,
          toolbarHeight: 81,
          backgroundColor: Color(0xff272424),
          
          elevation: 5,
          title: Text(
            titleText ?? "",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontFamily: "Noteworthy-Bold",
            ),
          ),
        );
  final String? titleText;
}
