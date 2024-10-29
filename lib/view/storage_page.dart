import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class StoragePage extends StatefulWidget {
  const StoragePage({super.key});

  @override
  State<StoragePage> createState() => _StoragePageState();
}

class _StoragePageState extends State<StoragePage> {
  late File file;
  String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final ImagePicker picker = ImagePicker();
// Pick an image.
// final XFile? image = await picker.pickImage(source: ImageSource.gallery);
// Capture a photo.
          final XFile? photo =
              await picker.pickImage(source: ImageSource.camera);
          if (photo != null) {
            // print(photo.path);
            print(photo.name);
            file = File(photo.path);
            final storageRef = FirebaseStorage.instance.ref(photo.name);
            storageRef.putFile(file);
            Future.delayed(const Duration(seconds: 5), () async {
              imageUrl = await storageRef.getDownloadURL();
              print(imageUrl);
            });
          }
        },
        child: const Icon(
          Icons.image,
        ),
      ),
      body: Center(child: imageUrl != null ? Image.network(imageUrl!) : null),
    );
  }
}
