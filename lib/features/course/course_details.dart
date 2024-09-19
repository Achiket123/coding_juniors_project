import 'package:flutter/material.dart';
import 'package:project_1/features/enroll/enroll_screens.dart';
import 'package:project_1/globals/color_pallete.dart';
import 'package:project_1/globals/constants.dart';
import 'package:project_1/widget/course_detail_widget.dart';
import 'package:project_1/widget/dashboard.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({super.key});

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 234, 234),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildTopAppBar(),
                    const CourseDetailWidget(),
                    _tagsView(),
                    // _videos()

                    const VideoWidget(
                      time: "3h 30min",
                      title: "Introduction",
                    ),
                    const VideoWidget(
                      time: "1h 30min",
                      title: "Install Software",
                    ),
                    const VideoWidget(
                      time: "2h 30min",
                      title: "Learn Tools  ",
                    ),
                    const VideoWidget(
                      time: "2h 30min",
                      title: "Learn Tools  ",
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: _customBottomNavBar(),
          )
        ],
      ),
    );
  }

  GestureDetector _customBottomNavBar() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const EnrollScreens()));
      },
      child: Container(
        height: Constants.sHeight / 12,
        // notchMargin: 0,
        padding: const EdgeInsets.all(10),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(15),
                // height: 100,
                decoration: BoxDecoration(
                    color: ColorPallete.theme,
                    borderRadius: BorderRadius.circular(10)),
                child: const Icon(
                  Icons.bookmark_add,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                flex: 6,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: ColorPallete.theme,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                      child: Text(
                    "Enroll Now",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  )),
                ))
          ],
        ),
      ),
    );
  }

  Padding _tagsView() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Video",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          Text("View All")
        ],
      ),
    );
  }

  Row _buildTopAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.canPop(context) ? Navigator.pop(context) : null;
          },
          child: const CircleAvatar(
            // radius: 30,
            backgroundColor: Colors.white,
            // radius: 30,
            child: Icon(Icons.arrow_back_ios_new),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        const Center(
          child: Text("Details"),
        ),
        const CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(Icons.search),
        ),
      ],
    );
  }
}

class VideoWidget extends StatelessWidget {
  final String title;
  final String time;
  const VideoWidget({
    required this.title,
    required this.time,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10,
                ),
                border: Border.all(color: Colors.grey, width: 2)),
            child: const Icon(Icons.lock),
          ),
          Expanded(
              child: ListTile(
            title: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
            ),
            subtitle: CustomListTile(
              color: Colors.transparent,
              mainAxisSize: MainAxisSize.min,
              spacing: MainAxisAlignment.start,
              leading: const Icon(Icons.timer),
              title: Text(time),
            ),
          )),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey, width: 2)),
            child: TextButton.icon(
              onPressed: () {},
              label: const Text("Play Video"),
              icon: const CircleAvatar(
                  backgroundColor: ColorPallete.theme,
                  radius: 10,
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 15,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
