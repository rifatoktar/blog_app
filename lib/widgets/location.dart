import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ublog/theme/constants.dart';

class Location extends StatelessWidget {
  final String city;
  final String rate;
  const Location({super.key, required this.city, required this.rate});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/location.svg",
                  height: 18,
                  color: iconColor2,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  city,
                  style: Constant.cityDetail,
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/star.svg",
                  height: 15,
                  color: starColor,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  rate,
                  style: Constant.cityDetailRate,
                )
              ],
            )
          ]),
    );
  }
}
