import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/constants.dart';
import '../widgets/saved.dart';

class SavedTab extends StatefulWidget {
  const SavedTab({super.key});

  @override
  State<SavedTab> createState() => _SavedTabState();
}

class _SavedTabState extends State<SavedTab> {
  @override
  Widget build(BuildContext context) {
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
              flexibleSpace: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 220,
                    child: FlexibleSpaceBar(
                      title: Text(
                        "Saved",
                        style: Constant.mainHeader,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          "assets/icons/sort.svg",
                          height: 30,
                          color: iconColor2,
                        )),
                  )
                ],
              )),
          SliverFillRemaining(
            hasScrollBody: true,
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 24,
                ),
                Saved(
                  city: 'Amsterdam,NL',
                  imageLink:
                      'https://images.unsplash.com/photo-1596304601957-e0b3aca66ce4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80',
                  rate: '4.8',
                ),
                SizedBox(
                  height: 16,
                ),
                Saved(
                  city: 'Rome,IT',
                  imageLink:
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Colis%C3%A9e.JPG/1280px-Colis%C3%A9e.JPG',
                  rate: '4.7',
                ),
              ],
            )),
          )
        ],
      ),
    );
  }
}
