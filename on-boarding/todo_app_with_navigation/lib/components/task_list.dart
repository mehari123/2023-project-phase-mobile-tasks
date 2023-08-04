import 'package:flutter/material.dart';
import 'task_detail.dart';

class task_list extends StatelessWidget {
  const task_list({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => task_detail()),
                );
                // Add your onPressed logic here!
              },
              child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 250, 250, 250),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              IconData(0x007C, fontFamily: 'MaterialIcons'),
                              color: Color.fromARGB(255, 240, 6, 6),
                              size: 28,
                            ),
                          ]))
                    ],
                  )),
            ),
            Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(255, 250, 250, 250),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            IconData(0x007C, fontFamily: 'MaterialIcons'),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            IconData(0x007C, fontFamily: 'MaterialIcons'),
                            color: Color.fromARGB(255, 240, 217, 6),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            IconData(0x007C, fontFamily: 'MaterialIcons'),
                            color: Color.fromARGB(255, 240, 6, 6),
                            size: 28,
                          ),
                        ]))
                  ],
                )),
          ],
        ));
  }
}
