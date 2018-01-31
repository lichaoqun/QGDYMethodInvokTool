
//
//  RedView.m
//  xx
//
//  Created by QG on 2018/1/31.
//  Copyright © 2018年 xinxianzhizao. All rights reserved.
//

#import "RedView.h"

@implementation RedView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


-(BOOL)setBackgroundColor:(UIColor *)color frame:(CGRect)frame{
    self.backgroundColor = color;
    self.frame = frame;
    return NO;
}

-(BOOL)setBackgroundColor:(UIColor *)color int1:(int)int1{
    self.backgroundColor = color;
    NSLog(@"%d", int1);
    return YES;
}

-(BOOL)setBackgroundColor:(UIColor *)color value:(NSValue *)value{
    self.backgroundColor = color;
    self.frame = value.CGRectValue;
    return YES;
}


-(void)dealloc{
    NSLog(@"dealloc");
}

-(BOOL)setStr:(NSString *)str num:(NSNumber *)num int:(int)int1 rect:(CGRect)rect{
    NSLog(@"%@--%@--%d--%@", str, num, int1, NSStringFromCGRect(rect));
    return YES;
}
@end
