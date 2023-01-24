import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class slivergrid extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return slivergridstate();
//   }
// }
//
// class slivergridstate extends State<slivergrid> {
//   bool _pinned = true;
//   // final List _gridItems = List.generate(90, (i) => "Item $i");
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: <Widget>[
//         // SliverAppBar #1
//       SliverAppBar(
//              pinned: _pinned,
//              expandedHeight: 150,
//              elevation: 1,
//              backgroundColor: Colors.teal,
//              flexibleSpace: FlexibleSpaceBar(
//                centerTitle: true,
//                title: Text("Sliver Grid"),
//                background: FlutterLogo(),
//              ),
//              // leading:IconButton(
//              //   icon: Icon(Icons.menu),
//              //   tooltip: 'Menu',
//              //   onPressed: () {},
//              // ),
//              actions: <Widget>[
//                IconButton(
//                  icon: Icon(Icons.comment),
//                  tooltip: 'Comment Icon',
//                  onPressed: () {},
//                ), //IconButton
//                IconButton(
//                  icon: Icon(Icons.settings),
//                  tooltip: 'Setting Icon',
//                  onPressed: () {},
//                ), //IconButton
//              ], //IconButto ,
//            ),
//            SliverToBoxAdapter(
//              child:  SizedBox(
//                height: 20,
//                child: Center(
//                  child: Text("Scroll To See The SliverAppBar Effect's"),
//                ),
//              ),
//            ),
//           SliverGrid(
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               mainAxisSpacing: 10,
//               crossAxisSpacing: 10,
//               childAspectRatio: 1,
//             ),
//             delegate: SliverChildBuilderDelegate(
//                   (context, index) {
//                 return Card(
//                   // generate ambers with random shades
//                   // color: Colors.amber[Random().nextInt(9) * 100],
//                   // child: Container(
//                   //   alignment: Alignment.center,
//                   //   child: Text(_gridItems[index]),
//                   // ),
//                   color: index.isOdd ? Colors.white : Colors.black12,
//                        child: Center(
//                          child: Text('$index', textScaleFactor: 2 ),
//                        ),
//                 );
//               },
//               // childCount: _gridItems.length,
//               childCount: 30,
//             ),
//           ), const SliverPadding(padding: EdgeInsets.symmetric(vertical: 10)),
//   ],
//     ),
//
//     );
//   }
// }

class slivergrid extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return slivergridstate();
  }
}

class slivergridstate extends State<slivergrid> {
  bool _pinned = true;

