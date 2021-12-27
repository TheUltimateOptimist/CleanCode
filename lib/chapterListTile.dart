import 'package:flutter/material.dart';

class ChapterListTile extends StatefulWidget {
  const ChapterListTile({Key? key, this.title = ""}) : super(key: key);
  final String title;

  @override
  _ChapterListTileState createState() => _ChapterListTileState();
}

class _ChapterListTileState extends State<ChapterListTile> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 81,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Text(
              widget.title, overflow: TextOverflow.clip,
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontFamily: "Noteworthy-Light",
              ),
            ),
          ),
          // Transform.scale(scale: 0.8,
          //   child: Checkbox(fillColor: MaterialStateColor.resolveWith((states){
          //     if(states.contains(MaterialState.selected)){
          //       return Colors.green;
          //     }
          //     return Colors.white;
          //   }),
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.all(
          //         Radius.circular(
          //           5,
          //         ),
          //       ),
          //     ),
          //     value: isChecked,
          //     onChanged: (newValue) {
          //       setState(
          //         () {
          //           isChecked = isChecked ? false : true;
          //         },
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
