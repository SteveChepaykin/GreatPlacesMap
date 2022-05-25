import 'dart:io';
// import 'package:flutter/foundation.dart';

class Place {
  late final String id;
  late final String title;
  late final PlaceLocation location;
  late final File image;

  Place({
    required this.id,
    required this.title,
    required this.image,
    required this.location,
  });
}

class PlaceLocation {
  late final double latitude;
  late final double longitude;
  late final String? adress;

  PlaceLocation({
    required this.latitude,
    required this.longitude,
    this.adress,
  });
}