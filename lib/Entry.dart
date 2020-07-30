import 'package:flutter/material.dart';
import 'enchtab.dart';
// import 'tabbar.dart';

class Entry extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EntryState();
  }
}

class EntryState extends State<Entry> with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _selectedIndex = 0;
  var titles = ['主页', '公告', '管理', '我的'];
  var icons = [
    Icons.home,
    Icons.play_arrow,
    Icons.child_friendly,
    Icons.fiber_new,
    Icons.mic_none
  ];
  @override
  void initState() {
    super.initState();
    _tabController =
        new TabController(vsync: this, initialIndex: 0, length: titles.length);
    _tabController.addListener(() {
      setState(() => _selectedIndex = _tabController.index);
      print("liucheng-> ${_tabController.indexIsChanging}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 46,
        child: Column(
          children: <Widget>[
            Divider(
              height: 2,
            ),
            new TabBar(
              isScrollable: false,
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.red,
              labelPadding: EdgeInsets.all(0),
              unselectedLabelColor: Colors.black,
              tabs: <Widget>[
                EachTab(
                    width: 70,
                    badgeNo: '1',
                    badgeColor: Colors.red,
                    height: 40,
                    padding: EdgeInsets.all(0),
                    icon: _selectedIndex == 0
                        ? Image.asset(
                            'images/主页选中.png',
                            // color: Colors.blue,
                            width: 20,
                            height: 20,
                          )
                        : Image.asset(
                            'images/主页未选.png',
                              // color: Colors.blue,
                            width: 20,
                            height: 20,
                          ),
                    text: titles[0],
                    iconPadding: EdgeInsets.fromLTRB(0, 0, 0, 2),
                    textStyle: TextStyle(fontSize: 10)),
                EachTab(
                    width: 70,
                    badgeNo: '2',
                    badgeColor: Colors.red,
                    height: 40,
                    padding: EdgeInsets.all(0),
                    icon: _selectedIndex == 1
                        ? Image.asset(
                            'images/公告选中.png',
                            width: 20,
                            height: 20,
                          )
                        : Image.asset(
                            'images/公告未选.png',
                            width: 20,
                            height: 20,
                          ),
                    text: titles[1],
                    iconPadding: EdgeInsets.fromLTRB(0, 0, 0, 2),
                    textStyle: TextStyle(fontSize: 10)),
                    EachTab(
                    width: 70,
                    badgeNo: '3',
                    badgeColor: Colors.red,
                    height: 40,
                    padding: EdgeInsets.all(0),
                    icon: _selectedIndex == 2
                        ? Image.asset(
                            'images/管理选中.png',
                            width: 20,
                            height: 20,
                          )
                        : Image.asset(
                            'images/管理未选.png',
                            width: 20,
                            height: 20,
                          ),
                    text: titles[2],
                    iconPadding: EdgeInsets.fromLTRB(0, 0, 0, 2),
                    textStyle: TextStyle(fontSize: 10)),
                    EachTab(
                    width: 70,
                    badgeNo: '4',
                    badgeColor: Colors.red,
                    height: 40,
                    padding: EdgeInsets.all(0),
                    icon: _selectedIndex == 3
                        ? Image.asset(
                            'images/我的选中.png',
                            width: 20,
                            height: 20,
                          )
                        : Image.asset(
                            'images/我的未选.png',
                            width: 20,
                            height: 20,
                          ),
                    text: titles[3],
                    iconPadding: EdgeInsets.fromLTRB(0, 0, 0, 2),
                    textStyle: TextStyle(fontSize: 10)),
              ],
            ),
          ],
        ),
      ),

      body: TabBarView(
        physics: NeverScrollableScrollPhysics(), //设置滑动的效果，这个禁用滑动
        controller: _tabController,
        children: <Widget>[
          // Home(),
          Text(titles[0]),
          Text(titles[1]),
          Text(titles[2]),
          Text(titles[3]),
        ],
      ),
    );
  }
}

