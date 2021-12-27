import 'package:flutter/material.dart';

class MainPageListTile extends StatelessWidget {
  const MainPageListTile({Key? key, this.onPressed, this.title = "", this.index = 0})
      : super(key: key);
  final void Function()? onPressed;
  final String title;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.transparent, height: 81,width: MediaQuery.of(context).size.width,
      child: Center(
        child: ListTile(tileColor: Colors.transparent,onTap: onPressed,
          title: Text(
            (index + 1).toString() + (index == 0 ? ".  " : ". ") +  title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 23,
              fontFamily: "Noteworthy-Light",
            ),
          ),
        ),
      ),
    );
  }
}
