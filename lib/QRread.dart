// import 'package:flutter/material.dart';
// import 'package:qrscan/qrscan.dart' as scanner;
// import 'package:flutter/services.dart';
//
//
//
//
// class QRread extends StatefulWidget {
//   @override
//   _QRread createState() => _QRread();
// }
//
// class _QRread extends State<QRread> {
//   String result = "Hello World...!";
//   Future _scanQR() async {
//     try {
//       String cameraScanResult = await scanner.scan();
//       setState(() {
//         result = cameraScanResult; // setting string result with cameraScanResult
//         print(result);
//       });
//     } on PlatformException catch (e) {
//       print(e);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("QR Scanner Example In Flutter"),
//       ),
//       body: Center(
//         child: Text(result), // Here the scanned result will be shown
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//           icon: Icon(Icons.camera_alt),
//           onPressed: () {
//             _scanQR(); // calling a function when user click on button
//           },
//           label: Text("Scan")),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//     );
//   }
// }