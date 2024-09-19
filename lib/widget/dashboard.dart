import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_1/globals/color_pallete.dart';
import 'package:project_1/globals/constants.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: ColorPallete.theme, borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 8, right: 8),
            decoration: BoxDecoration(
                color: ColorPallete.lightTheme,
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Mathematics Course",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                CustomListTile(
                  padding:const EdgeInsets.only(left: 10, right: 10),
                  height: Constants.sHeight / 15,
                  title: Text(
                    Intl().date("d MMM,y").format(DateTime.now()),
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                  leading:const Icon(Icons.calendar_month),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomListTile(
                // padding: EdgeInsets.all(10),
                middleSpacing: 8,
                title: Text(
                  "Completed",
                ),
                subTitle: Text("20",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                leading: CircleAvatar(
                  backgroundColor: ColorPallete.lightTheme,
                  radius: 30,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: ColorPallete.theme,
                    child: Icon(Icons.check),
                  ),
                ),
              ),
              ColoredBox(
                color: Color.fromARGB(255, 238, 252, 188),
                child: SizedBox(
                  width: 2,
                  height: 80,
                ),
              ),
              CustomListTile(
                middleSpacing: 8,
                title: Text("Hours Spent"),
                subTitle: Text(
                  "455",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                leading: CircleAvatar(
                  backgroundColor: ColorPallete.lightTheme,
                  radius: 30,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: ColorPallete.theme,
                    child: Icon(Icons.av_timer),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? subTitle;
  final Widget? trailing;
  final Color? color;
  final double? width;
  final double? height;
  final MainAxisAlignment? spacing;
  final MainAxisAlignment? columnSpacing;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final MainAxisSize? mainAxisSize;
  final bool widthAvailable;
  final double? middleSpacing;
  const CustomListTile({
    this.mainAxisSize,
    this.widthAvailable = false,
    this.margin,
    this.columnSpacing,
    this.padding,
    this.height,
    this.spacing,
    super.key,
    this.width,
    this.color,
    this.leading,
    this.title,
    this.subTitle,
    this.trailing,
    this.middleSpacing,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: margin ?? const EdgeInsets.symmetric(vertical: 8),
        height: height,
        padding: padding,
        width: widthAvailable ? width ?? Constants.sWidth / 2.6 : null,
        // margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: color ?? ColorPallete.theme,
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisSize: mainAxisSize ?? MainAxisSize.max,
          mainAxisAlignment: spacing ?? MainAxisAlignment.spaceEvenly,
          children: [
            if (leading != null) leading!,
            if (middleSpacing != null)
              SizedBox(
                width: middleSpacing,
              ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: columnSpacing ?? MainAxisAlignment.center,
              children: [
                if (title != null) title!,
                if (subTitle != null) subTitle!
              ],
            ),
            if (trailing != null) trailing!
          ],
        ));
  }
}
