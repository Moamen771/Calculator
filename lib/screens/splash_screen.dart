import 'package:calculator/components.dart';
import 'package:calculator/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => HomeScreen(),
      ));
    });
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [primary, backgroundColor],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft)),
        child: Center(
          child: WidgetAnimator(
            incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(
                delay: Duration(milliseconds: 100),
                duration: Duration(milliseconds: 900)),
            atRestEffect: WidgetRestingEffects.size(
                numberOfPlays: 1, duration: Duration(seconds: 1)),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: backgroundColor,
                  ),
                  child: Column(
                    spacing: 5,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        spacing: 20,
                        children: [
                          Text(
                            "+",
                            style: TextStyle(fontSize: 35, color: Colors.white),
                          ),
                          Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        spacing: 20,
                        children: [
                          Text(
                            "÷",
                            style: TextStyle(fontSize: 35, color: Colors.white),
                          ),
                          Text(
                            "x",
                            style: TextStyle(fontSize: 35, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 5,
                  width: 120,
                  color: primary,
                ),
                Container(
                  height: 120,
                  width: 5,
                  color: primary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
