import 'dart:developer';

import 'package:barcode_scan2/platform_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/views/Home/home_view_body.dart';
import 'package:flutter_application_1/views/Home/widgets/custom_app_bar.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class QrCodeScan extends StatefulWidget {
  const QrCodeScan({super.key});

  @override
  State<QrCodeScan> createState() => _QrCodeScanState();
}

class _QrCodeScanState extends State<QrCodeScan> {
  var data;

  Future<void> scanBarcode() async {
    try {
      data = await BarcodeScanner.scan();

      if (data.rawContent.isNotEmpty) {
        print('Scanned Data: ${data.rawContent}');
      } else {
        print('No barcode scanned.');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: "QR Code Scanner"),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(data),
              const SizedBox(
                height: 20,
              ),
              CustomElvetedButton(
                  text: "Scan QR Code",
                  onPressed: () {
                    setState(() {
                      scanBarcode();
                    });
                  }),
            ],
          ),
        ));
  }
}
