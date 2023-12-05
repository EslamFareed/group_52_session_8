import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PickerScreen extends StatefulWidget {
  PickerScreen({super.key});

  @override
  State<PickerScreen> createState() => _PickerScreenState();
}

class _PickerScreenState extends State<PickerScreen> {
  XFile? file;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Picker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            file == null
                ? const Text("Please choose image")
                : CircleAvatar(
                    backgroundImage: FileImage(File(file!.path)),
                    radius: 100,
                  ),
            ElevatedButton(
              onPressed: () async {
                final picker = ImagePicker();
                file = await picker.pickImage(source: ImageSource.camera);

                // picker.pickMedia();

                setState(() {});
              },
              child: const Text("Pick Imaga"),
            )
          ],
        ),
      ),
    );
  }
}
