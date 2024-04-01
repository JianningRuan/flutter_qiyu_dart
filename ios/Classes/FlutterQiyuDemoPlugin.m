#import "FlutterQiyuDemoPlugin.h"
#import <UIKit/UIKit.h>
#import <NIMSDK/NIMSDK.h>
#import <QYSDK/QYSDK.h>
@implementation FlutterQiyuDemoPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"flutter_qiyu_demo"
            binaryMessenger:[registrar messenger]];
  FlutterQiyuDemoPlugin* instance = [[FlutterQiyuDemoPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getPlatformVersion" isEqualToString:call.method]) {
    result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
