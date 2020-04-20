//
//  UIButton+extension.h
//  SanYaMusicFestiva
//
//  Created by Summer on 2019/10/12.
//  Copyright © 2019 WXHZ. All rights reserved.
//




#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef enum : NSUInteger {
    PositionTop,
    Positionleft,
    PositionBottom,
    PositionRight
} ButtonImagePosition;


@interface UIButton (extension)
-(void)setImageAndTitleWithImageStr:(NSString *)imageStr withTitle:(NSString *)title withIconLocationType:(ButtonImagePosition)type withspace:(CGFloat)space;
@end

NS_ASSUME_NONNULL_END
