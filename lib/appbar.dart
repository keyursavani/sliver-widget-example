import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// (1) Only appbar

// class sliverappbar extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return sliverappbarstate();
//   }
// }
// class sliverappbarstate extends State<sliverappbar>{
//   bool _pinned = true;
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//    return  Scaffold(
//        body: CustomScrollView(
//          slivers: <Widget> [
//            SliverAppBar(
//              pinned: _pinned,
//              expandedHeight: 150,
//              flexibleSpace: FlexibleSpaceBar(
//                centerTitle: true,
//                title: Text("Sliver AppBar"),
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
//            SliverList(
//                delegate: SliverChildBuilderDelegate(
//                    (BuildContext context , int index){
//                      return Container(
//                        color: index.isOdd ? Colors.white : Colors.black12,
//                        height: 100.0,
//                        child: Center(
//                          child: Text('$index', textScaleFactor: 5),
//                        ),
//                      );
//                    },
//                  childCount: 10
//                ),
//            ),
//          ],
//        ),
//    );
//   }
// }

// (2) AppBar with TabBar

class sliverappbar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return sliverappbarstate();
  }
}

class sliverappbarstate extends State<sliverappbar> {
  bool _pinned = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // appBar: AppBar(
      //   title:  Text("AppBar"),
      // ),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text("Sliver AppBar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                    ),
                    background: Image.network(
                      "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                      fit: BoxFit.cover,
                    ),
                ),
            ),

              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(icon: Icon(Icons.info), text: "Tab 1"),
                      Tab(icon: Icon(Icons.lightbulb_outline), text: "Tab 2"),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body:
          // SliverList(
          //     delegate: SliverChildBuilderDelegate(
          //             (BuildContext context , int index){
          //           return Container(
          //             color: index.isOdd ? Colors.white : Colors.black12,
          //             height: 100.0,
          //             child: Center(
          //               child: Text('$index', textScaleFactor: 5),
          //             ),
          //           );
          //         },
          //         childCount: 10
          //     ),
          //   ),
          // Center(
          //   child: Text("Sample Tex"),
          // ),
          TabBarView(
            children: <Widget>[
              Center(
                child: Text("Tab 1"),
              ),
              Center(
                child: Text("Tab 2"),
              ),
            ],
          ),
          ),
        ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

