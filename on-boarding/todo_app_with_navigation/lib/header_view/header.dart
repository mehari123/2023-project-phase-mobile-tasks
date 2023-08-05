import 'package:flutter/material.dart';

class header extends StatelessWidget {
  const header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back, color: Color.fromARGB(255, 0, 0, 0)),
          onPressed: () {
            // Add your back button logic here
            Navigator.pop(context);
          },
        ),
        Text(
          "Todo List",
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontFamily: "Roboto",
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
        IconButton(
          icon: Icon(Icons.more_vert, color: Color.fromARGB(255, 0, 0, 0)),
          onPressed: () {
            // Add your three dots menu logic here
          },
        ),
      ],
    );
  }
}
