import 'package:carousel_slider/carousel_slider.dart';
import 'package:cdemy/const_colors.dart';

import 'package:cdemy/controllers/courses_controller.dart';
import 'package:cdemy/controllers/search.dart';
import 'package:cdemy/controllers/slider_controller.dart';
import 'package:cdemy/view/widget/content.dart';
import 'package:cdemy/view/widget/side_menu.dart';
import 'package:cdemy/view/widget/text_name_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widget/slider_item.dart';
import '../courses/courses_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final controller = Get.put(SliderController());
  final controllerCourses = Get.put(CoursesController());

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
        title: const Text(
          'Cdemy',
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
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SafeArea(
            child: Column(
              children: [
                //slider
                Obx(
                  () => controller.load.value == true
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : CarouselSlider.builder(
                          options: CarouselOptions(
                            height: 250.h,
                            autoPlay: true,
                          ),
                          itemCount: controller.Data!.data!.length,
                          itemBuilder: (context, index, pageViewIndex) =>
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SliderItem(
                            slider_id:
                                  controller.Data!.data![index].id.toString(),
                            slider_image:
                                  "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
                            // controller
                            //     .Data!.data![index].thumbnail
                            //     .toString(),
                            slider_url: controller.Data!.data![index].title!,
                          ),
                              ),
                        ),
                ),
                SizedBox(height: 20.h),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CoursesScreen()));
                  },
                  child: NameContent(
                    seetext: 'SeeAll'.tr,
                    nametext: 'Courses'.tr,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 350,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (ctx, index) => const Card(
                      child: SizedBox(
                        width: 190,
                        child: Content(
                          image:
                              'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
                          nameCourse: "Flutter",
                          nameTech: 'MohamedSaeed',
                          nameButton: 'GetCourse',
                        ),
                      ),
                    ),
                    reverse: true,
                    padding: const EdgeInsets.all(5),
                    scrollDirection: Axis.horizontal,
                  ),
                ),

                const NameContent(
                  seetext: 'SeeAll',
                  nametext: 'Programing',
                ),
                SizedBox(
                  width: double.infinity,
                  height: 350,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (ctx, index) => const Card(
                      child: SizedBox(
                        width: 190,
                        child: Content(
                          image:
                              'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
                          nameCourse: "Flutter",
                          nameTech: 'MohamedSaeed',
                          nameButton: 'GetCourse',
                        ),
                      ),
                    ),
                    reverse: true,
                    padding: const EdgeInsets.all(5),
                    scrollDirection: Axis.horizontal,
                  ),
                ),

                NameContent(seetext: 'SeeAll'.tr, nametext: 'Design'.tr),
                SizedBox(
                  width: double.infinity,
                  height: 350,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (ctx, index) => const Card(
                      child: SizedBox(
                        width: 190,
                        child: Content(
                          image:
                              'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
                          nameCourse: "Flutter",
                          nameTech: 'MohamedSaeed',
                          nameButton: 'GetCourse',
                        ),
                      ),
                    ),
                    reverse: true,
                    padding: const EdgeInsets.all(5),
                    scrollDirection: Axis.horizontal,
                  ),
                ),

                NameContent(
                  seetext: 'SeeAll'.tr,
                  nametext: 'marketing'.tr,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 350,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (ctx, index) => Card(
                      child: SizedBox(
                        width: 190,
                        child: Content(
                          image:
                              'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
                          nameCourse: "Flutter",
                          nameTech: 'MohamedSaeed',
                          nameButton: 'GetCourse',
                        ),
                      ),
                    ),
                    reverse: true,
                    padding: const EdgeInsets.all(5),
                    scrollDirection: Axis.horizontal,
                  ),
                ),

                NameContent(
                  seetext: 'SeeAll'.tr,
                  nametext: 'Special courses'.tr,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 350,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (ctx, index) => Card(
                      child: SizedBox(
                        width: 190,
                        child: Content(
                          image:
                              'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
                          nameCourse: "Flutter",
                          nameTech: 'MohamedSaeed',
                          nameButton: 'GetCourse',
                        ),
                      ),
                    ),
                    reverse: true,
                    padding: const EdgeInsets.all(5),
                    scrollDirection: Axis.horizontal,
                  ),
                ),

                NameContent(
                  seetext: 'SeeAll'.tr,
                  nametext: 'Most viewed courses'.tr,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 350,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (ctx, index) => Card(
                      child: SizedBox(
                        width: 190,
                        child: Content(
                          image:
                              'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
                          nameCourse: "Flutter",
                          nameTech: 'MohamedSaeed',
                          nameButton: 'GetCourse',
                        ),
                      ),
                    ),
                    reverse: true,
                    padding: const EdgeInsets.all(5),
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
