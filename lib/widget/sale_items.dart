import 'package:flutter/material.dart';

class SaleItems extends StatefulWidget {
  @override
  _SaleItemsState createState() => _SaleItemsState();
}

class _SaleItemsState extends State<SaleItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.width * 0.9,
      color: Colors.blueGrey[50],
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                //color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      //width: MediaQuery.of(context).size.width * 0.4,
                      //height: MediaQuery.of(context).size.width * 0.45,
                      child: Image.asset('images/sale1.png'),
                    ),
                    Text(
                      ' Aura Rich',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'ผลิตภัณฑ์บำรุงผิวหน้า อ่อน..',
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 14,
                          color: Colors.grey),
                    ),
                    Text(
                      '฿ 890',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.lightBlue[800],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '#102001   ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Colors.grey[350],
                          ),
                        ),
                        Text(
                          '    ราคาขายปรีก 1,155',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.45,
                height: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                //color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.width * 0.45,
                      child: Image.asset('images/sale3.png'),
                    ),
                    Text(
                      ' Aura Rich',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'ผลิตภัณฑ์บำรุงผิวกาย ผิวใส..',
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 14,
                          color: Colors.grey),
                    ),
                    Text(
                      '฿ 890',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.lightBlue[800],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '#102001   ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Colors.grey[350],
                          ),
                        ),
                        Text(
                          '    ราคาขายปรีก 1,155',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
