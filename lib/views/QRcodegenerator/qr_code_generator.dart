import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/Home/home_view_body.dart';
import 'package:flutter_application_1/views/Home/widgets/custom_app_bar.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodeGenerator extends StatefulWidget {
  const QrCodeGenerator({super.key});

  @override
  State<QrCodeGenerator> createState() => _QrCodeGeneratorState();
}

class _QrCodeGeneratorState extends State<QrCodeGenerator> {
  TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: "QR Code Generator",
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (textEditingController.text.isNotEmpty)
                  QrImageView(
                    data: textEditingController.text,
                    version: QrVersions.auto,
                    size: 200.0,
                  ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    controller: textEditingController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      hintText: 'Enter text to generate QR code',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomElvetedButton(
                    text: "Generate QR Code",
                    onPressed: () {
                      setState(() {});
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
