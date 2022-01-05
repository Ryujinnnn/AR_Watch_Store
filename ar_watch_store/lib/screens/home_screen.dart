import 'package:ar_watch_store/constant.dart';
import 'package:ar_watch_store/screens/guide_screen.dart';
import 'package:ar_watch_store/screens/store_screen.dart';
import 'package:ar_watch_store/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class NavigationItem {
  const NavigationItem(this.title, this.icon);
  final String title;
  final IconData icon;
}

const List<NavigationItem> allNavigationItems = <NavigationItem>[
  NavigationItem('Home', Icons.home),
  NavigationItem('Search', Icons.search),
  NavigationItem('Message', Icons.chat_bubble),
  NavigationItem('Notification', Icons.notifications),
  NavigationItem('Profile', Icons.person)
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: const <Widget>[
          StoreScreen(),
          GuideScreen(),
          WelcomeScreen(),
        ],
      ),
      backgroundColor: cLightColor,
      bottomNavigationBar: Container(
        color: _currentIndex == 1 ? cAccentColor : cLightColor,
        height: 50,
        child: Stack(
          children: [
            CustomPaint(
              size: Size(MediaQuery.of(context).size.width, 60),
              painter: BottomCustomPaint(),
            ),
            Center(
              heightFactor: 0.8,
              child: FloatingActionButton(
                onPressed: () => setState(() {
                  _pageController.jumpToPage(1);
                  _currentIndex = 1;
                }),
                backgroundColor: cPrimaryColor,
                child: const Icon(
                  Icons.remove_red_eye_rounded,
                  color: cLightColor,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () => setState(() {
                          _pageController.jumpToPage(0);
                          _currentIndex = 0;
                        }),
                    icon: const Icon(Icons.home_outlined)),
                const SizedBox(width: 70),
                IconButton(
                  onPressed: () => setState(() {
                    _pageController.jumpToPage(2);
                    _currentIndex = 2;
                  }),
                  icon: const Icon(Icons.person_rounded),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
