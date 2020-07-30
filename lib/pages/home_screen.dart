import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('home'),
      ),
      body: Center(
          child: Text(
            'Hello widget! hello world! hello yantai! hello mieyi! hello xiaoqi! hello  qiqi! ',
            textAlign:TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            // 超出部分显示
            style: TextStyle(
              fontSize:25.0,
              color:Color.fromARGB(255, 255, 125, 125),
              //字体颜色
            ),
            ),
        ),
    );
  }
}