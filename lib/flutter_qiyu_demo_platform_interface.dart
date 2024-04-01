import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_qiyu_demo_method_channel.dart';

abstract class FlutterQiyuDemoPlatform extends PlatformInterface {
  /// Constructs a FlutterQiyuDemoPlatform.
  FlutterQiyuDemoPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterQiyuDemoPlatform _instance = MethodChannelFlutterQiyuDemo();

  /// The default instance of [FlutterQiyuDemoPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterQiyuDemo].
  static FlutterQiyuDemoPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterQiyuDemoPlatform] when
  /// they register themselves.
  static set instance(FlutterQiyuDemoPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
