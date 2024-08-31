import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

class LocationManager extends ChangeNotifier {
  LocationManager._i();

  static LocationManager i = LocationManager._i();

  factory LocationManager() => i;

  AddressComponent? fetchedLocation;

  init() async {
    fetchedLocation = await getAddressFromGPS();
    notifyListeners();
  }

  // Location methods
  Future<AddressComponent?> getAddressFromGPS() async {
    try {
      bool hasPermission = await _checkAndRequestLocationPermission();
      if (!hasPermission) {
        Permission.location.request();
        return null;
      }

      Position position = await _getCurrentPosition();
      List<Placemark> placemarks = await _getPlacemarks(position);

      AddressComponent addressComponent =
          _createAddressComponent(position, placemarks.first);

      return addressComponent;
    } catch (e) {
      return null;
    }
  }

  Future<bool> _checkAndRequestLocationPermission() async {
    if (await Permission.location.isGranted) return true;

    PermissionStatus status = await Permission.location.request();
    if (status.isGranted) return true;

    if (status.isPermanentlyDenied) {
      Geolocator.openLocationSettings();
      return await Permission.location.status == PermissionStatus.granted;
    }

    _showLocationSettingsToast();
    return false;
  }

  void _showLocationSettingsToast() {
    Fluttertoast.showToast(
      msg: 'Enable location permission for better experience.',
      toastLength: Toast.LENGTH_LONG,
    );
  }

  Future<Position> _getCurrentPosition() async {
    final LocationSettings? locationSettings;

    if (Platform.isAndroid) {
      locationSettings = AndroidSettings(
        accuracy: LocationAccuracy.best,
      );
    } else if (Platform.isIOS) {
      locationSettings = AppleSettings(
        accuracy: LocationAccuracy.best,
      );
    } else {
      throw Exception('Location for this platform is unimplemented');
    }

    return await Geolocator.getCurrentPosition(
      locationSettings: locationSettings,
    );
  }

  Future<List<Placemark>> _getPlacemarks(Position position) async {
    return await placemarkFromCoordinates(
      position.latitude,
      position.longitude,
    );
  }

  AddressComponent _createAddressComponent(
      Position position, Placemark placemark) {
    return AddressComponent(
      address1: placemark.street ?? '',
      address2: placemark.thoroughfare ?? '',
      state: placemark.administrativeArea ?? '',
      country: placemark.country ?? '',
      city: placemark.locality ?? '',
      postalCode: placemark.postalCode ?? '',
      latitude: position.latitude.toString(),
      longitude: position.longitude.toString(),
      countryCode: placemark.isoCountryCode ?? '',
    );
  }

  Future<AddressComponent> decodeAddress({required String address}) async {
    try {
      List<Location> locations = await locationFromAddress(address);
      List<Placemark> placemarks = await placemarkFromCoordinates(
        locations.first.latitude,
        locations.first.longitude,
      );

      return _createAddressComponent(
        Position(
          latitude: locations.first.latitude,
          longitude: locations.first.longitude,
          timestamp: DateTime.now(),
          accuracy: 0,
          altitudeAccuracy: 0,
          headingAccuracy: 0,
          altitude: 0,
          heading: 0,
          speed: 0,
          speedAccuracy: 0,
        ),
        placemarks.first,
      );
    } catch (e) {
      rethrow;
    }
  }
}

class AddressComponent {
  String address1;
  String address2;
  String country;
  String state;
  String city;
  String postalCode;
  String latitude;
  String longitude;
  String countryCode;

  AddressComponent({
    required this.address1,
    required this.address2,
    required this.country,
    required this.state,
    required this.city,
    required this.postalCode,
    required this.latitude,
    required this.longitude,
    required this.countryCode,
  });
}
