
import 'flutter_qiyu_demo_platform_interface.dart';

class FlutterQiyuDemo {
  Future<String?> getPlatformVersion() {
    return FlutterQiyuDemoPlatform.instance.getPlatformVersion();
  }
}
