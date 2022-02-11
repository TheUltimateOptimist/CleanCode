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
    "Naming",
    "Functions",
    "Comments",
    "Formatting",
    "Objects/Datastructures",
    "Error Handling",
    "Boundaries",
    "Unit Tests",
    "Classes",

  ];
  static final Map<int, List<String>> content = {
    0: ["intention revealing names", "avoiding disinformation", "using pronouncable names", "using searchable names", "avoid encodings", "use noun/nounphrases for classes", "use verb/verbphrases for methods", "pick one word per concept", "do not use same word for two purposes", "use technical jargon"],
    1: ["very short(20 lines at max)", "identation level no greater than 1 or 2", "should do only one thing", "only one level of abstraction", "switch statements are ok if they appear only once", "descriptive name", "as little arguments as possible", "do not pass booleans as arguments", "no side effects",  "avoid output arguments", "exceptions are better than returning error codes", "error handling is one thing!", "dont repeat yourself"],
    2: ["comments do not make up for bad code", "rather explain yourself through code", "comment to explain intent", "can be used for clarification", "as warning of consequences", "TODO comments are reasonable", "for amplification", "comments should not force you to look at other code parts", "avoid redundant comments", "comments should only describe code next to it", "should be self-explaining"],
    3: ["one way should be consistenly applied","seperate code parts by blank lines","code belonging to each other should be dense","calling functions above called functions","surround assignment operators, +, - with whitespace","use identation for blocks"],
    4: ["hide implementation details","","","","","","","","","","","",""],
    5: ["use exceptions instead of return Codes","write try catch block first","use unchecked exceptions","provide context with exceptions","wrap third party apis","let a class handle special cases(Special Case Pattern)","do not return null","do not pass null","seperate error handling from main logic",],
    6: ["write 'learning' tests for third party apis","abstract third party code away",],
    7: ["test code is as important as production code","keep tests clean","tests should be readable","create own domain specific testing language","minimize number of asserts per test","tests should be fast","tests be independent from each other","repeatable","self-validating","should be written just before production code",],
    8: ["use encapsulation","classes should be small","single responsibility principle","number of instance variables should be small","strive for high cohesion","open closed principle","open for extension closed for modification","dependency inversion principle","classes should depend on abstractions",],
  };
}
