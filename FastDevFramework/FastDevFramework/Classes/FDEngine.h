//
//  FDEngine.h
//  FastDevFramework
//
//  Created by mao on 2018/11/17.
//  Copyright © 2018 Vipshop Holdings Limited. All rights reserved.
//

#import <Foundation/Foundation.h>
@class FDDocument;
NS_ASSUME_NONNULL_BEGIN

@interface FDEngine : NSObject
+ (FDEngine*)sharedInstance;
- (FDDocument*)documentWithData:(NSDictionary*)data template:(NSString*)tpl;
@end

NS_ASSUME_NONNULL_END
