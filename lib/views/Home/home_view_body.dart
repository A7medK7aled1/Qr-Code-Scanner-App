import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/QRScan/qr_code_scan.dart';
import 'package:flutter_application_1/views/QRcodegenerator/qr_code_generator.dart';

import 'widgets/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomElvetedButton(
                    text: "Scan QR Code",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const QrCodeScan()));
                    },
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CustomElvetedButton(
                    text: "Generate QR Code",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const QrCodeGenerator()));
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomElvetedButton extends StatelessWidget {
  const CustomElvetedButton({
    super.key,
    this.onPressed,
    required this.text,
  });

  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
