import 'package:clean_code/appBar.dart';
import 'package:clean_code/chapterListTile.dart';
import 'package:clean_code/main.dart';
import 'package:flutter/material.dart';

class ChapterScreen extends StatefulWidget {
  const ChapterScreen({Key? key, this.chapterIndex = 0})
      : super(key: key);
  final int chapterIndex;

  @override
  _ChapterScreenState createState() => _ChapterScreenState();
}

class _ChapterScreenState extends State<ChapterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xff272424),
      appBar: CustomAppBar(titleText: Summary.chapters[widget.chapterIndex]),
      body: ListView.builder(itemCount: Summary.content[widget.chapterIndex]!.length,
        itemBuilder: (context, tileIndex) {
          return ChapterListTile(
            title: (tileIndex + 1).toString() + (tileIndex == 0 ? ".  " : ". ") + 
                Summary.content[widget.chapterIndex]![tileIndex],
          );
        },
      ),
    );
  }
}
