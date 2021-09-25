import 'package:flutter/material.dart';
import 'package:lawan_covid19/styles/color.dart';
import 'package:lawan_covid19/styles/font_styles.dart';

class ListCovid extends StatelessWidget {
  const ListCovid(
      {Key? key,
      required this.title,
      required this.trailingText,
      required this.trailingColor})
      : super(key: key);

  final String title;
  final String trailingText;
  final Color trailingColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: titleTS,
              ),
              Text(
                trailingText,
                style: titleTS.copyWith(color: trailingColor),
              ),
            ],
          ),
          Divider(
            thickness: 1,
            color: blackColor,
          )
        ],
      ),
    );
  }
}
