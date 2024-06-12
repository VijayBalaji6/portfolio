import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/themes/app_colors.dart';

class WorkView extends StatelessWidget {
  const WorkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Explore My Latest works",
          style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 0.03.sh,
        ),
        builtProjectShowCaseList(projectName: "1234"),
      ],
    );
  }
}

Widget builtProjectShowCaseList({required String projectName}) => SizedBox(
      height: 0.7.sh,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 6,
          separatorBuilder: (context, index) => SizedBox(
                width: 0.05.sh,
              ),
          itemBuilder: (BuildContext context, int index) => SizedBox(
                width: 0.2.sw,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 0.3.sw,
                      width: 0.2.sw,
                    ),
                    SizedBox(
                      height: 0.01.sh,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          projectName,
                          style: TextStyle(
                              fontSize: 3.sp, fontWeight: FontWeight.bold),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Show More",
                              style: TextStyle(fontSize: 3.sp),
                            ))
                      ],
                    )
                  ],
                ),
              )),
    );
