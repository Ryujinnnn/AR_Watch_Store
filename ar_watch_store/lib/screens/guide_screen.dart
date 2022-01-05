import 'package:ar_watch_store/constant.dart';
import 'package:flutter/material.dart';

import 'demowatch_screen.dart';
import 'home_screen.dart';
import 'store_screen.dart';

class GuideScreen extends StatefulWidget {
  const GuideScreen({Key? key}) : super(key: key);

  @override
  _GuideScreenState createState() => _GuideScreenState();
}

class _GuideScreenState extends State<GuideScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cLightColor,
      body: Container(
        margin: const EdgeInsets.only(top: 64.0, left: 24.0, right: 24.0),
        child: Column(
          children: [
            Image.asset(
              "assets/images/Logo.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "Dùng thử sản phẩm".toUpperCase(),
              textAlign: TextAlign.center,
              style:
                  const TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              "Hệ thống sử dụng logo trên để nhận diện, \n Quý khách vui lòng chuẩn bị để có trải nghiệm tốt nhất",
              textAlign: TextAlign.center,
              style:
                  const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 15.0,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Container(
                      decoration: const BoxDecoration(color: cPrimaryColor),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      primary: Colors.white,
                      textStyle: const TextStyle(
                          fontSize: 18,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0),
                    ),
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DemoWatchScreen(),
                      ),
                    ),
                    child: const Text('Thử ngay'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
