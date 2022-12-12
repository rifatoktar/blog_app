import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ublog/theme/constants.dart';
import 'package:ublog/widgets/city_more_detail.dart';
import 'package:ublog/widgets/header.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/accom.dart';
import '../widgets/carousel.dart';
import '../widgets/location.dart';
import '../widgets/transport.dart';

class City extends StatefulWidget {
  const City({super.key});

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  @override
  Widget build(BuildContext context) {
    const String url = 'https://en.wikipedia.org/wiki/Berlin';
    final Uri urlNew = Uri.parse(url);
    return Scaffold(
      backgroundColor: bgColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            floating: false,
            expandedHeight: 120,
            elevation: 0,
            pinned: true,
            backgroundColor: bgColor,
            flexibleSpace: Container(
              padding: const EdgeInsets.only(top: 20),
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: SvgPicture.asset(
                        "assets/icons/arrow-left.svg",
                        height: 24,
                        color: iconColor2,
                      )),
                ),
                SizedBox(
                  width: 200,
                  child: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text(
                      "Berlin",
                      style: Constant.mainHeader,
                    ),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                  child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "assets/icons/share.svg",
                        height: 24,
                        color: iconColor2,
                      )),
                ),
              ]),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 180,
                    color: bgColor,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: const Carousel()),
                const SizedBox(
                  height: 25,
                ),
                const Location(
                  city: 'Berlin,GR',
                  rate: '4.8 (8000+)',
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 185,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Berlin is the capital and largest city of Germany by both area and population. Its 3.6 million inhabitants make it the European Union's most populous city, according to population within city limits. One of Germany's sixteen constituent states, Berlin is surrounded by the State of Brandenburg and contiguous with Potsdam, Brandenburg's capital. Berlin's urban area, which has a population of around 4.5 million, is the second most populous urban area in Germany after the Ruhr. The Berlin-Brandenburg capital region has around 6.2 million inhabitants and is Germany's third-largest metropolitan region after the Rhine-Ruhr and Rhine-Main regions.",
                          style: Constant.cityDetailText,
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            launchUrl(urlNew);
                          },
                          child: Text(
                            "For more information",
                            style: Constant.textButton,
                          ),
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CityMoreDetail(),
                const SizedBox(
                  height: 20,
                ),
                const Header(header: "Accomodation"),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 160,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Accom(
                        imageLink:
                            'https://images.unsplash.com/photo-1596274691173-9c5195e5e84c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1146&q=80',
                        rate: '4.9 (750+)',
                        beginDate: '4 Dec',
                        discountPrice: '62 €',
                        hotelName: 'Berlin Hotel',
                        lastDate: '20 Dec',
                        price: '65 €',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Accom(
                        imageLink:
                            'https://images.unsplash.com/photo-1610561537285-280dbb01f62f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
                        rate: '4.8 (500+)',
                        beginDate: '4 Dec',
                        discountPrice: '65 €',
                        hotelName: 'Zero Hotel',
                        lastDate: '20 Dec',
                        price: '70 €',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Header(header: "Transport"),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 133,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Transport(
                        firm: "assets/icons/luft.svg",
                        beginDate: '4 Dec.',
                        city1: 'Bern',
                        city2: 'Berlin',
                        lastDate: '20 Dec.',
                        price: '30 €',
                        firmColor: luftColor,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Transport(
                        firm: "assets/icons/turk.svg",
                        beginDate: '4 Dec.',
                        city1: 'Bern',
                        city2: 'Berlin',
                        lastDate: '20 Dec.',
                        price: '25 €',
                        firmColor: turkColor,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Transport(
                        firm: "assets/icons/turk.svg",
                        beginDate: '4 Dec.',
                        city1: 'Bern',
                        city2: 'Berlin',
                        lastDate: '20 Dec.',
                        price: '25 €',
                        firmColor: turkColor,
                      ),
                    ],
                  ),
                ),
              ],
            )),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.white.withOpacity(.2),
          Colors.white.withOpacity(.7),
          Colors.white
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  shadowColor: Colors.transparent,
                  backgroundColor: Colors.transparent),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                margin: const EdgeInsets.symmetric(horizontal: 16),
                height: 62,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: primaryColor),
                child: SvgPicture.asset(
                  "assets/icons/bookmark.svg",
                  color: iconColor1,
                ),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  shadowColor: Colors.transparent,
                  backgroundColor: Colors.transparent),
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  height: 62,
                  width: 255,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: primaryColor),
                  child: Center(
                    child: Text(
                      "More discover",
                      style: Constant.moreDiscover,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
