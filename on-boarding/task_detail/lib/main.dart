import 'package:flutter/material.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

// Generated by: https://www.figma.com/community/plugin/842128343887142055/
class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      home: Scaffold(
        body: ListView(children: [
          Frame1(),
        ]),
      ),
    );
  }
}

class Frame1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // width: 393,
          // height: 852,
          // clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        onPressed: () {
                          // Add your back button logic here
                          // Navigator.pop(context);
                        },
                      ),
                      Text(
                        "Task Detail",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.more_vert,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        onPressed: () {
                          // Add your three dots menu logic here
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200,
                    child: Image.asset(
                      "assets/images/st.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                      height: 400,
                      margin: EdgeInsets.only(left: 15, right: 15, top: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Task List",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color.fromARGB(255, 250, 250, 250),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'U',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "UI/UX \n Design App",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Container(
                                      width: 150,
                                      child: Row(children: [
                                        Text(
                                          "April 20, 2021",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontFamily: "Roboto",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Icon(
                                          IconData(0x007C,
                                              fontFamily: 'MaterialIcons'),
                                          color: Color.fromARGB(255, 240, 6, 6),
                                          size: 28,
                                        ),
                                      ]))
                                ],
                              )),
                          Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color.fromARGB(255, 250, 250, 250),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'U',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "UI/UX \n Design App",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Container(
                                      width: 150,
                                      child: Row(children: [
                                        Text(
                                          "April 20, 2021",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontFamily: "Roboto",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Icon(
                                          IconData(0x007C,
                                              fontFamily: 'MaterialIcons'),
                                          color: Color.fromRGBO(1, 114, 25, 1),
                                          size: 28,
                                        ),
                                      ]))
                                ],
                              )),
                          Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color.fromARGB(255, 250, 250, 250),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'V',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "Candiate selction",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Container(
                                      width: 150,
                                      child: Row(children: [
                                        Text(
                                          "April 20, 2021",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontFamily: "Roboto",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Icon(
                                          IconData(0x007C,
                                              fontFamily: 'MaterialIcons'),
                                          color:
                                              Color.fromARGB(255, 240, 217, 6),
                                          size: 28,
                                        ),
                                      ]))
                                ],
                              )),
                          Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color.fromARGB(255, 250, 250, 250),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'F',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "Foot ball \n cu Drying",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Container(
                                      width: 150,
                                      child: Row(children: [
                                        Text(
                                          "April 20, 2021",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontFamily: "Roboto",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Icon(
                                          IconData(0x007C,
                                              fontFamily: 'MaterialIcons'),
                                          color: Color.fromARGB(255, 240, 6, 6),
                                          size: 28,
                                        ),
                                      ]))
                                ],
                              )),
                        ],
                      )),
                ],
              ),
            ],
          ),
        ),
        Container(
            width: 180,
            height: 46,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 235, 9, 9).withOpacity(0.5),
                  // spreadRadius: 10,
                  // blurRadius: 20,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: TextButton(
              onPressed: () {},
              child: Text("Create task"),
            )),
      ],
    );
  }
}