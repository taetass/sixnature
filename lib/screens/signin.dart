import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sixnature_app/model/user_model.dart';
import 'package:sixnature_app/screens/main_screen.dart';
import 'package:sixnature_app/screens/register.dart';
import 'package:sixnature_app/utility/const.dart';
import 'package:sixnature_app/utility/myStyle.dart';
import 'package:sixnature_app/utility/normol_dialog.dart';

class SignIn extends StatefulWidget {
  SignIn({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String name, pass;

  bool _isHidden = true;

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/1234.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    MyStyle().mySizedbox(),
                    logo(),
                  ],
                ),
              ),
              Center(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 40.0,
                      ),
                      userForm(),
                      SizedBox(
                        height: 20.0,
                      ),
                      passwordForm('รหัสผ่าน'),
                      SizedBox(
                        height: 20.0,
                      ),
                      loginButton(),
                      MyStyle().mySizedbox(),
                      buildText(),
                      MyStyle().mySizebox(),
                    ],
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    regesterButton(),
                    MyStyle().mySizedbox(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildText() => TextButton(
        onPressed: () {
          normolDialog(context, 'ลองใหม่');
        },
        child: Text(
          'ลืมรหัสผ่าน?',
          style: TextStyle(
            decoration: TextDecoration.underline,
            fontSize: 22.0,
            color: Colors.lightBlue[900],
            fontWeight: FontWeight.bold,
          ),
        ),
      );

  Widget logo() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            width: 120.0,
            child: Image.asset('images/logo.png'),
          ),
          Column(
            children: [
              MyStyle().showTitle('SIXNATURE'),
              MyStyle().showTitle1('NETWORK CO.,LTD.'),
            ],
          ),
        ],
      );

  final border = OutlineInputBorder(
    borderSide: const BorderSide(
      color: Colors.white10,
      width: 0,
    ),
    borderRadius: const BorderRadius.all(
      const Radius.circular(4.0),
    ),
  );

  Widget userForm() => Container(
        width: 350,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: TextField(
          onChanged: (value) => name = value.trim(),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.account_box,
              color: MyStyle().darkColor,
            ),
            labelStyle: TextStyle(color: Colors.grey[600]),
            labelText: 'ชื่อผู้ใช้',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white10),
            ),
          ),
        ),
      );
  Widget passwordForm(String hintText) => Container(
        width: 350,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: TextField(
          onChanged: (value) => pass = value.trim(),
          obscureText: hintText == "รหัสผ่าน" ? _isHidden : false,
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: Icon(
              Icons.lock,
              color: MyStyle().darkColor,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white10),
            ),
            suffixIcon: hintText == "รหัสผ่าน"
                ? IconButton(
                    onPressed: _toggleVisibility,
                    icon: _isHidden
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                  )
                : null,
          ),
        ),
      );

  Widget loginButton() {
    return Container(
      width: 200.0,
      height: 50,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: MyStyle().darkColor,
        onPressed: () {
          if (name == null || name.isEmpty || pass == null || pass.isEmpty) {
            normolDialog(context, 'กรุณากรอกใหม่ค่ะ');
          } else {
            checkAuthen();
          }

          // print('you click');
          // MaterialPageRoute materialPageRoute = MaterialPageRoute(
          //   builder: (BuildContext context) => MainScreen(),
          // );
          // Navigator.of(context).push(materialPageRoute);
        },
        child: Text(
          'เข้าสู่ระบบ',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Future<Null> checkAuthen() async {
    String url =
        'http://localhost/sixnaTURE/getUserWhereUser.php?isAdd=true&name=$name';
    try {
      Response response = await Dio().get(url);
      print('res = $response');

      var result = json.decode(response.data);
      print('result = $result');

      for (var map in result) {
        UserModel userModel = UserModel.fromJson(map);
       

          MaterialPageRoute materialPageRoute = MaterialPageRoute(
            builder: (BuildContext context) => MainScreen(),
          );
          Navigator.of(context).push(materialPageRoute);
      
      }

    } catch (e) {}
  }

   Future<Null> routeTuService(Widget myWidget, UserModel userModel) async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(MyConstant().keyName, userModel.name);

    MaterialPageRoute route = MaterialPageRoute(builder: (context) => myWidget);
    Navigator.pushAndRemoveUntil(context, route, (route) => false);
  }


  Widget regesterButton() {
    return Container(
      width: 350.0,
      height: 50,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        color: MyStyle().darkColor,
        onPressed: () {
          print('you click');
          MaterialPageRoute materialPageRoute = MaterialPageRoute(
            builder: (BuildContext context) => Register(),
          );
          Navigator.of(context).push(materialPageRoute);
        },
        child: Text(
          'สร้างบัญชี',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
