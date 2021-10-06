import 'package:chat9ja/models/app.dart';
import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final App app;
  final String caption;
  final Function? todo;
  Button({Key? key, required this.app, required this.caption, this.todo})
      : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
            color: widget.app.themeColor,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(widget.caption,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              )),
        ),
      ),
      onTap: () {},
    );
  }
}