import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ublog/theme/constants.dart';
import 'package:ublog/widgets/discover_country.dart';

import '../widgets/discover_city.dart';
import '../widgets/header.dart';

class DiscoverTab extends StatefulWidget {
  const DiscoverTab({super.key});

  @override
  State<DiscoverTab> createState() => _DiscoverTabState();
}

class _DiscoverTabState extends State<DiscoverTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: bgColor,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.network(
            "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
            height: 50.0,
            width: 50.0,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/category.svg",
                height: 24,
                color: iconColor2,
              ))
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 36,
              ),
              Container(
                margin: const EdgeInsets.only(left: 16),
                child: Text(
                  "Where would you \nwant to go?",
                  style: Constant.mainHeader,
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffd9d9d9)),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search city, country...',
                        hintStyle: Constant.searchText,
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            "assets/icons/search.svg",
                            height: 24,
                            color: iconColor2,
                          ),
                        )),
                    cursorColor: primaryColor,
                    textInputAction: TextInputAction.done,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Header(
                header: 'Discover new cities',
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 295,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child:
                    ListView(scrollDirection: Axis.horizontal, children: const [
                  DiscoverCity(
                    imageLink:
                        'https://images.unsplash.com/photo-1525218291292-e46d2a90f77c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
                    city: 'Paris,FR',
                    rate: '4.9',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  DiscoverCity(
                      imageLink:
                          "https://images.unsplash.com/photo-1597932552386-ad91621e4c8a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                      city: "Berlin,GR",
                      rate: "4.8"),
                  SizedBox(
                    width: 16,
                  ),
                  DiscoverCity(
                    imageLink:
                        'https://images.unsplash.com/photo-1525218291292-e46d2a90f77c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
                    city: 'Paris,FR',
                    rate: '4.9',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  DiscoverCity(
                      imageLink:
                          "https://images.unsplash.com/photo-1597932552386-ad91621e4c8a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                      city: "Berlin,GR",
                      rate: "4.8")
                ]),
              ),
              const SizedBox(
                height: 30,
              ),
              const Header(
                header: 'Discover new countries',
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 295,
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                child:
                    ListView(scrollDirection: Axis.horizontal, children: const [
                  DiscoverCountry(
                      imageLink:
                          "https://images.unsplash.com/photo-1503917988258-f87a78e3c995?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                      country: "France",
                      rate: "4.9"),
                  SizedBox(
                    width: 16,
                  ),
                  DiscoverCountry(
                      imageLink:
                          "https://images.unsplash.com/photo-1569530593440-e48dc137f7d0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                      country: "Turkey",
                      rate: "4.9"),
                  SizedBox(
                    width: 16,
                  ),
                  DiscoverCountry(
                      imageLink:
                          "https://images.unsplash.com/photo-1503917988258-f87a78e3c995?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                      country: "France",
                      rate: "4.9"),
                  SizedBox(
                    width: 16,
                  ),
                  DiscoverCountry(
                      imageLink:
                          "https://images.unsplash.com/photo-1569530593440-e48dc137f7d0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                      country: "Turkey",
                      rate: "4.9"),
                ]),
              ),
            ]),
      )),
    );
  }
}
