import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_application/backend/functions.dart';
import 'package:news_application/utils/colors.dart';

class SearchBars extends StatefulWidget {
  const SearchBars({Key? key}) : super(key: key);
  static TextEditingController searchcontrollers =
      TextEditingController(text: '');

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBars> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 50,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                color: AppColors.grey, borderRadius: BorderRadius.circular(50)),
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 10),
                Expanded(
                    child: TextField(
                  controller: SearchBars.searchcontrollers,
                  decoration: InputDecoration(
                      hintText: 'Search a Keyword or a Phrase',
                      hintStyle: GoogleFonts.lato(),
                      border: InputBorder.none),
                ))
              ],
            )),
          ),
        ),
        InkWell(
          onTap: () {
            FocusScope.of(context).unfocus();
            fetchnews();
          },
          child: Container(
            width: 450,
            height: 50,
            decoration:
                BoxDecoration(color: AppColors.grey, shape: BoxShape.circle),
            child: Icon(
              Icons.search,
              color: AppColors.white,
            ),
          ),
        ),
        SizedBox(width: 10)
      ],
    );
  }
}
