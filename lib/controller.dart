import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';

class ScannerController extends GetxController{


String ScannedQrCode = '';


 Future<void> scanQr() async{
   try{
     ScannedQrCode = await FlutterBarcodeScanner.scanBarcode('#ff666', 'Cancel', true, ScanMode.QR);

     if(ScannedQrCode!="-1"){
       Get.snackbar('Notice', ScannedQrCode);
     }
   }
   on PlatformException
   {
     Get.snackbar("Error", "Something is wrong");
   }
 }



  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

}