import 'package:flutter/material.dart';

Future<void> normolDialog(BuildContext context, String massage) async {
  showDialog(
    context: context,
    builder: (context) => SimpleDialog(
      title: Text(massage),
      children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FlatButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                'OK',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
