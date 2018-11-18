//
//  FDDocument.m
//  FastDevFramework
//
//  Created by mao on 2018/11/17.
//  Copyright © 2018 Vipshop Holdings Limited. All rights reserved.
//

#import "FDDocument.h"
#import <KissXML/KissXML.h>
#import "FDComponent.h"

@interface FDDocument ()
@property (nonatomic, strong) DDXMLDocument *xmlDocument;
@end
@implementation FDDocument
- (instancetype)initWithString:(NSString*)aString{
    self = [super init];
    if (self) {
        _xmlDocument = [[DDXMLDocument alloc] initWithXMLString:aString options:0 error:nil];
    }
    return nil;
}
@end
