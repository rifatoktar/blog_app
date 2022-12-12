import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ublog/theme/constants.dart';

class Transport extends StatelessWidget {
  final String firm;
  final String beginDate;
  final String city1;
  final String city2;
  final String lastDate;
  final String price;
  final Color firmColor;
  const Transport(
      {super.key,
      required this.firm,
      required this.beginDate,
      required this.city1,
      required this.city2,
      required this.lastDate,
      required this.price,
      required this.firmColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          minimumSize: Size.zero,
          padding: EdgeInsets.zero,
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent),
      child: Container(
        height: 133,
        width: 156,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: firmColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              firm,
              height: 10,
              color: iconColor1,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 80,
                  width: 50,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          beginDate,
                          style: Constant.transDateCity,
                        ),
                        const Spacer(),
                        Text(
                          city1,
                          style: Constant.transDateCity,
                        ),
                      ]),
                ),
                const SizedBox(
                  width: 3,
                ),
                SizedBox(
                  height: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/airplane.svg",
                        height: 8,
                        color: iconColor1,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SvgPicture.asset(
                        "assets/icons/line2.svg",
                        width: 30,
                        color: iconColor1,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        price,
                        style: Constant.transMoney,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SvgPicture.asset(
                        "assets/icons/line2.svg",
                        width: 30,
                        color: iconColor1,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SvgPicture.asset(
                        "assets/icons/airplane2.svg",
                        height: 8,
                        color: iconColor1,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                Container(
                  height: 80,
                  width: 50,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          city2,
                          style: Constant.transDateCity,
                        ),
                        const Spacer(),
                        Text(
                          lastDate,
                          style: Constant.transDateCity,
                        ),
                      ]),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Learn more",
                  style: Constant.learnMore,
                ),
                const SizedBox(
                  width: 5,
                ),
                SvgPicture.asset(
                  "assets/icons/arrow-right.svg",
                  width: 12,
                  color: iconColor1,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
