import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_application/components/components.dart';
import 'package:news_application/utils/colors.dart';
import 'package:news_application/utils/text.dart';
import 'package:url_launcher/url_launcher.dart';

void showMyBottomSheet(
    BuildContext context, String title, description, url, imageurl) {
  showBottomSheet(
      backgroundColor: AppColors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      elevation: 20,
      context: context,
      builder: (context) {
        return MyBottomSheetLayout(
          url: url,
          imageurl: imageurl,
          title: title,
          description: description,
        );
      });
}

_launchURL(String url) async {
  Uri uri = Uri.parse(url);
  try {
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could Not Launch $url';
    }
  } catch (e) {
    print('$e');
  }
}

class MyBottomSheetLayout extends StatelessWidget {
  final String url, imageurl, title, description;

  MyBottomSheetLayout(
      {required this.url,
      required this.imageurl,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          BottomSheetImage(imageurl: imageurl, title: title),
          Container(
            padding: EdgeInsets.all(10),
            child: modifiedTexts(
                text: description, size: 16, color: AppColors.white),
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                  text: 'Read Full Article',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      _launchURL(url);
                    },
                  style: GoogleFonts.lato(color: Colors.blue.shade400),
                ),
              ]))),
        ],
      ),
    );
  }
}
