import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts_mobile/app/data/models/constants/constant.dart';
import 'package:uts_mobile/app/modules/home/widget/charts/line_chart.dart';

import '../controllers/detail_page_controller.dart';

class DetailPageView extends GetView<DetailPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          controller.data.name,
          style: style,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Current Balance',
                style: GoogleFonts.montserrat(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.w700),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(controller.data.price.toString(),
                              style: GoogleFonts.montserrat(
                                  fontSize: 24,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(
                            width: 5,
                          ),
                          Text(controller.data.id,
                              style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('USD ' + controller.data.market_cap.toString(),
                              style: GoogleFonts.montserrat(
                                  fontSize: 11,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                              'Supply ' +
                                  controller.data.circulating_supply.toString(),
                              style: GoogleFonts.montserrat(
                                  fontSize: 11,
                                  color: Colors.green,
                                  fontWeight: FontWeight.w600)),
                        ],
                      )
                    ],
                  ),
                  Image.network(controller.data.assetImage,
                      height: 50, width: 50)
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 18),
                child: Row(
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.green)),
                        onPressed: () {},
                        child: Text('Buy')),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.red)),
                        onPressed: () {},
                        child: Text('Sell')),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.grey[100])),
                        onPressed: () {},
                        child: Text(
                          'Trade',
                          style: GoogleFonts.montserrat(
                              fontSize: 12,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                        )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 12),
                child: Text(
                  'Description',
                  style: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 2, bottom: 20),
                child: Flexible(
                    child: Text(
                  controller.data.description,
                  style: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                )),
              ),
              Text(
                'Line Graph',
                style: GoogleFonts.montserrat(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.w700),
              ),
              Container(
                margin: EdgeInsets.only(top: 24),
                width: double.infinity,
                height: 250,
                child: LineChartWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
