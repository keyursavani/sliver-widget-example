import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sliverlist extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return sliverliststate();
  }
}
class sliverliststate extends State<sliverlist>{
  bool _pinned = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return  Scaffold(
       body: CustomScrollView(
         slivers: <Widget> [
           SliverAppBar(
             pinned: _pinned,
             expandedHeight: 150,
             flexibleSpace: FlexibleSpaceBar(
               centerTitle: true,
               title: Text("Sliver List"),
               background: FlutterLogo(),
             ),
             // leading:IconButton(
             //   icon: Icon(Icons.menu),
             //   tooltip: 'Menu',
             //   onPressed: () {},
             // ),
             actions: <Widget>[
               IconButton(
                 icon: Icon(Icons.comment),
                 tooltip: 'Comment Icon',
                 onPressed: () {},
               ), //IconButton
               IconButton(
                 icon: Icon(Icons.settings),
                 tooltip: 'Setting Icon',
                 onPressed: () {},
               ), //IconButton
             ], //IconButto ,
           ),
           SliverToBoxAdapter(
             child:  SizedBox(
               height: 20,
               child: Center(
                 child: Text("Scroll To See The SliverAppBar Effect's"),
               ),
             ),
           ),
           SliverList(
               delegate: SliverChildBuilderDelegate(
                   (BuildContext context , int index){
                     return Container(
                       color: index.isOdd ? Colors.white : Colors.black12,
                       height: 100.0,
                       child: Center(
                         child: Text('$index', textScaleFactor: 5),
                       ),
                     );
                   },
                 childCount: 10
               ),
           ),
         ],
       ),
   );
  }
}