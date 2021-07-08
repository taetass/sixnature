import 'package:flutter/material.dart';
import 'package:sixnature_app/screens/gade.dart';
import 'package:sixnature_app/screens/hade.dart';
import 'package:sixnature_app/screens/home_page.dart';
import 'package:sixnature_app/screens/main_user.dart';
import 'package:sixnature_app/screens/register.dart';
import 'package:sixnature_app/utility/myStyle.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> showWidgets = [
    MyHomePage(),
    TadePage(),
    Register(),
    GadePage(),
    MainUser()
  ];

  int index = 0;

  final iconColor = new Color(0xFFCCCCCC);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: showWidgets[index],
      bottomNavigationBar: myButtonNavBar(),
    );
  }

  BottomNavigationBarItem homeNav() {
    return BottomNavigationBarItem(
      icon: new Icon(
        Icons.home,
        color: iconColor,
      ),
      title: new Text(
        "Home",
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }

  BottomNavigationBarItem gridNav() {
    return BottomNavigationBarItem(
      icon: new Icon(
        Icons.grid_view,
        color: iconColor,
      ),
      title: new Text(
        "สินค้า",
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }

  BottomNavigationBarItem shopNav() {
    return BottomNavigationBarItem(
      icon: new Icon(
        Icons.shopping_cart,
        color: iconColor,
      ),
      title: new Text(
        "รถเข็น",
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }

  BottomNavigationBarItem cardNav() {
    return BottomNavigationBarItem(
      icon: new Icon(
        Icons.card_giftcard,
        color: iconColor,
      ),
      title: new Text(
        "สิทธิพิเศษ",
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }

  BottomNavigationBarItem accountNav() {
    return BottomNavigationBarItem(
      icon: new Icon(
        Icons.account_box,
        color: iconColor,
      ),
      title: new Text(
        "บัญชี",
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }

  Widget myButtonNavBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: MyStyle().primaryColor,
      onTap: (int i) {
        setState(() {
          index = i;
        });
      },
      currentIndex: index,
      iconSize: 25.0,
      items: <BottomNavigationBarItem>[
        homeNav(),
        gridNav(),
        shopNav(),
        cardNav(),
        accountNav(),
      ],
    );
  }
}
