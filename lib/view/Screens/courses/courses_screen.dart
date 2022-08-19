
import 'package:cdemy/const_colors.dart';
import 'package:cdemy/controllers/courses_controller.dart';
import 'package:cdemy/controllers/search.dart';
import 'package:cdemy/view/widget/content.dart';
import 'package:cdemy/view/widget/side_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoursesScreen extends StatelessWidget {
  CoursesScreen({Key? key}) : super(key: key);

  final controller = Get.put(CoursesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      drawer: const SideMenu(),
      appBar: AppBar(
        backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
        elevation: 0.0,
        leading: Builder(
          builder: (BuildContext context) {
            return RotatedBox(
              quarterTurns: 1,
              child: IconButton(
                icon: const Icon(
                  Icons.bar_chart_rounded,
                  color: Colors.green,
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            );
          },
        ),
        title: Text(
          'Courses'.tr,
          style: TextStyle(
              fontSize: 25, color: primary, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              showSearch(context: context, delegate: DataSearch());
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.search,
                color: primary,
              ),
            ),
          )
        ],
      ),
      body: Obx(
        () => controller.load.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SizedBox(
                child: GridView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  itemCount: controller.Data!.data!.length,
                  itemBuilder: (ctx, index) => Content(
                    nameCourse: controller.Data!.data![index].title ?? '',
                    nameButton: controller.Data!.data![index].status ?? '',
                    nameTech: controller.Data!.data![index].coupon ?? '',
                    image:
                        "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
                    // "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg" ,
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 0.0,
                    mainAxisSpacing: 5,
                    mainAxisExtent: 350,
                  ),
                ),
              ),
      ),
    );
  }
}
