import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_qiyu_demo/flutter_qiyu_demo.dart';
import 'package:flutter_qiyu_demo/flutter_qiyu_demo_platform_interface.dart';
import 'package:flutter_qiyu_demo/flutter_qiyu_demo_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterQiyuDemoPlatform
    with MockPlatformInterfaceMixin
    implements FlutterQiyuDemoPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterQiyuDemoPlatform initialPlatform = FlutterQiyuDemoPlatform.instance;

  test('$MethodChannelFlutterQiyuDemo is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterQiyuDemo>());
  });

  test('getPlatformVersion', () async {
    FlutterQiyuDemo flutterQiyuDemoPlugin = FlutterQiyuDemo();
    MockFlutterQiyuDemoPlatform fakePlatform = MockFlutterQiyuDemoPlatform();
    FlutterQiyuDemoPlatform.instance = fakePlatform;

    expect(await flutterQiyuDemoPlugin.getPlatformVersion(), '42');
  });
}
