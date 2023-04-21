import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  File? imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Scan images',
          style: TextStyle(color: Colors.green),
        ),
        backgroundColor: Colors.green[50],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (imageFile != null)
              Container(
                width: 640,
                height: 480,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                      image: FileImage(imageFile!), fit: BoxFit.cover),
                  border: Border.all(
                      width: 8, color: Color.fromARGB(255, 154, 219, 154)),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              )
            else
              ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset('assets/images/15.png')),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () => getImage(source: ImageSource.camera),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green.shade50),
                      child: const Text('Capture Image',
                          style: TextStyle(fontSize: 18, color: Colors.green))),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green.shade50),
                      onPressed: () => getImage(source: ImageSource.gallery),
                      child: const Text('Select Image',
                          style: TextStyle(fontSize: 18, color: Colors.green))),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    imageFile = null;
                  });
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[50],
                    padding: EdgeInsets.only(left: 50, right: 50)),
                child: Text(
                  "reset",
                  style: TextStyle(color: Colors.green, fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }

  void getImage({required ImageSource source}) async {
    final file = await ImagePicker().pickImage(
        source: source,
        maxWidth: 640,
        maxHeight: 480,
        imageQuality: 100 //0 - 100
        );

    if (file?.path != null) {
      setState(() {
        imageFile = File(file!.path);
      });
    }
  }
}
