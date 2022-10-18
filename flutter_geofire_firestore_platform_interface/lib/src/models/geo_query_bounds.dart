import 'package:flutter/foundation.dart';

@immutable
class GeoQueryBounds {
  const GeoQueryBounds({required this.startHash, required this.endHash});

  final String startHash;
  final String endHash;
}
