import 'dart:core';

import 'package:first/dialog.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class MyList{
  late bool checked;
  late String title;
}
class _MyAppState extends State<MyApp> {

  var username = TextEditingController();
  var pass = TextEditingController();
  var sex = "男";
  List hobby = [
    {"checked": false, "title": "读书"},
    {"checked": false, "title": "打球"},
    {"checked": false, "title": "听音乐"},
  ];

  List<Widget> _getHobby() {
    List<Widget> tempList = [];
    for (var i = 0; i < this.hobby.length; i++) {
      tempList.add(Checkbox(
        value: this.hobby[i]["checked"],
        onChanged: (value) {
          setState(() {
            this.hobby[i]["checked"] = value;
          });
        },
      ));
      tempList.add(Text(this.hobby[i]["title"]));
    }
    return tempList;
  }

  void _sexChanged(v) {
    setState(() {
      this.sex = v;
    });
  }
  var _dropValue = '北京';

  _buildButton() {
    return DropdownButton(
      menuMaxHeight: 300.0,

      value: _dropValue,
      items: const [
        DropdownMenuItem(child: Text('北京'),value: '北京'),
        DropdownMenuItem(child: Text('上海'),value: '上海'),
        DropdownMenuItem(child: Text('武汉'),value: '武汉'),
        DropdownMenuItem(child: Text('南京'),value: '南京'),
        DropdownMenuItem(child: Text('南昌'),value: '南昌'),
      ],
      onChanged: (value ){
        setState(() {
          _dropValue = value  as String;
        });
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('用户注册'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Text("手机号: "),
                  Expanded(
                    child: TextField(
                      cursorWidth: 100.0,
                      decoration: InputDecoration(hintText: "请输入手机号"),
                      controller: username,
                      onChanged: (value) {
                        setState(() {
                          username.text = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text("密    码: "),
                  Expanded(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(hintText: "请输入密码"),
                      controller: pass,
                      onChanged: (value) {
                        setState(() {
                          pass.text = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Radio(
                    value: "男",
                    groupValue: this.sex,
                    onChanged: this._sexChanged,
                  ),
                  Text("男"),
                  Radio(
                      value: "女",
                      groupValue: this.sex,
                      onChanged: this._sexChanged),
                  Text("女"),
                ],
              ),
              Row(children: this._getHobby()),
              SizedBox(
                height: 20,
              ),
              _buildButton(),
              Container(
                width: double.infinity,
                child: MyFloat(this.pass,this.username,sex,this.hobby,_dropValue),
                ),


            ],
          ),
        ),
      ),
    );
  }
}
