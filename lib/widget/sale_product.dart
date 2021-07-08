import 'package:flutter/material.dart';
import 'package:sixnature_app/utility/main_model.dart';
import 'package:sixnature_app/utility/main_view.dart';

class SaleProduct extends StatelessWidget {
  final List<MainMenuModel> _menus = MainMenuViewModel().getMainMenu();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            color: Colors.grey[300],
            height: MediaQuery.of(context).size.width * 0.7,
            //width: MediaQuery.of(context).size.width * ,
            child: GridView.builder(
              //scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.7,
              crossAxisCount: 2,
              mainAxisSpacing: 6,
              crossAxisSpacing: 4,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    border: new Border.all(
                        color: Colors.white,
                        //width: 5.0,
                        style: BorderStyle.solid),
                    borderRadius: new BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.white,
                        //padding: EdgeInsets.all(2),
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.width * 0.3,
                        child: Image.asset('images/sale3.png'),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              title: Text(
                                'Aura Rich',
                                maxLines: 1,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                'ผลิตภัณฑ์บำรุงผิวหน้า อ่อน..',
                                maxLines: 1,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w100,
                                    color: Colors.grey),
                              ),
                            ),
                            Container(padding: EdgeInsets.only(right:15),
                              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '฿ 890  ',
                                    maxLines: 1,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.lightBlue[800],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  '  #102001 ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.grey[350],
                                  ),
                                ),
                                Text(
                                  '     ราคาขายปรีก 1,155',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.blue),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: 4,
            ),
          ),
        ],
      ),
    );
  }
}
