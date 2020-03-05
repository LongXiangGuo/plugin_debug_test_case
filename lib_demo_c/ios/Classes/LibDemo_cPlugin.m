#import "LibDemo_cPlugin.h"
#import "StaticFrameworkA.h"

@implementation LibDemo_cPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"lib_demo_c"
            binaryMessenger:[registrar messenger]];
  LibDemo_cPlugin* instance = [[LibDemo_cPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
  StaticFrameworkA* instanceA =  [[StaticFrameworkA alloc]init];
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
