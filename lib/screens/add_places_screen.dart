import 'package:favorite_places/model/place.dart';
import 'package:favorite_places/providers/user_places.dart';
import 'package:favorite_places/widgets/image_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPlacesScreen extends ConsumerStatefulWidget {
  const AddPlacesScreen({super.key});

  @override
  ConsumerState<AddPlacesScreen> createState() => _AddPlacesScreenState();
}

class _AddPlacesScreenState extends ConsumerState<AddPlacesScreen> {
  final _titlecontroller = TextEditingController();

  void _savePlace() {
    final title = _titlecontroller.text;

    if (title.isEmpty) {
      return;
    }
    ref.read(userPlacersProvider.notifier).addPlace(Place(title: title));
    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _titlecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Adding New Places",
          style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              controller: _titlecontroller,
              decoration: InputDecoration(labelText: 'Title', border: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)), ),
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Theme.of(context).colorScheme.primary),
            ),
            SizedBox(height: 12),
            ImageInput(),
            SizedBox(height: 12,),
            ElevatedButton.icon(
              onPressed: _savePlace,
              label: Text("Add"),
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
