import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'file_downloader/file_downloader.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'File Downloader',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('File Downloader Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // Simulate file bytes (could be fetched or generated dynamically)
            Uint8List fileBytes = Uint8List.fromList(
                [0x89, 0x50, 0x4E, 0x47]); // PNG header as an example
            String fileName = 'example_file.png';

            downloadFile(fileBytes, fileName);
          },
          child: Text('Download File'),
        ),
      ),
    );
  }
}
