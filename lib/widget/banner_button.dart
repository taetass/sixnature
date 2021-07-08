import 'package:flutter/material.dart';
import 'package:sixnature_app/screens/gade.dart';

class BannerButton extends StatefulWidget {
  @override
  _BannerButtonState createState() => _BannerButtonState();
}

class _BannerButtonState extends State<BannerButton> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Container(
        //width: MediaQuery.of(context).size.width * 1,
        //height: MediaQuery.of(context).size.width * 0.35,
        //padding: const EdgeInsets.only(top: 6),
        color: Colors.blueGrey[50],
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: const EdgeInsets.all(6.0),
                  width: MediaQuery.of(context).size.width * 0.27,
                  height: MediaQuery.of(context).size.width * 0.14,
                  //color: Colors.white,
                  decoration: BoxDecoration(
                    border: new Border.all(
                        color: Colors.white, style: BorderStyle.solid),
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
                  child: Container(
                    color: Colors.white,
                    child: TextButton(
                      child: Image.asset(
                        'images/Asters.png',
                        fit: BoxFit.cover,
                      ),
                      onPressed: () { MaterialPageRoute route = MaterialPageRoute(
              builder: (context) => GadePage(),
            );
            Navigator.push(context, route);},
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(6.0),
                  width: MediaQuery.of(context).size.width * 0.27,
                  height: MediaQuery.of(context).size.width * 0.14,
                  decoration: BoxDecoration(
                    border: new Border.all(
                        color: Colors.white,
                        //width: 2.0,
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
                  child: Container(
                    color: Colors.white,
                    child: TextButton(
                      onPressed: () { MaterialPageRoute route = MaterialPageRoute(
              builder: (context) => GadePage(),
            );
            Navigator.push(context, route);},
                      child: Image.asset(
                        'images/Vitural.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(6.0),
                  width: MediaQuery.of(context).size.width * 0.27,
                  height: MediaQuery.of(context).size.width * 0.14,
                  decoration: BoxDecoration(
                    border: new Border.all(
                        color: Colors.white,
                        //width: 5.0,
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
                  child: Container(
                    color: Colors.white,
                    child: TextButton(
                      child: Image.asset(
                        'images/DeliDeli.png',
                        fit: BoxFit.cover,
                      ),
                      onPressed: () { MaterialPageRoute route = MaterialPageRoute(
              builder: (context) => GadePage(),
            );
            Navigator.push(context, route);},
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: const EdgeInsets.all(6.0),
                  width: MediaQuery.of(context).size.width * 0.27,
                  height: MediaQuery.of(context).size.width * 0.14,
                  decoration: BoxDecoration(
                    border: new Border.all(
                        color: Colors.white,
                        //width: 5.0,
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
                  child: Container(
                    color: Colors.white,
                    child: TextButton(
                      child: Image.asset(
                        'images/PartnerStore.png',
                        fit: BoxFit.cover,
                      ),
                      onPressed: () { MaterialPageRoute route = MaterialPageRoute(
              builder: (context) => GadePage(),
            );
            Navigator.push(context, route);},
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(6.0),
                  width: MediaQuery.of(context).size.width * 0.27,
                  height: MediaQuery.of(context).size.width * 0.14,
                  decoration: BoxDecoration(
                    border: new Border.all(
                        color: Colors.white,
                        //width: 5.0,
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
                  child: Container(
                    color: Colors.white,
                    child: TextButton(
                      child: Image.asset(
                        'images/Previlege.png',
                        fit: BoxFit.cover,
                      ),
                      onPressed: () { MaterialPageRoute route = MaterialPageRoute(
              builder: (context) => GadePage(),
            );
            Navigator.push(context, route);},
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(6.0),
                  width: MediaQuery.of(context).size.width * 0.27,
                  height: MediaQuery.of(context).size.width * 0.14,
                  decoration: BoxDecoration(
                    border: new Border.all(
                        color: Colors.white,
                        //width: 5.0,
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
                  child: Container(
                    color: Colors.white,
                    child: TextButton(
                      child: Image.asset(
                        'images/Donation.png',
                        fit: BoxFit.cover,
                      ),
                      onPressed: () { MaterialPageRoute route = MaterialPageRoute(
              builder: (context) => GadePage(),
            );
            Navigator.push(context, route);},
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
