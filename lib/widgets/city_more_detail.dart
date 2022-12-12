import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ublog/theme/constants.dart';

class CityMoreDetail extends StatelessWidget {
  const CityMoreDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  shadowColor: Colors.transparent,
                  backgroundColor: Colors.transparent),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/voice.svg",
                    height: 20,
                    color: cityMoreDetail,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Concerts",
                    style: Constant.cityDetailAct,
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  shadowColor: Colors.transparent,
                  backgroundColor: Colors.transparent),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/bag.svg",
                    height: 20,
                    color: cityMoreDetail,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Noel shopping",
                    style: Constant.cityDetailAct,
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  shadowColor: Colors.transparent,
                  backgroundColor: Colors.transparent),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/discovery2.svg",
                    height: 20,
                    color: cityMoreDetail,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Social activities",
                    style: Constant.cityDetailAct,
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  shadowColor: Colors.transparent,
                  backgroundColor: Colors.transparent),
              child: Container(
                height: 37,
                width: 37,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: cityMoreDetail2,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    "assets/icons/arrow-right-2.svg",
                    width: 20,
                    color: iconColor1,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
