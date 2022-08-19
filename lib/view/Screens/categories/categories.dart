import 'package:cdemy/const_colors.dart';
import 'package:cdemy/controllers/getCategories_controller.dart';
import 'package:cdemy/controllers/search.dart';
import 'package:cdemy/view/Screens/categories/sub_category.dart';
import 'package:cdemy/view/widget/side_menu.dart';
import 'package:cdemy/view/widget/single_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final controller = Get.put(GetCategoriesController());

  /* List my_catigory = [
    {
      "cat_id": "1",
      "cat_name": "Courses",
      "cat_image": "assets/cdemy_icon_w.png",
    },
    {
      "cat_id": "2",
      "cat_name": "Programing",
      "cat_image": "assets/cdemy_icon_w.png",
    },
    {
      "cat_id": "3",
      "cat_name": "Design",
      "cat_image": "assets/cdemy_icon_w.png",
    },
    {
      "cat_id": "4",
      "cat_name": "marketing",
      "cat_image": "assets/cdemy_icon_w.png",
    },
    {
      "cat_id": "5",
      "cat_name": "Special courses",
      "cat_image": "assets/cdemy_icon_w.png",
    },
  ];
  */
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
          'Categories'.tr,
          style: const TextStyle(
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
            () =>
        controller.load.value == true
            ? const Center(
          child: CircularProgressIndicator(),
        )
            : ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10.h),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: controller.Data!.data!.length,
          itemBuilder: (context, index) =>
              SingleCatigory(
                onTap: () async {
                  controller.getCoursesByCategory(
                      controller.Data!.data![index].id!);
                  await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              SubCatigory(
                                getCourseModel: controller.getCourseModel,
                              )));
                },
                cat_id: controller.Data!.data![index].id.toString(),
                cat_name: controller.Data!.data![index].name!,
                cat_image:
                "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
                //     controller.Data!.data![index].icon.toString(),
              ),
        ),
      ),
    );
  }
}
