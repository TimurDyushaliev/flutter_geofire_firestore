import '../../flutter_geofire_firestore_platform_interface.dart';

abstract class MethodChannelMessageParser {
  static List<GeoQueryBounds> parseToGeoQueryBounds(List<dynamic> message) {
    final list = <GeoQueryBounds>[];

    for (final value in message) {
      value as Map<String, String>;
      final startHash = value['start_hash']!;
      final endHash = value['end_hash']!;
      list.add(GeoQueryBounds(startHash: startHash, endHash: endHash));
    }

    return list;
  }
}
