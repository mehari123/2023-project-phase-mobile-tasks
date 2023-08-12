import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../domain/entities/task.dart';
import '../header_view/header.dart';

class TaskDetail extends StatefulWidget {
  final Tasks task;
  const TaskDetail({super.key, required this.task});

  @override
  State<TaskDetail> createState() => _TaskDetailState();
}

class _TaskDetailState extends State<TaskDetail> {
  @override
  Widget build(BuildContext context) {
    final date1 = widget.task.dueDate ?? DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(date1);

    return Scaffold(
      body: ListView(children: [
        Material(
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
                            fontWeight: FontWeight
                                .bold, // Adjust the font weight as needed
                          ),
                        ),
                      ],
                    ),
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
                            "Task Name",
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
                                widget.task.title,
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
                            "Description",
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
                                widget.task.description,
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
                            "due date",
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
                                formattedDate,
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
        ),
      ]),
    );
  }
}
