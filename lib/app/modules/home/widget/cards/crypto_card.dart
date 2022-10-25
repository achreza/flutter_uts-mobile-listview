import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts_mobile/app/data/models/crypto_model.dart';
import 'package:uts_mobile/app/routes/app_pages.dart';

class CryptoCard extends StatelessWidget {
  final Crypto data;
  const CryptoCard({
    required this.data,
  });

  dataColor() => data.price > 1 ? Colors.green : Colors.red;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Container(
            height: 50, width: 50, child: Image.network(data.assetImage)),
        title: Text(data.name,
            style: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.w500)),
        subtitle: Text(data.id,
            style: GoogleFonts.montserrat(
                fontSize: 14, fontWeight: FontWeight.w300)),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "USD ${data.price.toString()}",
              style: GoogleFonts.montserrat(
                  fontSize: 12, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '${data.circulating_supply.toString()} Supply',
              style: GoogleFonts.montserrat(fontSize: 10, color: dataColor()),
            ),
          ],
        ),
        onTap: () => Get.toNamed(Routes.DETAIL_PAGE, arguments: data),
      ),
    );
  }
}
