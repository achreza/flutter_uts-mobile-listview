import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts_mobile/app/data/models/constants/constant.dart';
import 'package:uts_mobile/app/data/models/crypto_model.dart';
import 'package:uts_mobile/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';
import '../widget/cards/crypto_card.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          'Crypto',
          style: style,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('List of Crypto Currencies',
                  style: GoogleFonts.montserrat(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600)),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: controller.datas.length,
                itemBuilder: (context, index) => CryptoCard(
                  data: controller.datas[index],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
