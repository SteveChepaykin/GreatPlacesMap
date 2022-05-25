import 'dart:io';

import 'package:flutter/material.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({Key? key}) : super(key: key);

  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File? _storedImage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 200,
          height: 150,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
          ),
          child: _storedImage != null
              ? Image.file(
                  _storedImage!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                )
              : const Text('No image.', textAlign: TextAlign.center,),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: TextButton.icon(
            onPressed: () {},
            label: const Text('Teke picture'),
            icon: const Icon(Icons.camera),
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all<TextStyle>(
                TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
