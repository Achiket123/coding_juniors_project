import 'package:bottom_navbar_with_indicator/bottom_navbar_with_indicator.dart';
import 'package:flutter/material.dart';
import 'package:project_1/globals/color_pallete.dart';
import 'package:project_1/globals/constants.dart';
import 'package:project_1/widget/dashboard.dart';
import 'package:project_1/widget/popular_course.dart';

class HomePage extends StatefulWidget {
  static const String routePath = '/';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return [_mainScreen(), _mainScreen(), _mainScreen(), _mainScreen()][_index];
  }

  Scaffold _mainScreen() {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      bottomNavigationBar: CustomLineIndicatorBottomNavbar(
        selectedColor: ColorPallete.theme,
        unSelectedColor: Colors.black54,
        backgroundColor: Colors.white,
        currentIndex: _index,
        unselectedIconSize: 30,
        selectedIconSize: 30,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        enableLineIndicator: true,
        lineIndicatorWidth: 3,
        indicatorType: IndicatorType.top,
        customBottomBarItems: [
          CustomBottomBarItems(
            label: '',
            icon: Icons.home,
            // assetsImagePath: accountImage,
            isAssetsImage: false,
          ),
          CustomBottomBarItems(
            label: '',
            icon: Icons.heart_broken,
            // assetsImagePath: accountImage,
            isAssetsImage: false,
          ),
          CustomBottomBarItems(
            label: '',
            icon: Icons.notifications,
            // assetsImagePath: accountImage,
            isAssetsImage: false,
          ),
          CustomBottomBarItems(
            label: '',
            icon: Icons.person,
            // assetsImagePath: accountImage,
            isAssetsImage: false,
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(248, 236, 236, 236),
      body: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Column(
                children: [
                  _topAppBar(),
                  const Dashboard(),
                  _buildPopularCourseTag(),
                  _verticalCourses(),
                  _buildPopularCourseTag(),
                  const PopularCourse(isVertical: false),
                  const PopularCourse(isVertical: false),
                  const PopularCourse(isVertical: false),
                ],
              ),
            ),
          )),
          // PopularCourse(isVertical: false),
          // PopularCourse(isVertical: false),
        ],
      ),
    );
  }

  SingleChildScrollView _verticalCourses() {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PopularCourse(isVertical: true),
          PopularCourse(isVertical: true),
          PopularCourse(isVertical: true),
        ],
      ),
    );
  }

  Row _topAppBar() {
    return const Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.orange,
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: ListTile(
            contentPadding: EdgeInsets.all(1),
            title: Text(
              "Christiana Amandla",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: Text("Lets Learning to smart"),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(Icons.search),
        ),
      ],
    );
  }

  CustomListTile _buildPopularCourseTag() {
    return CustomListTile(
      color: Colors.transparent,
      width: Constants.sWidth,
      // middleSpacing: 100,
      title: const Text(
        "Popular Courses",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      trailing: const Text("View All"),
      spacing: MainAxisAlignment.spaceBetween,
    );
  }
}
