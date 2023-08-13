import 'package:flutter/material.dart';

class image extends StatelessWidget {
  const image({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Image.asset(
        "assets/images/st.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
