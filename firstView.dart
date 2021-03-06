
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Juan Diego Durango'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(children: [
          Container(
              margin: new EdgeInsets.fromLTRB(0, 30, 0, 20),
              child: Text("Strawberry Pavlova",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors
                          .grey)) /*,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(width: 1.0, color: Color(0xFF7F7F7F)),
                left: BorderSide(width: 1.0, color: Color(0xFF7F7F7F)),
                right: BorderSide(width: 1.0, color: Color(0xFF7F7F7F)),
                bottom: BorderSide(width: 1.0, color: Color(0xFF7F7F7F)),
              ),
              color: Color(0xFFF),
            ),*/
              ),
          Container(
              padding: new EdgeInsets.fromLTRB(60, 0, 60, 0),
              margin: new EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Text(
                  "Pavlova is a nieringue-base dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.",
                  style: const TextStyle(color: Colors.grey, fontSize: 18),
                  textAlign: TextAlign.center)),
          Container(
            margin: new EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: new EdgeInsets.fromLTRB(0, 0, 50, 0),
                    child: Row(children: [
                      Icon(Icons.star_rate),
                      Icon(Icons.star_rate),
                      Icon(Icons.star_rate),
                      Icon(Icons.star_rate),
                      Icon(Icons.star_rate)
                    ])),
                Text("170 Reviews")
              ],
            ),
          ),
          Wrap(direction: Axis.horizontal, spacing: 30, children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.save, color: Colors.green),
                  Container(
                      margin: new EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: Text("PREP:")),
                  Text("25 min")
                ]),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(Icons.schedule, color: Colors.green),
              Container(
                  margin: new EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Text("COOK:")),
              Text("1 hf")
            ]),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(Icons.food_bank_outlined, color: Colors.green),
              Container(
                  margin: new EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Text("FEEDS:")),
              Text("4.5")
            ])
          ])
        ]));
  }
}
