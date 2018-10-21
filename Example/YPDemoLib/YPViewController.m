//
//  YPViewController.m
//  YPDemoLib
//
//  Created by 胡云鹏 on 10/09/2018.
//  Copyright (c) 2018 胡云鹏. All rights reserved.
//

#import "YPViewController.h"
#import "NSString+DEAdd.h"
#import "LoadResourceDemoVc.h"

@interface YPViewController ()

@end

@implementation YPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    NSLog(@"%@",NSHomeDirectory());
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    LoadResourceDemoVc *vc = [LoadResourceDemoVc new];
    
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)demo
{
    //    NSBundle *bundle = [NSBundle bundleWithURL:[[NSBundle bundleForClass:NSClassFromString(@"YPLoginVc")] URLForResource:@"YPDemoLib" withExtension:@"bundle"]];
    //    YPLoginVc *vc = [[YPLoginVc alloc] initWithNibName:@"YPLoginVc" bundle:bundle];
    //    [self.navigationController pushViewController:vc animated:YES];

}

@end
