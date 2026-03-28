import 'package:favorite_places/model/place.dart';
import 'package:flutter/material.dart';

class PlaceDetails extends StatelessWidget {
  const PlaceDetails({super.key, required this.place});
  final Place place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipRect(clipBehavior: Clip.hardEdge, child: Image.file(place.image, width: double.infinity, height: 300, fit: BoxFit.cover,)),
          Positioned(top: 50, left: 10, child: Text("${place.title}", style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Theme.of(context).primaryColorDark)),),
        ],
      )
    );
  }
}
