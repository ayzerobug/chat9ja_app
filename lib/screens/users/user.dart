import 'package:chat9ja/models/app.dart';
import 'package:chat9ja/screens/users/screens/explore.dart';
import 'package:flutter/material.dart';

class UserPortal extends StatefulWidget {
  final App app;
  const UserPortal({Key? key, required this.app}) : super(key: key);

  @override
  _UserPortalState createState() => _UserPortalState();
}

class _UserPortalState extends State<UserPortal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFCFEFF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Chat9ja",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: const Explore(),
    );
  }
}
