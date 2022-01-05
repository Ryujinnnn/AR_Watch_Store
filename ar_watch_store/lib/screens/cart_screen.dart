import 'package:ar_watch_store/constant.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin: const EdgeInsets.only(
                top: 20, left: 24.0, bottom: 20, right: 24.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                              onTap: () => Navigator.of(context).pop(),
                              child:
                                  const Icon(Icons.arrow_back_ios_new_rounded)),
                          Text(
                            "cart".toUpperCase(),
                            style: const TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 4.0),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      Container(
                        decoration: const BoxDecoration(color: cPrimaryColor),
                        width: Size.infinite.width,
                        height: 20,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/watch_2.png",
                            width: 150,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("DTC-001",
                                  style: TextStyle(
                                      color: cPrimaryColor,
                                      fontFamily: "Montserrat",
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(width: 10),
                              Text("1000000đ",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontFamily: "Montserrat",
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  )),
                              Text("black",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Montserrat",
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  )),
                              SizedBox(width: 10)
                            ],
                          ),
                          const SizedBox(width: 20),
                          Row(children: const [
                            Icon(Icons.remove_circle_rounded),
                            SizedBox(width: 10),
                            Text("1",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Montserrat",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                )),
                            SizedBox(width: 10),
                            Icon(Icons.add_circle_rounded),
                          ])
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: const BoxDecoration(color: cPrimaryColor),
                        width: Size.infinite.width,
                        height: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Thành tiền".toUpperCase(),
                              style: const TextStyle(
                                  color: cPrimaryColor,
                                  fontFamily: "Montserrat",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(
                            width: 50,
                          ),
                          const Text("1000000đ",
                              style: TextStyle(
                                color: cPrimaryColor,
                                fontFamily: "Montserrat",
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Giảm giá".toUpperCase(),
                              style: const TextStyle(
                                  color: cPrimaryColor,
                                  fontFamily: "Montserrat",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(
                            width: 50,
                          ),
                          const Text("0đ",
                              style: TextStyle(
                                color: cPrimaryColor,
                                fontFamily: "Montserrat",
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              )),
                        ],
                      ),
                    ],
                  ),
                ])));
  }
}
