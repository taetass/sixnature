import 'package:flutter/material.dart';
import 'package:sixnature_app/utility/main_model.dart';
import 'package:sixnature_app/utility/main_view.dart';

class MenuButton extends StatelessWidget {
  final List<MainMenuModel> _menus = MainMenuViewModel().getMainMenu();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
        height: 200,
        width: 300,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 1,
            crossAxisSpacing: 1,
          ),
          itemBuilder: (context, index) {
            final MainMenuModel menu = _menus[index];
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(6.0),
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    border: new Border.all(
                        color: Colors.white,
                        width: 5.0,
                        style: BorderStyle.solid),
                    borderRadius: new BorderRadius.all(Radius.circular(6)),
                    color: Colors.white,
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.grey[300],
                          offset: new Offset(0.0, 3.0),
                          blurRadius: 5.0,
                          spreadRadius: 3.0)
                      //BoxShadow
                      //BoxShadow
                    ],
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset(
                      menu.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            );
          },
          itemCount: _menus.length,
        ),
      ),
    );
  }
}
