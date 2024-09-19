import 'package:flutter/material.dart';
import 'package:project_1/globals/constants.dart';
import 'package:project_1/widget/dashboard.dart';

class CourseDetailWidget extends StatelessWidget {
  const CourseDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Constants.sHeight / 3,
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Our Students",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
          _studentRow(),
          const Text(
            "Photoshop Editing Course",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
          const Text(
              """Est cupidatat ullamco laboris irure est consectetur quis labore ea irure laborum ex.Sit dolor esse sit et commodo do enim nisi sint.Mollit cillum non fugiat officia esse minim cupidatat Lorem Lorem."""),
          const Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomListTile(
                spacing: MainAxisAlignment.start,
                color: Colors.transparent,
                leading: Icon(Icons.slow_motion_video_sharp),
                title: Text(" 30 Lessons"),
              ),
              CustomListTile(
                spacing: MainAxisAlignment.start,
                color: Colors.transparent,
                leading: Icon(Icons.timer),
                title: Text(" 13h 30min"),
              )
            ],
          )
        ],
      ),
    );
  }

  Row _studentRow() {
    return const Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          backgroundColor: Colors.amber,
        ),
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
          backgroundColor: Colors.red,
        ),
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
          backgroundColor: Colors.blue,
        ),
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
          backgroundColor: Colors.green,
        ),
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
          backgroundColor: Colors.pink,
        ),
      ],
    );
  }
}
