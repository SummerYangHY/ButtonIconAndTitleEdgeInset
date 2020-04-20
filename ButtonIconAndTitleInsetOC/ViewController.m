//
//  ViewController.m
//  ButtonIconAndTitleInsetOC
//
//  Created by Summer on 2019/10/18.
//  Copyright © 2019 Summer. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+extension.h"
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton * leftButton = [[UIButton alloc]initWithFrame:CGRectMake(18, 100, 120, 60)];
    [leftButton setImageAndTitleWithImageStr:@"redcopy" withTitle:@"图片在左" withIconLocationType:Positionleft withspace:8];
    [leftButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.view addSubview:leftButton];

    UIButton * rightButton = [[UIButton alloc]initWithFrame:CGRectMake(UIScreen.mainScreen.bounds.size.width-18-120, 100, 120, 60)];
    [rightButton setImageAndTitleWithImageStr:@"redcopy" withTitle:@"图片在右" withIconLocationType:PositionRight withspace:8];
    [rightButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.view addSubview:rightButton];
    
    

}


@end
