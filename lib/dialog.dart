import 'package:flutter/material.dart';

class MyFloat extends StatelessWidget {
  var username = TextEditingController();
  var pass = TextEditingController();
  late List hobby;
  var sex = "男";
var dropValue = "北京" ;

  MyFloat(TextEditingController pass, TextEditingController username,
      String sex, List hobby, String dropValue) {
    this.username = username;
  this.dropValue = dropValue;
    this.hobby = hobby;
    this.pass = pass;
    this.sex = sex;
  }




  _showMyMaterialDialog(BuildContext context, String res) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("用户信息"),

            content: Text(res),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("确认"),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text("注册"),
    onPressed: () {
      var res = "账号：" + this.username.text + "\n密码：" + this.pass.text + "\n性别: " +
          this.sex + "\n爱好: ";

      for (var i = 0; i < this.hobby.length; i++) {
        if (hobby[i]["checked"] == true) {
          res += hobby[i]["title"];
        }

      }
      res+="\n地址: "+this.dropValue;
      _showMyMaterialDialog(context, res);
    }
    );

  }
  }
