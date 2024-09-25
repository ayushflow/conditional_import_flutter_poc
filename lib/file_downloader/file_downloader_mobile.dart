import 'dart:typed_data';
import 'dart:io';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';

Future<void> downloadFile(Uint8List bytes, String fileName) async {
  final _file = XFile.fromData(bytes, name: fileName);

  await Share.shareXFiles(
    [
      _file,
    ],
  );
}
