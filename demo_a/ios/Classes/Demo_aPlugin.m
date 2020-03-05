#import "Demo_aPlugin.h"
#import <AMapFoundationKit/AMapFoundationKit.h>
#import <MAMapKit/MAMapKit.h>

@implementation Demo_aPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"demo_a"
            binaryMessenger:[registrar messenger]];
  Demo_aPlugin* instance = [[Demo_aPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
 [[AMapServices sharedServices] setApiKey:@"api key"];
 [[MAMapView alloc]initWithFrame:CGRectZero];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getPlatformVersion" isEqualToString:call.method]) {
    result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
