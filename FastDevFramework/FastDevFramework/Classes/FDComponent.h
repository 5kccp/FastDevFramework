//
//  FDComponent.h
//  FastDevFramework
//
//  Created by mao on 2018/11/18.
//  Copyright © 2018 Vipshop Holdings Limited. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FDComponent : NSObject
@property (nonatomic, strong) NSString *identifier;
@property (nonatomic, strong) NSMutableArray *children;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSMutableDictionary *attributes;
@end

NS_ASSUME_NONNULL_END
