import 'package:flutter/services.dart';

import '../../flutter_geofire_firestore_platform_interface.dart';

/// An implementation of [FlutterGeofireFirestorePlatform] that uses method channels.
class MethodChannelFlutterGeofireFirestore
    extends FlutterGeofireFirestorePlatform {
  /// The method channel used to interact with the native platform.
  static const _methodChannel = MethodChannel('flutter_geofire_firestore');

  @override
  Future<List<GeoQueryBounds>> getGeoHashQueryBounds() async {
    final message =
        await _methodChannel.invokeMethod<List>('getGeoHashQueryBounds');
    return MethodChannelMessageParser.parseToGeoQueryBounds(message!);
  }
}
