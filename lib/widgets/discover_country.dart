import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../pages/city.dart';
import '../theme/constants.dart';

class DiscoverCountry extends StatelessWidget {
  final String imageLink;
  final String country;
  final String rate;
  const DiscoverCountry(
      {super.key,
      required this.imageLink,
      required this.country,
      required this.rate});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: Size.zero,
          padding: EdgeInsets.zero,
          elevation: 0,
          backgroundColor: bgColor),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const City()),
        );
      },
      child: Container(
          height: 295,
          width: 156,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: NetworkImage(imageLink), fit: BoxFit.cover)),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
                color: shadowColor, borderRadius: BorderRadius.circular(20)),
            child: Container(
              margin: const EdgeInsets.only(top: 245),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/icons/camera.svg",
                              height: 15,
                              color: iconColor1,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              country,
                              style: Constant.city,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
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
                              style: Constant.cityRate,
                            ),
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          "assets/icons/bookmark-fill.svg",
                          height: 15,
                          color: iconColor1,
                        ))
                  ]),
            ),
          )),
    );
  }
}
