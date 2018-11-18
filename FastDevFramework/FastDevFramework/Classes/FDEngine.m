//
//  FDEngine.m
//  FastDevFramework
//
//  Created by mao on 2018/11/17.
//  Copyright © 2018 Vipshop Holdings Limited. All rights reserved.
//

#import "FDEngine.h"
#import <JavaScriptCore/JavaScriptCore.h>
#import "FDDocument.h"

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
        
        NSURL *scriptUrl = [[NSBundle bundleForClass:[self class]] URLForResource:@"handlebars" withExtension:@"js"];
        NSString *script = [NSString stringWithContentsOfURL:scriptUrl encoding:NSUTF8StringEncoding error:nil];
        [_jsCtx evaluateScript:script];
        [_jsCtx evaluateScript:@"function getFdDocument(tpl, data) {var template = Handlebars.compile(tpl); var result = template(data);return result;}"];
    }
    return self;
}
- (FDDocument*)documentWithData:(NSDictionary*)data template:(NSString*)tpl{
    
    JSValue *template = _jsCtx[@"getFdDocument"];
    JSValue *value = [template callWithArguments:@[[tpl copy], [data copy]]];
    NSString *aString = [value toString];
    FDDocument *fdDocument = [[FDDocument alloc] initWithString:aString];
    return fdDocument;
}
@end
