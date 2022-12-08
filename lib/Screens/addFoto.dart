import 'dart:html';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class addFoto extends StatelessWidget {
  const addFoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Row(
        children: [
          ElevatedButton(
              onPressed: () {
                PickImage();
              },
              child: const Icon(Icons.add))
        ],
      ),
    ]));
  }

  void PickImage() async {
    var image = await ImagePicker.pickImage (source: ImageSource.gallery);
    setState(() {
      _image=image;
    })
  }
}
