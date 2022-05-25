import 'package:flutter/material.dart';
import 'package:places_app/widgets/image_input.dart';

class AddPlaceScreen extends StatefulWidget {
  static const String routeName = '/add_place_screen';
  const AddPlaceScreen({Key? key}) : super(key: key);

  @override
  State<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final TextEditingController titlecont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a place'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextField(
                      controller: titlecont,
                      decoration: const InputDecoration(
                        labelText: 'title'
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const ImageInput(),
                  ],
                ),
              ),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            label: const Text('add place'),
            icon: const Icon(Icons.add),
            style: ButtonStyle(
                elevation: MaterialStateProperty.all<double?>(0), backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).colorScheme.secondary)),
          ),
        ],
      ),
    );
  }
}
