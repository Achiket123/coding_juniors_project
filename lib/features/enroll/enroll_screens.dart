import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:project_1/globals/color_pallete.dart';
import 'package:project_1/globals/constants.dart';

class EnrollScreens extends StatelessWidget {
  const EnrollScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 222, 222, 222),
      body: Stack(
        children: [_paymentSuccess(), _paymentCheck(), _paymentDone()],
      ),
    );
  }

  Align _paymentDone() {
    return Align(
      alignment: const Alignment(1, 0.85),
      child: Container(
        width: Constants.sWidth,
        height: Constants.sHeight / 12,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: ColorPallete.theme, borderRadius: BorderRadius.circular(10)),
        child: const Center(
          child: Text(
            "Done",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Align _paymentCheck() {
    return Align(
      alignment: const Alignment(0, -0.70),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
                color: const Color.fromARGB(255, 222, 222, 222), width: 15),
            shape: BoxShape.circle),
        child: const CircleAvatar(
          radius: 50,
          backgroundColor: Color.fromARGB(255, 84, 237, 191),
          child: Icon(
            Icons.check,
            color: Colors.white,
            size: 80,
          ),
        ),
      ),
    );
  }

  Align _paymentSuccess() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        // height: Constants.sHeight / 1.8,
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: SizedBox(
          height: Constants.sHeight / 1.7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Payment Success",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    Text(
                      "\$ 35.00",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 32, 192, 107)),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                    color: const Color.fromARGB(255, 240, 239, 239)),
                child: const Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.red,
                      ),
                      title: Text("Christana Amandla"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Adobe Xd Editing Course",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            title: Text(
                              "ID:Transcription",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            subtitle: Text(
                              "TA11231PW",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text(
                              "Invoice Date",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            subtitle: Text(
                              "Nov 14,2023",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: BarcodeWidget(
                  height: Constants.sHeight / 15,
                  data: "Hello World!!",
                  barcode: Barcode.code128(),
                  drawText: false,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
