import 'package:flutter/material.dart';
import 'package:sixnature_app/screens/gade.dart';
import 'package:sixnature_app/screens/home_page.dart';
import 'package:sixnature_app/screens/signin.dart';

class Header extends StatefulWidget {
  final TrackingScrollController scrollController;

  const Header(this.scrollController);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  double _opacity;
  double _offset;

  final _opacityMax = 0.01;

  @override
  void initState() {
    _opacity = 0.0;
    _offset = 0.0;

    widget.scrollController.addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue[900],
      child: Container(
        padding: EdgeInsets.only(bottom: 10.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/header.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Container(
            padding: EdgeInsets.all(5),
            child: Row(
              children: [
                SizedBox(width: 12),
                showLogo(),
                SizedBox(width: 15),
                _buildInputSearch(),
                _buildIconButtom(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildIconButtom() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        IconButton(
          padding: EdgeInsets.only(left: 20),
          iconSize: 25,
          icon: Icon(
            Icons.chat_rounded,
            color: Colors.white,
          ),
          onPressed: () {
            MaterialPageRoute route = MaterialPageRoute(
              builder: (context) => GadePage(),
            );
            Navigator.push(context, route);
          },
        ),
        IconButton(
          iconSize: 25,
          icon: Icon(
            Icons.circle_notifications,
            color: Colors.white,
          ),
          onPressed: () {MaterialPageRoute route = MaterialPageRoute(
              builder: (context) => SignIn(),
            );
            Navigator.push(context, route);},
        ),
        IconButton(
          padding: EdgeInsets.only(right: 20),
          iconSize: 25,
          icon: Icon(
            Icons.dehaze,
            color: Colors.white,
          ),
          onPressed: () {MaterialPageRoute route = MaterialPageRoute(
              builder: (context) => SignIn(),
            );
            Navigator.push(context, route);},
        ),
      ],
    );
  }

  showLogo() {
    return Container(
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      width: 50.0,
      child: Image.asset('images/logo.png'),
    );
  }

  _buildInputSearch() {
    final sizeIcon = BoxConstraints(
      minWidth: 30,
      minHeight: 10,
    );

    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.white,
        width: 30,
      ),
      borderRadius: const BorderRadius.all(
        const Radius.circular(8.0),
      ),
    );

    return Expanded(
      child: Container(
        width: 200,
        height: 40,
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.white,
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(6),
            isDense: true,
            enabledBorder: border,
            focusedBorder: border,
            hintText: 'ค้นหา',
            hintStyle: TextStyle(
              color: Colors.blueGrey,
              fontSize: 18,
            ),

            //prefixIcon: Icon(Icons.search),
            //prefixIconConstraints: sizeIcon,
            suffixIcon: Container(
              width: 40,
              padding: EdgeInsets.only(right: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6),
                    bottomRight: Radius.circular(6)),
                color: Colors.lightBlue[900],
              ),
              child: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
            suffixIconConstraints: sizeIcon,
            filled: true,
            //fillColor: Colors.blue[900],
          ),
        ),
      ),
    );
  }

  void _onScroll() {
    final scrollOffset = widget.scrollController.offset;
    if (scrollOffset >= _offset && scrollOffset > 5) {
      _opacity = double.parse((_opacity + _opacityMax).toStringAsFixed(2));
      if (_opacity >= 1.0) {
        _opacity = 1.0;
      }
    } else if (scrollOffset < 100) {
      _opacity = double.parse((_opacity - _opacityMax).toStringAsFixed(2));
      if (_opacity <= 1.0) {
        _opacity = 0.0;
      }
    }
    setState(() {
      _opacity = 0.0;
      _offset = 0.0;
    });
  }
}
