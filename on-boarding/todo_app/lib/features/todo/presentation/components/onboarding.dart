import 'package:flutter/material.dart';

class Onbaording extends StatelessWidget {
  final String appTitle = 'Onboarding';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        width: 390,
        height: 844,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: Color.fromARGB(255, 100, 238, 87)),
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Stack(
            children: [
              Positioned(
                left: -46,
                top: 83,
                child: Container(
                  width: 483,
                  height: 483,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/pic4.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 80,
                top: 717,
                child: InkWell(
                  onTap: () {
                    // Navigate to the "/" route
                    Navigator.pushNamed(context, '/');
                  },
                  child: Container(
                    width: 256,
                    height: 50,
                    decoration: ShapeDecoration(
                      color: Color(0xFF0C8CE9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    child: Center(
                        child: Text('Get Started',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
