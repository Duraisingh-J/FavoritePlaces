import 'package:flutter/material.dart';

class AddPlacesScreen extends StatefulWidget {
  const AddPlacesScreen({super.key});

  @override
  State<AddPlacesScreen> createState() => _AddPlacesScreenState();
}

class _AddPlacesScreenState extends State<AddPlacesScreen> {
  final _titlecontroller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _titlecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: Icon(Icons.arrow_back_ios_new_sharp),
        // ),
        title: Text("Adding New Places", style: TextStyle(color: Theme.of(context).colorScheme.onSurface),),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(controller: _titlecontroller, decoration: InputDecoration(labelText: 'Title'),),
            SizedBox(height: 12,),
            ElevatedButton.icon(onPressed: () {}, label: Text("Add"), icon: Icon(Icons.add),),
          ],
        ),
      ),
    );
  }
}
