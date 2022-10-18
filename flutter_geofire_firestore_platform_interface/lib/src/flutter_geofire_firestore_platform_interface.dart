import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'method_channel/flutter_geofire_firestore_method_channel.dart';
import 'models/geo_query_bounds.dart';

abstract class FlutterGeofireFirestorePlatform extends PlatformInterface {
  /// Constructs a FlutterGeofireFirestorePlatform.
  FlutterGeofireFirestorePlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterGeofireFirestorePlatform _instance =
      MethodChannelFlutterGeofireFirestore();

  /// The default instance of [FlutterGeofireFirestorePlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterGeofireFirestore].
  static FlutterGeofireFirestorePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterGeofireFirestorePlatform] when
  /// they register themselves.
  static set instance(FlutterGeofireFirestorePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<List<GeoQueryBounds>> getGeoHashQueryBounds() {
    throw UnimplementedError(
        'getGeoHashQueryBounds() has not been implemented');
  }
}
