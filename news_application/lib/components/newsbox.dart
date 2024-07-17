import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_application/components/bottomsheets.dart';
import 'package:news_application/components/components.dart';
import 'package:news_application/utils/colors.dart';
import 'package:news_application/utils/text.dart';

class NewsBox extends StatelessWidget {
  final String imageurl, title, time, discription, url;
  NewsBox({
    required this.imageurl,
    required this.title,
    required this.time,
    required this.discription,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Column(children: [
      InkWell(
        onTap: () {
          showMyBottomSheet(context, title, discription, url, imageurl);
        },
        child: Container(
          width: w,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(left: 5, right: 5, top: 5),
          color: AppColors.black,
          child: Row(children: [
            CachedNetworkImage(
              imageUrl: imageurl,
              imageBuilder: (context, imageProvider) => Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.yellow,
                ),
              ),
              placeholder: (context, url) => CircularProgressIndicator(
                color: AppColors.primary,
              ),
              errorWidget: (context, url, error) => Icon(
                Icons.error,
              ),
            ),
            SizedBox(width: 8),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                modifiedTexts(text: title, size: 16, color: AppColors.white),
                SizedBox(height: 5),
                modifiedTexts(text: time, size: 12, color: AppColors.lightwhite)
              ],
            )),
          ]),
        ),
      ),
      DividerWidget(),
    ]);
  }
}
