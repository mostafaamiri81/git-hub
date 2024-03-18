import 'dart:html';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CointListScreen extends StatefulWidget {
  CointListScreen({Key? key, this.cryptoList}) : super(key: key);
  List<Crypto>? cryptoList;
  @override
  State<CointListScreen> createState() => _User_ProfileState();
}

class _User_ProfileState extends State<CointListScreen> {
  List<Crypto>? cryptoList;
  @override
  void initState() {
    super.initState();
    cryptoList = widget.cryptoList;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ListView.builder(
            itemCount: cryptoList!.length,
            itemBuilder: (context, index) {
              return Text(cryptoList![index].name);
            },
          ),
        ),
      ),
    );
  }
}
