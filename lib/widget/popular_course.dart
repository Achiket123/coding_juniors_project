import 'package:flutter/material.dart';
import 'package:project_1/features/course/course_details.dart';
import 'package:project_1/globals/color_pallete.dart';
import 'package:project_1/globals/constants.dart';
import 'package:project_1/widget/dashboard.dart';

class PopularCourse extends StatelessWidget {
  final bool isVertical;
  const PopularCourse({super.key, required this.isVertical});

  @override
  Widget build(BuildContext context) {
    return isVertical
        ? GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const CourseDetails()));
            },
            child: Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              height: Constants.sHeight / 2.7,
              width: Constants.sWidth / 1.7,
              child: _verticalCourse(),
            ),
          )
        : GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const CourseDetails()));
            },
            child: Container(
              // width: Constants.sWidth / 1.3,
              padding: const EdgeInsets.all(14),
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: Constants.sHeight / 7,
              // color: Colors.red,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: _horizontalCourse(),
            ),
          );
  }

  Row _horizontalCourse() {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(right: 20),
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 217, 230, 235),
              borderRadius: BorderRadius.circular(10)),
          child: Transform.scale(
            scale: 0.7,
            child: Image.asset(
              Constants.photoshop,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Adobe XD Editing Course",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 255, 193, 59),
                ),
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: "4.8 ",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: "(230)",
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold))
                ])),

                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.video_collection_rounded,
                ),

                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: " 30 Lessons",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold)),
                ])),
                // Expanded(
                // child:
                // CustomListTile(
                //   color: Colors.transparent,
                //   spacing: MainAxisAlignment.start,
                //   leading: Icon(
                //     Icons.star,
                //     color: const Color.fromARGB(255, 255, 163, 3),
                //   ),
                //   title: RichText(
                //       text: TextSpan(children: [
                //     TextSpan(
                //         text: "4.8 ",
                //         style: TextStyle(
                //             fontSize: 15,
                //             color: Colors.grey,
                //             fontWeight: FontWeight.bold)),
                //     TextSpan(
                //         text: "(230)",
                //         style: TextStyle(
                //             fontSize: 10,
                //             color: Colors.grey,
                //             fontWeight: FontWeight.bold))
                //   ])),
                //   trailing: CustomListTile(
                //     color: Colors.transparent,
                //     // spacing: MainAxisAlignment.end,
                //     leading: Icon(
                //       Icons.video_collection_rounded,
                //     ),
                //     title: RichText(
                //         text: TextSpan(children: [
                //       TextSpan(
                //           text: " 30 Lessons",
                //           style: TextStyle(
                //               fontSize: 15,
                //               color: Colors.grey,
                //               fontWeight: FontWeight.bold)),
                //     ])),
                //   ),
                // ),
                // Expanded(
                // child:

                // )
              ],
            )
          ],
        )
      ],
    );
  }

  Column _verticalCourse() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: SizedBox(
            height: Constants.sHeight / 10,
            child: Image.asset(Constants.photoshop),
          ),
        ),
        const Text(
          "PhotoShop Editing \nCourse",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
        ),
        const OverLappingImageWidgets(),
        const Divider(
          thickness: 2,
          color: Color.fromARGB(255, 206, 205, 205),
        ),
        Row(
          children: [
            Expanded(
                child: CustomListTile(
              color: Colors.transparent,
              spacing: MainAxisAlignment.start,
              leading: const Icon(
                Icons.star,
                color: Color.fromARGB(255, 255, 163, 3),
              ),
              title: RichText(
                  text: const TextSpan(children: [
                TextSpan(
                    text: "4.8 ",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: "(230)",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold))
              ])),
            )),
            Expanded(
                child: CustomListTile(
              color: Colors.transparent,
              spacing: MainAxisAlignment.end,
              leading: const Icon(
                Icons.video_collection_rounded,
              ),
              title: RichText(
                  text: const TextSpan(children: [
                TextSpan(
                    text: " 30 Lessons",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold)),
              ])),
            ))
          ],
        )
      ],
    );
  }
}

class OverLappingImageWidgets extends StatelessWidget {
  const OverLappingImageWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      // mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: const Color.fromARGB(255, 255, 255, 255), width: 2),
            ),
            child: const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 141, 34, 26),
            ),
          ),
        ),
        Align(
          alignment: const Alignment(-0.7, 0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: const Color.fromARGB(255, 255, 255, 255), width: 2),
            ),
            child: const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 114, 74, 71),
            ),
          ),
        ),
        Align(
          alignment: const Alignment(-0.4, 0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: const Color.fromARGB(255, 255, 255, 255), width: 2),
            ),
            child: const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 114, 74, 71),
            ),
          ),
        ),
        Align(
          alignment: const Alignment(-0.1, 0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: const Color.fromARGB(255, 255, 255, 255), width: 2),
            ),
            child: const CircleAvatar(
              backgroundColor: ColorPallete.theme,
              child: Text(
                "+20",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),

        // Transform.translate(
        //   offset: Offset(-70, 0),
        const Align(
          alignment: Alignment(1, 0),
          child: Text(
            "Participant",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        // ),
      ],
    );
  }
}
