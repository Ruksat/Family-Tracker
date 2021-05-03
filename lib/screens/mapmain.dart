import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mapfollow/services/geolocator_service.dart';
import 'package:provider/provider.dart';
import 'package:mapfollow/screens/map.dart';

class MapMain extends StatelessWidget {
  final geoService = GeolocatorService();
  @override
  Widget build(BuildContext context) {
    return FutureProvider(
      create: (context) => geoService.getInitialLocation(),
      child: MaterialApp(
        title: 'Family Tracking',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Consumer<Position>(
          builder: (context, position, widget) {
            return (position != null)
                ? Map(position)
                : Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
