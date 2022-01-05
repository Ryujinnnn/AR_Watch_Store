import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

class DemoWatchScreen extends StatefulWidget {
  const DemoWatchScreen({Key? key}) : super(key: key);

  @override
  _DemoWatchScreenState createState() => _DemoWatchScreenState();
}

class _DemoWatchScreenState extends State<DemoWatchScreen> {
  late UnityWidgetController controller;
  double sliderValue = 0.0;

  @override
  void initState() {
    super.initState();
  }

  void createUnityWidget(controller) {
    this.controller = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: <Widget>[
            UnityWidget(
              onUnityCreated: createUnityWidget,
              borderRadius: BorderRadius.circular(0.0),
            ),
          ],
        ),
      ),
    );
  }
}
