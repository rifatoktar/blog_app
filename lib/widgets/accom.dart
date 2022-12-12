import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ublog/theme/constants.dart';

class Accom extends StatelessWidget {
  final String imageLink;
  final String rate;
  final String hotelName;
  final String price;
  final String beginDate;
  final String lastDate;
  final String discountPrice;

  const Accom(
      {super.key,
      required this.imageLink,
      required this.rate,
      required this.hotelName,
      required this.price,
      required this.beginDate,
      required this.lastDate,
      required this.discountPrice});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          minimumSize: Size.zero,
          padding: EdgeInsets.zero,
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent),
      child: SizedBox(
        height: 160,
        width: 242,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 130,
                width: 242,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(imageLink), fit: BoxFit.cover)),
                child: Container(
                  height: 160,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      color: shadowColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/star.svg",
                          height: 13,
                          color: starColor,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          rate,
                          style: Constant.accHotelRate,
                        )
                      ]),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hotelName,
                        style: Constant.accHotel,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        '•',
                        style: Constant.accHotel,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Row(
                        children: [
                          Text(
                            price,
                            style: Constant.accHotel,
                          ),
                          Text(
                            "/day",
                            style: Constant.accHotelDay,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xffd9d9d9)),
                        child: Center(
                          child: Text(beginDate,
                              style: Constant.accHotelDate1,
                              textAlign: TextAlign.center),
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      SvgPicture.asset(
                        "assets/icons/line1.svg",
                        color: Colors.black.withOpacity(.5),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            discountPrice,
                            style: Constant.accHotel,
                          ),
                          Text(
                            "/day",
                            style: Constant.accHotelDay,
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: primaryColor),
                            child: Center(
                              child: Text(lastDate,
                                  style: Constant.accHotelDate2,
                                  textAlign: TextAlign.center),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )
            ]),
      ),
    );
  }
}
