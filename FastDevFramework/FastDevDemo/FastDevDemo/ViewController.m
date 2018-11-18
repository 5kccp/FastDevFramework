//
//  ViewController.m
//  FastDevDemo
//
//  Created by mao on 2018/11/17.
//  Copyright © 2018 Vipshop Holdings Limited. All rights reserved.
//

#import "ViewController.h"
#import <FastDevFramework/FastDevFramework.h>
@interface ViewController ()
@property (nonatomic, strong) FDView *fdView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSData *data = [[NSData alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"data" ofType:@"json"]];
    NSDictionary *dic =  [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
    NSString *tpl = [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"test" ofType:@"xml"] encoding:NSUTF8StringEncoding error:nil];
    FDDocument *doc = [[FDEngine sharedInstance] documentWithData:dic template:tpl];
    self.fdView = [[FDView alloc] initWithDocument:doc];
    
    // Do any additional setup after loading the view, typically from a nib.
}


@end
