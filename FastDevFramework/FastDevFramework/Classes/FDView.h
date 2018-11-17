//
//  FDView.h
//  FastDevFramework
//
//  Created by mao on 2018/11/17.
//  Copyright © 2018 Vipshop Holdings Limited. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FDDocument;

NS_ASSUME_NONNULL_BEGIN

@interface FDView : UIView
- (instancetype)initWithDocument:(FDDocument *)document;
@end

NS_ASSUME_NONNULL_END
