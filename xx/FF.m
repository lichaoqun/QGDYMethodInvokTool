//
//  FF.m
//  xx
//
//  Created by QG on 2018/1/30.
//  Copyright © 2018年 xinxianzhizao. All rights reserved.
//

#import "FF.h"

@implementation FF
//-(void)logStr{
//    NSLog(@"%@", NSStringFromSelector(_cmd));
//}
//-(void)logStr:(NSString *)str1{
//    NSLog(@"%@-%@", NSStringFromSelector(_cmd), str1);
//}
//
//-(void)logStr:(NSString *)str1 str2:(NSString *)str2{
//    NSLog(@"%@-%@--%@", NSStringFromSelector(_cmd), str1, str2);
//}
//
//-(void)logStr:(NSString *)str1 str2:(NSString *)str2 str3:(NSString *)str3{
//    NSLog(@"%@-%@--%@--%@", NSStringFromSelector(_cmd), str1, str2, str3);
//}
//
//-(void)logStr:(NSString *)str1 num2:(NSNumber *)num2{
//    NSLog(@"%@-%@--%@", NSStringFromSelector(_cmd), str1, num2);
//}
//
//-(void)int1:(int)int1 int2:(int)int2{
//    NSLog(@"%@--%d--%d", NSStringFromSelector(_cmd), int1, int2);
//}
//
//-(void)logStr:(NSString *)str1 int2:(int)int2{
//    NSLog(@"%@--%@--%d", NSStringFromSelector(_cmd), str1, int2);
//}


-(NSString*)logStr{
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return  NSStringFromSelector(_cmd);
}
-(NSString*)logStr:(NSString *)str1{
//    NSLog(@"%@-%@", NSStringFromSelector(_cmd), str1);
    return  NSStringFromSelector(_cmd);
}

-(NSString*)logStr:(NSString *)str1 str2:(NSString *)str2{
//    NSLog(@"%@-%@--%@", NSStringFromSelector(_cmd), str1, str2);
    return  NSStringFromSelector(_cmd);
}

-(void)logStr:(NSString *)str1 str2:(NSString *)str2 str3:(NSString *)str3{
//    NSLog(@"%@-%@--%@--%@", NSStringFromSelector(_cmd), str1, str2, str3);
}

-(BOOL)logStr:(NSString *)str1 num2:(NSNumber *)num2{
//    NSLog(@"%@-%@--%@", NSStringFromSelector(_cmd), str1, num2);
    return  NO;
}

-(int)int1:(int)int1 int2:(int)int2{
//    NSLog(@"%@--%d--%d", NSStringFromSelector(_cmd), int1, int2);
    return  3;
}

-(NSString*)logStr:(NSString *)str1 int2:(int)int2{
//    NSLog(@"%@--%@--%d", NSStringFromSelector(_cmd), str1, int2);
    return  nil;
}
@end
