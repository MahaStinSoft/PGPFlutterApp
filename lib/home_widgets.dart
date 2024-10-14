import 'package:flutter/material.dart';
import 'package:flutterapp/widgets/common/download_service.dart';

class DownloadExample extends StatelessWidget {
  final downloadService = DownloadService();
  final TextEditingController urlController = TextEditingController();
  final TextEditingController fileNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Download Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: urlController,
              decoration: InputDecoration(
                labelText: 'File URL',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: fileNameController,
              decoration: InputDecoration(
                labelText: 'File Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (urlController.text.isNotEmpty &&
                    fileNameController.text.isNotEmpty) {
                  downloadService.downloadFile(
                      urlController.text, fileNameController.text);
                } else {
                  print("Please enter both URL and filename.");
                }
              },
              child: Text("Download File"),
            ),
          ],
        ),
      ),
    );
  }
}
