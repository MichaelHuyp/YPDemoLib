//
//  YPViewController.m
//  YPDemoLib
//
//  Created by 胡云鹏 on 10/09/2018.
//  Copyright (c) 2018 胡云鹏. All rights reserved.
//

#import "YPViewController.h"
#import "NSString+DEAdd.h"
#import "YPImageVc.h"
#import "YPLoginVc.h"
#import "DEVc.h"

@interface YPViewController ()

@end

@implementation YPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
//    YPImageVc YPLoginVc
    YPLoginVc *vc = [YPLoginVc new];
                     
    [self.navigationController pushViewController:vc animated:YES];
}

@end
