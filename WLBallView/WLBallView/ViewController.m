//
//  ViewController.m
//  WLBallView
//
//  Created by administrator on 2017/6/16.
//  Copyright © 2017年 WL. All rights reserved.
//

#import "ViewController.h"
#import "WLBallView.h"
#import "WLBallTool.h"

@interface ViewController ()

@property (nonatomic, strong) NSArray * array;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.array = @[@"大师球",@"高级球",@"超级球",@"精灵球"];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    WLBallView * ballView = [[WLBallView alloc] initWithFrame:CGRectMake(0, 80, 50, 50) AndImageName:self.array[arc4random_uniform(4)]];
    [self.view addSubview:ballView];
    [ballView starMotion];
    
}

- (void)viewDidDisappear:(BOOL)animated {
    
    [super viewDidDisappear:animated];
    
    [[WLBallTool shareBallTool] stopMotionUpdates];
    
}

@end
