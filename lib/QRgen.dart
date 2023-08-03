import 'dart:ui';

import 'package:custom_qr_generator/custom_qr_generator.dart';
import 'package:flutter/material.dart';
class QRgen extends StatelessWidget {
  String name='';
  int age=0;
  String email='';
  String mobileNo='';
  String em;


  QRgen({required this.em,
    required this.name,required this.age,required this.email,required this.mobileNo,});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR code',
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('QR COde'),
        ),
        body: Center(
          child: CustomPaint(
            painter: QrPainter(
                data: name+" "+email+" "+mobileNo,
                options: const QrOptions(
                    shapes: QrShapes(
                        darkPixel: QrPixelShapeRoundCorners(
                            cornerFraction: .5
                        ),
                        frame: QrFrameShapeRoundCorners(
                            cornerFraction: .25
                        ),
                        ball: QrBallShapeRoundCorners(
                            cornerFraction: .25
                        )
                    ),
                    colors: QrColors(
                        dark: QrColorLinearGradient(
                            colors: [
                              Color.fromARGB(255, 255, 0, 0),
                              Color.fromARGB(255, 0, 0, 255),
                            ],
                            orientation: GradientOrientation.leftDiagonal
                        )
                    )
                )),
            size: const Size(350, 350),
          ),
        ),
      ),
    );
  }
}