  // final List _gridItems = List.generate(90, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          // SliverAppBar #1
          SliverAppBar(
            pinned: _pinned,
            expandedHeight: 150,
            // elevation: 1,
            backgroundColor: Colors.blueGrey,
            flexibleSpace: FlexibleSpaceBar(
              // centerTitle: true,
              title: Text(
                "Men's",
                style: TextStyle(fontSize: 30, color: Colors.black54),
              ),
              background: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-hwL7sSiRvPtepbOmxsYFnfoDarlReL9G8Q&usqp=CAU',
                  fit: BoxFit.cover),
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
              height: 10,
              child: Center(
                child: Text(""),
              ),
            ),
          ),
          SliverGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 0.7,
            children: [
              Container(
                // padding: const EdgeInsets.all(4),
                // color: Colors.grey,
                child: GridTile(
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSntKAFT9vdRUHpktbJPSuOBo3lDx_jGLAXXA&usqp=CAU',
                    fit: BoxFit.fitHeight,
                  ),
                  footer: Material(
                    color: Colors.transparent,
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(4.0)),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: GridTileBar(
                      backgroundColor: Colors.black45,
                      title: Text("Mens's Shoes"),
                      subtitle: Text("350 Rs"),
                    ),
                  ),
                ),
              ),
              Container(
                // padding: const EdgeInsets.all(4),
                // color: Colors.grey,
                child: GridTile(
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTwLrzCuFyWWykm5KTO0vj_qcDLmr_f2HLkA&usqp=CAU',
                    fit: BoxFit.fitHeight,
                  ),
                  footer: Material(
                    color: Colors.transparent,
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(4.0)),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: GridTileBar(
                      backgroundColor: Colors.black45,
                      title: Text("Hudi T-Shirt"),
                      subtitle: Text("500 Rs"),
                    ),
                  ),
                ),
              ),
              Container(
                // padding: const EdgeInsets.all(4),
                // color: Colors.grey,
                child: GridTile(
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-BQWri7cqR5szJMEaaKRlHC7msJqbYILFBQ&usqp=CAU',
                    fit: BoxFit.fitHeight,
                  ),
                  footer: Material(
                    color: Colors.transparent,
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(4.0)),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: GridTileBar(
                      backgroundColor: Colors.black45,
                      title: Text("Mens Jeans Pent"),
                      subtitle: Text("400  Rs"),
                    ),
                  ),
                ),
              ),
              Container(
                // padding: const EdgeInsets.all(4),
                // color: Colors.grey,
                child: GridTile(
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeY5IQhtx3jOk1MWzHtf2XuDaPsCcgN9VxlA&usqp=CAU',
                    fit: BoxFit.fitHeight,
                  ),
                  footer: Material(
                    color: Colors.transparent,
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(4.0)),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: GridTileBar(
                      backgroundColor: Colors.black45,
                      title: Text("Shirt"),
                      subtitle: Text("250 Rs"),
                    ),
                  ),
                ),
              ),
              Container(
                // padding: const EdgeInsets.all(4),
                // color: Colors.grey,
                child: GridTile(
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy-I5iXGp-_6Cb1jbUe7R4QplB1KHYG1UMhg&usqp=CAU',
                    fit: BoxFit.fitHeight,
                  ),
                  footer: Material(
                    color: Colors.transparent,
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(4.0)),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: GridTileBar(
                      backgroundColor: Colors.black45,
                      title: Text("Blazer"),
                      subtitle: Text("1150 Rs"),
                    ),
                  ),
                ),
              ),
              Container(
                // padding: const EdgeInsets.all(4),
                // color: Colors.grey,
                child: GridTile(
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0JisJBuwFEPFgOlpr-Y9813bSgLyBJ4wkjg&usqp=CAU',
                    fit: BoxFit.fitHeight,
                  ),
                  footer: Material(
                    color: Colors.transparent,
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(4.0)),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: GridTileBar(
                      backgroundColor: Colors.black45,
                      title: Text("Lather Wallet"),
                      subtitle: Text("400 Rs"),
                    ),
                  ),
                ),
              ),
              Container(
                // padding: const EdgeInsets.all(4),
                // color: Colors.grey,
                child: GridTile(
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMA6WbAgHKKaAruU9023FaZoSlzsNGM8FhkQ&usqp=CAU',
                    fit: BoxFit.fitHeight,
                  ),
                  footer: Material(
                    color: Colors.transparent,
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(4.0)),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: GridTileBar(
                      backgroundColor: Colors.black45,
                      title: Text("Lather Belt"),
                      subtitle: Text("200 Rs"),
                    ),
                  ),
                ),
              ),
              Container(
                // padding: const EdgeInsets.all(4),
                // color: Colors.grey,
                child: GridTile(
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwt9hdgxufiyJTgirlJ6fO3mLB00Bn9ir6TA&usqp=CAU',
                    fit: BoxFit.fitHeight,
                  ),
                  footer: Material(
                    color: Colors.transparent,
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(4.0)),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: GridTileBar(
                      backgroundColor: Colors.black45,
                      title: Text("Titen Gogles"),
                      subtitle: Text("500 Rs"),
                    ),
                  ),
                ),
              ),
              Container(
                // padding: const EdgeInsets.all(4),
                // color: Colors.grey,
                child: GridTile(
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4GStURP2ivwIACJOGmaMPXcUj9nyoYCUMvw&usqp=CAU',
                    fit: BoxFit.fitHeight,
                  ),
                  footer: Material(
                    color: Colors.transparent,
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(4.0)),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: GridTileBar(
                      backgroundColor: Colors.black45,
                      title: Text("Cpa"),
                      subtitle: Text("100 Rs"),
                    ),
                  ),
                ),
              ),
              Container(
                // padding: const EdgeInsets.all(4),
                // color: Colors.grey,
                child: GridTile(
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa4DPe-i8t8eANQndn5sk_Ts0fpmH1Bz9AXQ&usqp=CAU',
                    fit: BoxFit.fitHeight,
                  ),
                  footer: Material(
                    color: Colors.transparent,
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(4.0)),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: GridTileBar(
                      backgroundColor: Colors.black45,
                      title: Text("Smart Watch"),
                      subtitle: Text("2000 Rs"),
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SliverPadding(padding: EdgeInsets.symmetric(vertical: 10)),
        ],
      ),
    );
  }
}
