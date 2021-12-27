import 'package:clean_code/appBar.dart';
import 'package:clean_code/chapterScreen.dart';
import 'package:clean_code/listTile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clean Code',
      home: HomePage(title: 'Clean Code'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff272424),
        appBar: CustomAppBar(
          titleText: widget.title,
        ),
        body: ListView.builder(
            itemCount: Summary.chapters.length,
            itemBuilder: (context, index) {
              return MainPageListTile(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChapterScreen(
                        chapterIndex: index,
                      ),
                    ),
                  );
                },
                index: index,
                title: Summary.chapters[index],
              );
            }),
      ),
    );
  }
}

class Summary {
  static final List<String> chapters = [
    "Naming"
  ];
  static final Map<int, List<String>> content = {
    0: ["intention revealing names", "avoiding disinformation", "using pronouncable names", "using searchable names", "avoid encodings", "use noun/nounphrases for classes", "use verb/verbphrases for methods", "pick one word per concept", "do not use same word for two purposes", "use technical jargon"]
  };
}
