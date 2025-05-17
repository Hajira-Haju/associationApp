import 'package:associations_app/presentation/new_events_screen/controller/news_events_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../../news_inner_screen.dart';
import '../../../newsdata.dart';
import '../models/news_events_data.dart';

class NewsEventsWidgets {
  static Widget textField() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Search here...',
          prefixIcon: Icon(Icons.search),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              foregroundColor: Colors.white,
              backgroundColor: Colors.orange,
              child: Icon(CupertinoIcons.arrow_right),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(30.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.orange.shade700),
            borderRadius: BorderRadius.circular(30.r),
          ),
        ),
      ),
    );
  }

  static Widget latestNewsList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'Latest News',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: NewsData.latestNews.length ,
            itemBuilder: (context, index) {
              final data = NewsData.latestNews[index];
              return SizedBox(
                width: 320,
                child: Card(
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(NewsOnClick(imgUrl: data.imgUrl, description: data.description, title: data.title, ));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                          ),
                          child: Image.network(
                          data.imgUrl,
                            errorBuilder: (context, error, stackTrace) => Icon(Icons.error),
                            width: 320,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          data.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                ),);
            }
    ),
    )
      ],
    );
  }

  static Widget choiceChip(NewsEventsController controller) {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children:
            NewsEventsData.choiceData.map((choices) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: ChoiceChip(
                  labelStyle: TextStyle(
                    color:
                        controller.selectedChoice.value == choices
                            ? Colors.white
                            : Colors.black,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  selectedColor: Colors.orange,
                  label: Text(choices),
                  selected: controller.selectedChoice.value == choices,
                  onSelected: (value) {
                    if (controller.selectedChoice.value != choices) {
                      controller.selectedChoice.value = choices;
                    }
                  },
                ),
              );
            }).toList(),
      ),
    );
  }

  static Widget newsList(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: NewsData.newsList.length ,
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final data = NewsData.newsList[index];
        return GestureDetector(
          onTap: () {
            Get.to(NewsOnClick(imgUrl: data.imgUrl, description: data.description, title: data.title,));
          },
          child: Card(
            margin: EdgeInsets.all(8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 150,
                  height: 80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    child: Image.network(
                      data.imgUrl,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                          Icon(Icons.error),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.title,
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 5),
                        Text(
                          data.description,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
