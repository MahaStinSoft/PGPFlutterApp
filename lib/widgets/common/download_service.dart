// lib/download_service.dart
import 'dart:io' as io;
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:html' as html; // Import for web downloading

class DownloadService {
  Future<void> downloadFile(String fileUrl, String filename) async {
    if (kIsWeb) {
      // Web-specific download
      final anchor = html.AnchorElement(href: fileUrl)
        ..setAttribute('download', filename)
        ..click();
    } else {
      // Mobile-specific download
      await requestPermission();
      Dio dio = Dio();
      var directory = await getApplicationDocumentsDirectory();
      String savePath = "${directory.path}/$filename";

      await dio.download(fileUrl, savePath,
          onReceiveProgress: (received, total) {
        if (total != -1) {
          print("Downloading: ${(received / total * 100).toStringAsFixed(0)}%");
        }
      });

      print("Download completed: $savePath");
    }
  }

  Future<void> requestPermission() async {
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      await Permission.storage.request();
    }
  }
}
