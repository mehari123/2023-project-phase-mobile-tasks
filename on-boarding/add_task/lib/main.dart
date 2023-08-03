import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: 390,
        height: 844,
        // clipBehavior: Clip.antiAlias,
        color: Color.fromRGBO(255, 255, 255, 1),
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Stack(
            children: [
              Positioned(
                left: 7,
                right: 7,
                top: 60,
                child: Container(
                  width: 400,
                  height: 470,
                  color: Color.fromARGB(255, 255, 255, 255),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back),
                            onPressed: () {
                              // Add your back button logic here
                              // Navigator.pop(context);
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.more_vert),
                            onPressed: () {
                              // Add your three dots menu logic here
                            },
                          ),
                        ],
                      ),
                      Text(
                        "Create new tasks",
                        style: TextStyle(
                          fontSize: 18, // Adjust the font size as needed
                          fontWeight: FontWeight
                              .bold, // Adjust the font weight as needed
                        ),
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 300,
                              height: 90,
                              color: const Color.fromARGB(255, 255, 255, 255),
                              padding: EdgeInsets.all(
                                  10), // Adding padding of 10 pixels to all sides of the Container.
                              margin: EdgeInsets.symmetric(vertical: 5),
                              child: Center(
                                child: Container(
                                  width: 250,
                                  child: Column(
                                    children: [
                                      Text("Main task name",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromARGB(255, 238, 0, 0),
                                          )),
                                      TextField(
                                        maxLines: 1,
                                        decoration: InputDecoration(
                                          hintText: 'UI/UX App Design',
                                          filled: true,
                                          fillColor: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ), // Adding vertical margin of 5 pixels to the Container.
                            ),
                            Container(
                              width: 300,
                              height: 90,
                              color: const Color.fromARGB(255, 255, 255, 255),
                              padding: EdgeInsets.all(
                                  10), // Adding padding of 10 pixels to all sides of the Container.
                              margin: EdgeInsets.symmetric(vertical: 5),
                              child: Center(
                                child: Container(
                                  width: 250,
                                  child: Column(
                                    children: [
                                      Text("Due date",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromARGB(255, 238, 0, 0),
                                          )),
                                      TextField(
                                        maxLines: 1,
                                        decoration: InputDecoration(
                                          hintText: 'April 29,2023 12:30 AM',
                                          filled: true,
                                          fillColor: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ), // Adding vertical margin of 5 pixels to the Container.
                            ),
                            Container(
                              width: 300,
                              height: 120,
                              color: const Color.fromARGB(255, 255, 255, 255),
                              padding: EdgeInsets.all(
                                  10), // Adding padding of 10 pixels to all sides of the Container.
                              margin: EdgeInsets.symmetric(vertical: 40),

                              child: Center(
                                child: Container(
                                  width: 250,
                                  child: Column(
                                    children: [
                                      Text("Description",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromARGB(255, 238, 0, 0),
                                          )),
                                      TextField(
                                        maxLines: 2,
                                        decoration: InputDecoration(
                                          hintText:
                                              'lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                                          filled: true,
                                          fillColor: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ])
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 440,
                child: Container(
                  width: 358,
                  height: 132,
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //     image:
                  //         NetworkImage("https://via.placeholder.com/358x132"),
                  //     fit: BoxFit.fill,
                  //   ),
                  // ),
                ),
              ),
              Positioned(
                left: 95,
                top: 600,
                child: Container(
                    width: 177,
                    height: 76,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color:
                              Color.fromARGB(255, 222, 0, 0).withOpacity(0.5),
                          // spreadRadius: 10,
                          // blurRadius: 20,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Add task"),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
