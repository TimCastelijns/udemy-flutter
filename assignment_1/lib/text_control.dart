import 'package:flutter/material.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {

  String _text = 'Text';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text(_text),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            child: Text('Change text'),
            onPressed: () {
              setState(() {
                _text = 'New text';
              });
            },
          ),
        )
      ],
    );
  }
}
