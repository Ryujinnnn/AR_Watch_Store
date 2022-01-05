import 'package:ar_watch_store/constant.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<String> colorList = [
    "assets/images/brown_button.png",
    "assets/images/black_button.png"
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cLightColor,
      body: Container(
        margin:
            const EdgeInsets.only(top: 20, left: 24.0, right: 24.0, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Icon(Icons.arrow_back_ios_new_rounded)),
                Text(
                  "dhc-001".toUpperCase(),
                  style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 4.0),
                ),
                const SizedBox(
                  width: 10,
                )
              ],
            ),
            Container(
              height: 300,
              child: PageView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              color: cAccentColor,
                              borderRadius: BorderRadius.circular(100.0)),
                        ),
                        Image.asset(
                          "assets/images/watch_2.png",
                          height: 300,
                        ),
                      ],
                    );
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  colorList.length,
                  (index) => GestureDetector(
                        onTap: () => setState(() {
                          selectedIndex = index;
                        }),
                        child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 8.0),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: selectedIndex == index ? 1.0 : 0.5,
                                    color: selectedIndex == index
                                        ? cPrimaryColor.withOpacity(0.8)
                                        : cAccentColor),
                                borderRadius: BorderRadius.circular(100.0)),
                            child: Image.asset(
                              colorList[index],
                              height: 75.0,
                            )),
                      )),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              "Mô tả sản phẩm".toUpperCase(),
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              "Đồng hồ siêu cấp vip pro",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.5,
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "1000000đ",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 24,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold),
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
                              fontSize: 20,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0),
                        ),
                        onPressed: () {},
                        child: const Text('🛒Mua ngay'),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
