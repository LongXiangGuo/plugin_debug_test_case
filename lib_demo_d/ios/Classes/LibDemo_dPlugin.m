#import "LibDemo_dPlugin.h"
#import "StaticFrameworkA.h"

@implementation LibDemo_dPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"lib_demo_d"
            binaryMessenger:[registrar messenger]];
  LibDemo_dPlugin* instance = [[LibDemo_dPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
    StaticFrameworkA* instanceA = [[StaticFrameworkA alloc]init];
  [instanceA show];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getPlatformVersion" isEqualToString:call.method]) {
    result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
