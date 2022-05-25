import 'package:flutter/foundation.dart';
import 'package:places_app/models/place_model.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items => _items;
}