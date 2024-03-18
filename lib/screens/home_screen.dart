import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_test/data/crypto.dart';
import 'package:flutter_application_test/screens/user_profile_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String title = 'loading ...';
  
  //Crypto? user;
  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: SafeArea(
          child: Center(
            child: SpinKitSquareCircle(
              size: 80,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  void getData() async {
    var response = await Dio().get('https://api.coincap.io/v2/assets');
    List<Crypto> cryptoList = response.data['data']
        .map<Crypto>((jsonMapObject) => Crypto.fromMapJson(jsonMapObject))
        .toList();
    // .cast<Crypto>();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CointListScreen(
          cryptoList: cryptoList,
        ),
      ),
    );
  }
}
