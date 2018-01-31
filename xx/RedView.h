//
//  RedView.h
//  xx
//
//  Created by QG on 2018/1/31.
//  Copyright © 2018年 xinxianzhizao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RedView : UIView

-(BOOL)setBackgroundColor:(UIColor *)color frame:(CGRect)frame;


-(BOOL)setBackgroundColor:(UIColor *)color int1:(int)int1;

-(BOOL)setBackgroundColor:(UIColor *)color value:(NSValue *)value;

-(BOOL)setStr:(NSString *)str num:(NSNumber *)num int:(int)int1 rect:(CGRect)rect;

@end
