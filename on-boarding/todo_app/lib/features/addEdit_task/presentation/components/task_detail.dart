import 'package:flutter/material.dart';
import '../header_view/header.dart';

class task_detail extends StatelessWidget {
  const task_detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        taskDetail(),
      ]),
    );
  }
}

class taskDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Container(
            width: 390,
            height: 844,
            clipBehavior: Clip.antiAlias,
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    header(),
                    Text(
                      "Task Detail",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18, // Adjust the font size as needed
                        fontWeight:
                            FontWeight.bold, // Adjust the font weight as needed
                      ),
                    ),
                  ],
                ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 141, top: 32),
                //   child: Text(
                //     'Task Detail',
                //     style: TextStyle(
                //       color: Colors.black,
                //       fontSize: 17,
                //       fontFamily: 'Inter',
                //       fontWeight: FontWeight.w400,
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 200,
                  child: Container(
                    width: 307,
                    height: 307,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            "assets/images/shp.png"), // Replace "image_name.png" with your actual asset path
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Title',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 311,
                        height: 55,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF1EEEE),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        child: Center(
                          child: Text(
                            'UI/UX App Design',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Description',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 311,
                        height: 150,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF1EEEE),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'First I have to animate the logo \nand prototyping my design. It’s\nvery important.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Deadline',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 311,
                        height: 55,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF1EEEE),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        child: Center(
                          child: Text(
                            'April. 29, 2023',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
