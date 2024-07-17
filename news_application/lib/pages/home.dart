import 'package:flutter/material.dart';
import 'package:news_application/backend/functions.dart';
import 'package:news_application/components/appbar.dart';
import 'package:news_application/components/newsbox.dart';
import 'package:news_application/utils/colors.dart';
import 'package:news_application/utils/constants.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  late Future<List> news;

  @override
  void initState() {
    super.initState();
    news = fetchnews();
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: appbar(),
      body: Expanded(
        child: Container(
            width: w,
            child: FutureBuilder<List>(
              future: fetchnews(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return NewsBox(
                        url: snapshot.data![index]['url'],
                        imageurl: snapshot.data![index]['urlToImage'] != null
                            ? snapshot.data![index]['urlToImage']
                            : Constants.imageurl,
                        title: snapshot.data![index]['title'],
                        time: snapshot.data![index]['publishedAt'],
                        discription:
                            snapshot.data![index]['description'].toString(),
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }

                return Center(
                  child: CircularProgressIndicator(color: AppColors.primary),
                );
              },
            )),
      ),
    );
  }
}
