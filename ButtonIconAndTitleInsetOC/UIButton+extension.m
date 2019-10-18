//
//  UIButton+extension.m
//  SanYaMusicFestiva
//
//  Created by Summer on 2019/10/12.
//  Copyright © 2019 WXHZ. All rights reserved.
//

#import "UIButton+extension.h"

@implementation UIButton (extension)

-(void)setImageAndTitleWithImageStr:(NSString *)imageStr withTitle:(NSString *)title withType:(ButtonImagePosition)type withspace:(CGFloat)space{
    [self setTitle:title forState:UIControlStateNormal];
    [self setImage:[UIImage imageNamed:imageStr] forState:UIControlStateNormal];
    CGFloat imageWith = self.imageView.frame.size.width;
    CGFloat imageHeight = self.imageView.frame.size.height;
    CGFloat lableWith = 0.0;
    CGFloat lableHeight = 0.0;
    lableWith = self.titleLabel.intrinsicContentSize.width;
    lableHeight = self.titleLabel.intrinsicContentSize.height;
    UIEdgeInsets imageEdgeinsets = UIEdgeInsetsZero;
    UIEdgeInsets labelEdgeInsets = UIEdgeInsetsZero;
    
    switch (type) {
        case PositionTop:
            imageEdgeinsets = UIEdgeInsetsMake( -lableHeight - space/2.0, 0, 0, -lableWith);
            labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith, -imageHeight-space/2.0, 0);
            break;
        case Positionleft:
            imageEdgeinsets = UIEdgeInsetsMake( 0, -space/2.0, 0, space/2.0);
            labelEdgeInsets = UIEdgeInsetsMake(0, space/2.0, 0 , -space/2.0);
            break;
        case PositionBottom:
            imageEdgeinsets = UIEdgeInsetsMake( 0, 0, -lableHeight-space/2.0, -lableWith);
            labelEdgeInsets = UIEdgeInsetsMake(-imageHeight-space/2.0, -imageWith, 0, 0);
            break;
        case PositionRight:
            imageEdgeinsets = UIEdgeInsetsMake( 0, lableWith+space/2.0, 0, -lableWith-space/2.0);
            labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith-space/2.0, 0, imageWith+space/2.0);
            break;
            
        default:
            break;
    }
    
    // 4. 赋值
         self.titleEdgeInsets = labelEdgeInsets;
         self.imageEdgeInsets = imageEdgeinsets;
}
@end
