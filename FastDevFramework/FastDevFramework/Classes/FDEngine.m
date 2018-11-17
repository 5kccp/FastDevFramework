//
//  FDEngine.m
//  FastDevFramework
//
//  Created by mao on 2018/11/17.
//  Copyright © 2018 Vipshop Holdings Limited. All rights reserved.
//

#import "FDEngine.h"
#import <JavaScriptCore/JavaScriptCore.h>
@interface FDEngine ()
@property (nonatomic, strong) JSContext *jsCtx;
@end
@implementation FDEngine
+ (FDEngine*)sharedInstance{
    static dispatch_once_t onceToken;
    static FDEngine *engine;
    dispatch_once(&onceToken, ^{
        engine = [[FDEngine alloc] init];
    });
    return engine;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        _jsCtx = [[JSContext alloc] init];
        NSURL *scriptUrl = [[NSBundle mainBundle] URLForResource:@"handlebars" withExtension:@"js"]
        NSString *script = [NSString stringWithContentsOfURL:scriptUrl encoding:NSUTF8StringEncoding error:nil];
        [_jsCtx evaluateScript:script];
    }
    return self;
}
- (FDDocument*)documentWith:(id)data template:(id)tpl{
    return nil;
}
@end
