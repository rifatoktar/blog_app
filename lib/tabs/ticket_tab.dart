import 'package:flutter/material.dart';

import '../theme/constants.dart';

class TicketTab extends StatefulWidget {
  const TicketTab({super.key});

  @override
  State<TicketTab> createState() => _TicketTabState();
}

class _TicketTabState extends State<TicketTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Tickets Tab",
          style: Constant.mainHeader,
        ),
      ),
    );
  }
}
