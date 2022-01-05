import 'package:ar_watch_store/screens/cart_screen.dart';
import 'package:ar_watch_store/screens/product_screen.dart';

import 'package:flutter/material.dart';

import '../constant.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  _StoreScreenState createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  List<String> categoryList = ["Đồng hồ điện tử", "Đồng hồ cơ"];
  List<String> nameList = ["DHDT-001", "DHC-001", "DHC-002"];
  List<String> DHDTList = [
    "assets/images/watch_1.png",
  ];
  List<String> DHCList = [
    "assets/images/watch_2.png",
    "assets/images/watch_3.png"
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.only(top: 5, left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.menu),
              Image.asset(
                "assets/images/textLogo.png",
                width: MediaQuery.of(context).size.width / 2,
                height: 100,
              ),
              IconButton(
                icon: const Icon(Icons.shopping_cart_rounded),
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CartScreen())),
              )
            ],
          ),
          const Text(
            "Danh mục sản phẩm",
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: List.generate(
                    categoryList.length,
                    (index) => Padding(
                          padding: const EdgeInsets.only(right: 28.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                currentIndex = index;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 28.0,
                              ),
                              child: Material(
                                elevation: currentIndex == index ? 16.0 : 0,
                                color: Colors.transparent,
                                shadowColor: Colors.grey.withOpacity(0.6),
                                child: AnimatedContainer(
                                    padding: EdgeInsets.symmetric(
                                        vertical:
                                            currentIndex == index ? 16.0 : 0.0,
                                        horizontal:
                                            currentIndex == index ? 32.0 : 0.0),
                                    decoration: BoxDecoration(
                                        color: currentIndex == index
                                            ? cPrimaryColor
                                            : const Color(0xFAFAFAFA),
                                        borderRadius:
                                            BorderRadius.circular(16.0)),
                                    duration: const Duration(milliseconds: 50),
                                    child: Text(
                                      categoryList[index],
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: "Montserrat",
                                          color: currentIndex == index
                                              ? cLightColor
                                              : cPrimaryColor,
                                          fontWeight: FontWeight.w500),
                                    )),
                              ),
                            ),
                          ),
                        ))),
          ),
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.only(top: 40),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: currentIndex == 0 ? DHDTList.length : DHCList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductScreen())),
                    child: Container(
                      height: 200,
                      margin: const EdgeInsets.only(right: 20),
                      child: (Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 190.0,
                            width: 190.0,
                            padding: const EdgeInsets.only(bottom: 24.0),
                            decoration: BoxDecoration(
                                color: cAccentColor,
                                borderRadius: BorderRadius.circular(24.0)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  nameList[index],
                                  style: TextStyle(
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                Text("1000000",
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color: cPrimaryColor.withOpacity(0.5)))
                              ],
                            ),
                          ),
                          Positioned(
                            top: 60.0,
                            child: Image.asset(
                              currentIndex == 0
                                  ? DHDTList[index]
                                  : DHCList[index],
                              height: 210.0,
                            ),
                          )
                        ],
                      )),
                    ),
                  );
                }),
          )
        ],
      ),
    ));
  }
}

class BottomCustomPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = cAccentColor
      ..style = PaintingStyle.fill;
    Path path = Path();
    path.moveTo(0, -20);
    path.quadraticBezierTo(size.width * 0.30, 20, size.width * 0.45, 20);
    path.quadraticBezierTo(size.width * 0.75, 20, size.width, -20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, cPrimaryColor, 4.0, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
