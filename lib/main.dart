import 'package:flutter/material.dart';
import 'package:slivers/appbar.dart';
import 'package:slivers/grid.dart';
import 'package:slivers/list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                      return sliverappbar();
                    }),
                  );
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text("SliverAppBar",textAlign: TextAlign.center),
                  ),
                  decoration: BoxDecoration(
                      // color: Colors.deepOrangeAccent,
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(5.0))
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                      return sliverlist();
                    }),
                  );
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text("SliverList",textAlign: TextAlign.center),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(5.0))
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                      return slivergrid();
                    }),
                  );
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text("SliverGrid",textAlign: TextAlign.center),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(5.0))
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}